from std/strformat import fmt
from std/strutils import join, strip, find, removeSuffix
from std/sequtils import concat, mapIt, toSeq

import gdext/buildconf
import gdext/gdinterface/[classDB, extracommands]
import gdext/utils/[macros, staticevents]
import gdext/core/[gdclass, gdrefs, gdtypedarray]
import gdext/core/typeshift

import gdext/core/userclass/contracts
import gdext/core/userclass/propertyinfo
import gdext/core/userclass/procs

when Assistance.genEditorHelp:
  import gdext/doctools

template joinArg(s: varargs[string]): string = s.join(",")

template className(iden: SomeClass): string = $iden.className

type alias* = distinct string
proc `==`*(x: alias, y: alias): bool = x.string == y.string
const noAlias = alias ""

import gdext/gen/[globalenums, builtinclasses, classindex]

type
  Appearance* = object
    hint: PropertyHint
    hintstring: String
    usage: set[PropertyUsageFlags]

  ExpEasingArgument* = enum
    attenuation, positive_only
  RangeArgument*  = enum
    or_less, or_greater, exp, radians_as_degrees, degrees, hide_slider

proc appearance(
      hint: PropertyHint = propertyHintNone;
      hintstring: String = String.empty;
      usage: set[PropertyUsageFlags] = {propertyUsageEditor, propertyUsageStorage};
    ): Appearance =
  Appearance(hint: hint, hintstring: hintstring, usage: usage)

macro makeDefaultHintStringEnum(Enum): string  =
  var str: string
  var i: int
  for elem in Enum.enumTy[1..^1]:
    if str != "": str.add ","
    case elem.kind
    of nnkEnumFieldDef:
      case elem[1].kind
      of nnkIntLit:
        i = elem[1].intVal
      of nnkTupleConstr:
        i = elem[1][0].intVal
      else: discard
      str.add elem[0].strVal & ":" & $i
    else:
      str.add elem.strVal & ":" & $i
    inc i
  newlit str

macro makeDefaultHintStringBitField(Enum): string  =
  var str: string
  var i: int
  for elem in Enum.enumTy[1..^1]:
    if str != "": str.add ","
    case elem.kind
    of nnkEnumFieldDef:
      case elem[1].kind
      of nnkIntLit:
        i = elem[1].intVal
      of nnkTupleConstr:
        i = elem[1][0].intVal
      else: discard
      str.add elem[0].strVal & ":" & $(1 shl i)
    else:
      str.add elem.strVal & ":" & $(1 shl i)
    inc i
  newlit str

template makeDefaultHintString(E: typedesc[enum]): string =
  makeDefaultHintStringEnum(E)
template makeDefaultHintString[E: enum](T: typedesc[set[E]]): string =
  makeDefaultHintStringBitField(E)

proc rangeDef(node: NimNode): NimNode =
  case node.kind
  of nnkSym:
    let impl = node.getImpl
    if impl == nil:
      node.getTypeInst.rangeDef
    else:
      impl.rangeDef
  of nnkBracketExpr:
    if node[0].eqIdent"typeDesc":
      node[1].rangeDef
    elif node[0].eqIdent"range":
      node
    else:
      nil
  of nnkTypeDef:
    node[2].rangeDef
  else:
    nil

macro makeDefaultHintStringRange(Range): string  =
  let def = Range.rangeDef
  if def == nil: return newlit ""
  let a = def[1][1]
  let b = def[1][2]
  quote do:
    $`a` & "," & $`b`


proc defaultHintString[E: enum](T: typedesc[E|set[E]]): String =
  once:
    Meta(T).hintString = gdstring makeDefaultHintString(T)
  Meta(T).hintString

proc modify[T]( proptyp: typedesc[T]; ap: var Appearance)
proc defaultHintString[T](arr: typedesc[TypedArray[T]]): String =
  var elementApp = appearance()
  modify(T, elementApp)
  let typ = T.variantType.ord
  let hint = (if elementApp.hint == propertyHintNone: "" else: "/" & $elementApp.hint.ord)
  let str = fmt"{typ}{hint}:{elementApp.hint_string}"
  gdstring str


macro gdname(P: proc): string = P.getPragmaVal("name") or newLit $P

proc modify[T](proptyp: typedesc[T]; ap: var Appearance;) =
  if ap.hint == propertyHintNone:
    when proptyp is Node:
      ap.hint = propertyHintNodeType
      ap.hint_string = gdstring className proptyp
    elif proptyp is GdRef:
      when proptyp.RefCounted is Resource:
        ap.hint = propertyHintResourceType
        ap.hint_string = gdstring className proptyp.RefCounted
    elif proptyp is Resource:
      ap.hint = propertyHintResourceType
      ap.hint_string = gdstring className proptyp
    elif proptyp is TypedArray:
      ap.hint = propertyHintArrayType
      ap.hint_string = proptyp.defaultHintString
    elif proptyp is enum:
      ap.hint = propertyHintEnum
      ap.hint_string = proptyp.defaultHintString
    elif proptyp is system.set:
      ap.hint = propertyHintFlags
      ap.hint_string = proptyp.defaultHintString
    elif proptyp is range:
      ap.hint = propertyHintRange
      ap.hint_string = proptyp.makeDefaultHintStringRange

proc propertyinfo(
      name: StringName;
      proptyp: typedesc[SomeProperty];
      appearance: Appearance;
    ): HeapPropertyInfo =
  var ap = appearance
  modify(proptyp, ap)
  propertyInfo(proptyp, name,
    ap.hint, ap.hintstring, ap.usage)

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
  classDB.registerProperty(typ, cast[ptr PropertyInfo](addr info), setter, getter)

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
      appearance: Appearance = appearance();
    ): untyped =
  proc `name` {.execon: Contract[T].property.} =
    gdexport_internal(propertyInfo(stringName name, appearance), className T)

