import gdext/buildconf
import gdext/builtinindex
import gdext/stringtools
import gdext/appearances
import gdext/private/typeshift

import gdext/core/userclass/propertyinfo
import gdext/core/userclass/procs

import gdext/private/macros
import gdext/private/staticevents
import gdext/private/gdinterface

when Assistance.genEditorHelp:
  import gdext/doctools

template className(iden: SomeClass): string = $iden.className

type alias* = distinct string
proc `==`*(x: alias, y: alias): bool = x.string == y.string
const noAlias = alias ""

macro gdname(P: proc): string = P.getPragmaVal("name") or newLit $P

proc propertyinfo(
      name: StringName;
      proptyp: typedesc[SomeProperty];
      appearance: Appearance;
    ): HeapPropertyInfo =
  var hint = appearance.hint
  var hintstring = appearance.hintstring
  var usage = appearance.usage
  if appearance.hint == propertyHintNone:
    let ap = proptyp.appearance
    hint = ap.hint
    hintstring = ap.hintstring
    usage = appearance.usage + ap.usage
  propertyInfo(proptyp, name,
    hint, hintstring, usage)

proc propertyinfo(
      name: StringName;
      appearance: Appearance;
    ): HeapPropertyInfo =
  propertyInfo(VariantType_Nil, name, StringName.empty,
    appearance.hint, appearance.hintstring, appearance.usage)

proc gdexport_internal*(
    info: HeapPropertyInfo;
    typ: StringName;
    getter: StringName = StringName.empty;
    setter: StringName = StringName.empty) =
  ClassDB.registerExtensionClassProperty(typ, cast[ptr PropertyInfo](addr info), setter, getter)

proc gdexport_internal*(
    name: string;
      typ: typedesc[SomeUserClass];
      proptyp: typedesc[SomeProperty];
      getter, setter: StringName;
      appearance: Appearance;
      description: string) =
  gdexport_internal(
    propertyInfo(stringName name, proptyp, appearance),
    className typ, getter, setter)
  when Assistance.genEditorHelp:
    docClassDB[typ].members.add DocMember(
      name: name,
      description: description,
      typ: $APIType proptyp
      )

template gdexport*() {.pragma.}
template gdexport*(appearance: Appearance) {.pragma.}

template gdexport*[T: SomeUserClass](
      name: string;
      appearance = default(Appearance);
    ): untyped =
  proc `name` {.execon: Contract[T].property.} =
    gdexport_internal(propertyInfo(stringName name, appearance), className T)

template gdexport*(
      name: string;
      typ: typedesc[SomeUserClass];
      proptyp: typedesc[SomeProperty];
      getter, setter: StringName;
      appearance = default(Appearance);
      description = "";
    ): untyped =
  proc `name` {.execon: Contract[`typ`].property.} =
    gdexport_internal(name, typ, proptyp, getter, setter, appearance, description)


macro gdexport*[T: SomeUserClass; P: SomeProperty](
      name: string;
      typ: typedesc[T];
      proptyp: typedesc[P];
      getter: proc(self: T): P;
      setter: proc(self: T; value: P);
      appearance = default(Appearance);
      description: string = "";
    ): untyped =
  result = newStmtList()
  let
    gettersym =
      if getter.kind == nnkLambda: genSym(nskProc, "get_" & $name)
      else: getter
    settersym =
      if setter.kind == nnkLambda: genSym(nskProc, "set_" & $name)
      else: setter

  if getter.kind == nnkLambda:
    let getterdef = nnkProcDef.newTree(gettersym).add(getter[1..^1])
    result.add getterdef
    result.add quote do:
      registerProc(`getterdef`)

  if setter.kind == nnkLambda:
    let setterdef = nnkProcDef.newTree(settersym).add(setter[1..^1])
    result.add setterdef
    result.add quote do:
      registerProc(`settersym`)

  result.add quote do:
    proc `name` {.execon: Contract[`typ`].property.} =
      gdexport_internal(`name`, typedesc `typ`, typedesc `proptyp`,
        `gettersym`.gdname, `settersym`.gdname, `appearance`, `description`)

template gdexport*[T: SomeUserClass; P: SomeProperty](
      name: string;
      getter: proc(self: T): P;
      setter: proc(self: T; value: P);
      appearance = default(Appearance);
      description = "";
    ): untyped =
  gdexport(name, typedesc T, typedesc P, getter, setter, appearance, description)


macro gdexport*(
      iden: typed;
      alias: static[alias];
      appearance: Appearance;
      description = "";
    ): untyped =
  let classType = iden[0]
  let variable = iden[1]
  let name = if alias == noAlias: $variable else: alias.string
  let getter = quote do:
    proc(self: `classType`): `iden` = self.`variable`
  let setter = quote do:
    proc(self: `classType`, value: `iden`) = self.`variable` = value
  quote do:
    gdexport(`name`, typedesc `classType`, typedesc `iden`, `getter`, `setter`, `appearance`, `description`)

template gdexport*(
      iden: typed;
      appearance = default(Appearance);
      description = "";
    ): untyped =
  gdexport(iden, noAlias, appearance, description)

macro gdexport_preproperty[T: SomeUserClass](
      name: string;
      typ: typedesc[T];
      prop;
      appearance = default(Appearance);
      description: string = "";
    ): untyped =
  let
    gettersym = genSym(nskProc, "get_" & $name)
    settersym = genSym(nskProc, "set_" & $name)
  let
    getterdef = quote do:
      proc `gettersym`(self: `typ`): `typ`.`prop` = self.`prop`
    setterdef = quote do:
      proc `settersym`(self: `typ`; value: `typ`.`prop`) = self.`prop` = value
  let
    gettername  = newlit "get_" & $name
    settername  = newlit "set_" & $name

  quote do:
    proc `name` {.execon: Contract[`typ`].pre_property.} =
      `getterdef`
      `setterdef`
      registerProc `getterdef`
      registerProc `setterdef`
      gdexport_internal(`name`, `typ`, `typ`.`prop`,
        `gettername`, `settername`, `appearance`, `description`)

macro processExports*(T: typed): untyped =

  let classIdent = T.getTypeInst[1].identifier
  let fields = T.recList

  result = newStmtList()
  for field in fields:
    if field.hasPragma("gdexport"):
      let fieldIdent = field.identifier
      let propName = fieldIdent.toStrLit

      let desc = field.getPragmaVal("description") or newLit ""

      let editorhint = field.getPragmaVal("gdexport") or (quote do: Appearance())
      result.add bindSym"gdexport_preproperty".newCall(propName, classIdent, fieldIdent, editorhint, desc)
    # Always class-level pragmas first so that groups/subgroups/categories work correctly regardless
    # of the order of pragmas applied to the field