template gdexport*(
      name: string;
      typ: typedesc[SomeUserClass];
      proptyp: typedesc[SomeProperty];
      getter, setter: StringName;
      appearance: Appearance = appearance();
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
      appearance: Appearance = appearance();
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
      appearance: Appearance = appearance();
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
      appearance: Appearance = appearance();
      description = "";
    ): untyped =
  gdexport(iden, noAlias, appearance, description)

macro gdexport_preproperty[T: SomeUserClass](
      name: string;
      typ: typedesc[T];
      prop;
      appearance: Appearance = appearance();
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

# Hints

proc storage*(T: typedesc[Appearance]): T = appearance(usage= {propertyUsageStorage})
proc category*(T: typedesc[Appearance]): T = appearance(usage= {propertyUsageCategory})

proc group*(T: typedesc[Appearance];
    prefix= String.empty): T =
  appearance(
    hintString= prefix,
    usage= {propertyUsageGroup})
proc subgroup*(T: typedesc[Appearance];
    prefix= String.empty): T =
  appearance(
    hintString= prefix,
    usage= {propertyUsageSubgroup})

proc colorNoAlpha*(T: typedesc[Appearance]): T = appearance(propertyHintColorNoAlpha)
proc dir*(T: typedesc[Appearance]): T = appearance(propertyHintDir)
proc globalDir*(T: typedesc[Appearance]): T = appearance(propertyHintGlobalDir)
proc file*(T: typedesc[Appearance]): T = appearance(propertyHintfile)
proc globalFile*(T: typedesc[Appearance]): T = appearance(propertyHintGlobalFile)
proc flags2dNavigation*(T: typedesc[Appearance]): T = appearance(propertyHintLayers2DNavigation)
proc flags2dPhysics*(T: typedesc[Appearance]): T = appearance(propertyHintLayers2DPhysics)
proc flags2dRender*(T: typedesc[Appearance]): T = appearance(propertyHintLayers2DRender)
proc flags3dNavigation*(T: typedesc[Appearance]): T = appearance(propertyHintLayers3DNavigation)
proc flags3dPhysics*(T: typedesc[Appearance]): T = appearance(propertyHintLayers3DPhysics)
proc flags3dRender*(T: typedesc[Appearance]): T = appearance(propertyHintLayers3DRender)
proc flagsAvoidance*(T: typedesc[Appearance]): T = appearance(propertyHintLayersAvoidance)
proc multiline*(T: typedesc[Appearance]): T = appearance(propertyHintMultilineText)

proc custom*(T: typedesc[Appearance];
      hint: PropertyHint = propertyHintNone;
      hintstring: String = String.empty;
      usage: set[PropertyUsageFlags] = {propertyUsageEditor, propertyUsageStorage};
    ): T =
  appearance(hint= hint, hintstring= hintstring, usage= usage)

proc `enum`*(T: typedesc[Appearance];
    enums: varargs[string]): T =
  appearance(
    hint= propertyHintEnum,
    hint_string= gdstring enums.joinArg)

proc `flags`*(T: typedesc[Appearance];
    flags: varargs[string]): T =
  appearance(
    hint= propertyHintFlags,
    hint_string= gdstring flags.joinArg)

proc expEasing*(T: typedesc[Appearance];
    extra: varargs[ExpEasingArgument]): T =
  appearance(
    hint= propertyHintExpEasing,
    hint_string= gdstring @extra.mapIt($it).joinArg)

proc nodePath*(T: typedesc[Appearance];
    validTypes: varargs[string]): T =
  appearance(
    hint= propertyHintNodePathValidTypes,
    hint_string= gdstring @validTypes.joinArg)

macro nodePath*(T: typedesc[Appearance];
    validTypes: varargs[typedesc[Node]]): Appearance =
  result = bindSym"nodePath".newCall(T)
  for valid in validTypes:
    result.add bindSym"$".newCall bindSym"className".newCall valid


proc placeholder*(T: typedesc[Appearance];
    placeholder: String): T =
  appearance(
    hint= propertyHintPlaceholderText,
    hint_string= placeholder)

proc range*[S: SomeNumber](T: typedesc[Appearance];
    min, max: S;
    step: S;
    extra: varargs[RangeArgument]): T =
  var hint_string = @[$min, $max, $step]
  if extra.len > 0:
    hint_string = hint_string.concat(@extra.mapit($it))
  appearance(
    hint= propertyHintRange,
    hint_string= hint_string.join(","))

proc range*[S: SomeNumber](T: typedesc[Appearance];
    min, max: S;
    extra: varargs[RangeArgument]): T =
  var hint_string = @[$min, $max]
  if extra.len > 0:
    hint_string = hint_string.concat(@extra.mapit($it))
  appearance(
    hint= propertyHintRange,
    hint_string= hint_string.join(","))


macro processExports*(T: typed): untyped =

  let classIdent = T.getTypeInst[1].identifier
  let fields = T.recList

  result = newStmtList()
  for field in fields:
    if field.hasPragma("gdexport"):
      let fieldIdent = field.identifier
      let propName = fieldIdent.toStrLit

      let desc = field.getPragmaVal("description") or newLit ""

      let editorhint = field.getPragmaVal("gdexport")
      if editorhint == nil:
        result.add bindSym"gdexport_preproperty".newCall(propName, classIdent, fieldIdent, bindSym"appearance".newCall(), desc)
      else:
        result.add bindSym"gdexport_preproperty".newCall(propName, classIdent, fieldIdent, editorhint, desc)
    # Always class-level pragmas first so that groups/subgroups/categories work correctly regardless
    # of the order of pragmas applied to the field
