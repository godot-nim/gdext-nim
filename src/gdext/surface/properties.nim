from std/strutils import join, strip, find, removeSuffix
from std/sequtils import concat, mapIt, toSeq

import gdext/dirty/gdextensioninterface
import gdext/utils/[macros, staticevents]
import gdext/core/commandindex
import gdext/core/extracommands
import gdext/core/gdclass
import gdext/core/builtinindex

import gdext/core/userclass/contracts
import gdext/core/userclass/propertyinfo
import gdext/core/userclass/procs
import gdext/surface/pragmas
import gdext/surface/userenums
import gdext/surface/common

template joinArg(s: varargs[string]): string = s.join(",")

proc rangeHintString(min, max, step: SomeNumericProperty, extra: varargs[RangeArgument]): string =
  var res = @[$min, $max, $step]
  if extra.len > 0:
    res = res.concat(@extra.mapit($it))
  res.join(",")

template className(iden: SomeClass): string = $iden.className

type alias* = distinct string
proc `==`*(x: alias, y: alias): bool = x.string == y.string
const noAlias = alias ""

type PropertyStage = enum
  pre_property, property

var propertyStage {.compileTime.}: PropertyStage = PropertyStage.property

import gdext/gen/[globalenums, builtinclasses, classindex]

proc register_property_internal*(
      info: PropertyInfo;
      typ: ptr StringName;
      getter: ptr StringName = addr StringName.empty;
      setter: ptr StringName = addr StringName.empty;
    ) =
  interface_ClassDB_registerExtensionClassProperty(
    environment.library, typ, addr info, setter, getter)

macro strlit(x): string = newlit $x

template execOnDef(name: untyped, typ: typed, blk: untyped): untyped =
  when propertyStage == pre_property:
    proc `name` {.execon: Contract[`typ`].pre_property.} =
      `blk`
  else:
    proc `name` {.execon: Contract[`typ`].property.} =
      `blk`

template register_property*(
      typ: typedesc[SomeUserClass];
      name;
      proptyp: typedesc[SomeProperty];
      getter, setter: StringName;
      hint: PropertyHint = propertyHintNone;
      hintstring: String = gdstring"";
      usage: set[PropertyUsageFlags] = PropertyUsageFlags.propertyUsageDefault;
    ): untyped =
  when proptyp is enum:
    registerEnum(typ, proptyp)
  execOnDef(name, typ):
    let p_name = stringName strlit name
    let p_getter: StringName = getter
    let p_setter: StringName = setter
    let p_hintstring = hintstring
    register_property_internal(
      propertyInfo(proptyp, addr p_name, hint, addr p_hintstring, usage),
      addr className typ, addr p_getter, addr p_setter)


macro gdname*(P: proc): string =
  for pragma in P.getImpl.pragma:
    case pragma.kind
    of nnkExprColonExpr, nnkCall:
      if pragma[0].eqIdent "name":
        return pragma[1]
    else:
      discard

  return newLit $P

macro register_property*[T: SomeUserClass; P: SomeProperty](
      typ: typedesc[T];
      name;
      proptyp: typedesc[P];
      getter: proc(self: T): P;
      setter: proc(self: T; value: P);
      hint: PropertyHint = propertyHintNone;
      hintstring: String = gdstring"";
      usage: set[PropertyUsageFlags] = PropertyUsageFlags.propertyUsageDefault;
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
    register_property(`typ`, `name`, `proptyp`,
      `gettersym`.gdname, `settersym`.gdname,
      `hint`, `hint_string`, `usage`)

macro register_property_iden*(
      iden: typed;
      alias: static[alias];
      hint: PropertyHint = propertyHintNone;
      hintstring: String = gdstring"";
      usage: set[PropertyUsageFlags] = PropertyUsageFlags.propertyUsageDefault;
    ): untyped =
  let classType = iden[0]
  let variable = iden[1]
  let name = if alias == noAlias: $variable else: alias.string
  let getter = quote do:
    proc(self: `classType`): `iden` = self.`variable`
  let setter = quote do:
    proc(self: `classType`, value: `iden`) = self.`variable` = value
  quote do:
    register_property(typedesc `classType`, `name`, typedesc `iden`, `getter`, `setter`, `hint`, `hintstring`, `usage`)

template gdexport_category*[T: SomeUserClass](typ: typedesc[T]; name): untyped =
  execOnDef(name, typ):
    let p_name = stringName strlit name
    register_property_internal(
      propertyInfo(VariantTypeNil, addr p_name, usage = {propertyUsageCategory}), addr className typ)

template gdexport_group*[T: SomeUserClass](typ: typedesc[T]; name; prefix: String = gdstring""): untyped =
  execOnDef(name, typ):
    let n = gdstring strlit name
    let p = prefix
    interface_ClassDB_registerExtensionClassPropertyGroup(environment.library,
      addr className(typ), addr n, addr p)

template gdexport_subgroup*[T: SomeUserClass](typ: typedesc[T]; name; prefix: String = gdstring""): untyped =
  execOnDef(name, typ):
    let n = gdstring strlit name
    let p = prefix
    interface_ClassDB_registerExtensionClassPropertySubGroup(environment.library,
      addr className(typ), addr n, addr p)

template gdexport_custom*[T: SomeUserClass; S: SomeProperty](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
      hint: PropertyHint = propertyHintNone;
      hintstring: String = gdstring"";
      usage: set[PropertyUsageFlags] = PropertyUsageFlags.propertyUsageDefault;
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint, hintstring, usage)

template gdexport_custom*(
      iden: typed;
      alias: static[alias] = noAlias;
      hint: PropertyHint = propertyHintNone;
      hintstring: String = gdstring"";
      usage: set[PropertyUsageFlags] = PropertyUsageFlags.propertyUsageDefault;
    ): untyped =
  register_property_iden(`iden`, `alias`, `hint`, `hintstring`, `usage`)

template gdexport*[T: SomeUserClass; S: SomeProperty](
    name;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S)): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter)

template gdexport*(iden: SomeProperty, alias: static[alias] = noAlias)  =
  when iden is Node:
    register_property_iden(iden, alias, hint= propertyHintNodeType, hint_string= gdstring className `iden`)
  else:
    register_property_iden(iden, alias)

template gdexport_color_no_alpha*[T: SomeUserClass, S: SomeColorProperty](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintColorNoAlpha)

template gdexport_color_no_alpha*(iden: SomeColorProperty, alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, hint= propertyHintColorNoAlpha)

template gdexport_dir*[T: SomeUserClass; S: SomeStringProperty](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintDir)

template gdexport_dir*(iden: SomeStringProperty, alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, hint= propertyHintDir)

template gdexport_global_dir*[T: SomeUserClass; S: SomeStringProperty](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintGlobalDir)

template gdexport_global_dir*(iden: SomeStringProperty, alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, hint= propertyHintGlobalDir)

template gdexport_file*[T: SomeUserClass; S: SomeStringProperty](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintFile)

template gdexport_file*(iden: SomeStringProperty, alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, hint= propertyHintFile)

template gdexport_global_file*[T: SomeUserClass; S: SomeStringProperty](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintGlobalFile)

template gdexport_global_file*(iden: SomeStringProperty, alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, hint= propertyHintGlobalFile)

template gdexport_enum*[T: SomeUserClass; S: SomeIntProperty|SomeStringProperty](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
      enums: varargs[string];
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintEnum,
    hint_string= enums.joinArg)

template gdexport_enum*(iden: SomeIntProperty|SomeStringProperty, enums: varargs[string], alias: static[alias] = noAlias) =
    register_property_iden(`iden`, `alias`, hint= propertyHintEnum, hint_string= `enums`.joinArg)

template gdexport_flags*[T: SomeUserClass; S: SomeIntProperty](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
      flags: varargs[string];
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintFlags,
    hint_string= flags.joinArg)

template gdexport_flags*(iden: SomeIntProperty, flags: varargs[string], alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, hint= propertyHintFlags, hint_string= `flags`.joinArg)

template gdexport_flags_2d_navigation*[T: SomeUserClass; S: SomeIntProperty](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers2dNavigation)

template gdexport_flags_2d_navigation*(iden: SomeIntProperty; alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, hint= propertyHintLayers2dNavigation)

template gdexport_flags_2d_physics*[T: SomeUserClass; S: SomeIntProperty](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers2dPhysics)

template gdexport_flags_2d_physics*(iden: SomeIntProperty, alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, hint= propertyHintLayers2dPhysics)

template gdexport_flags_2d_render*[T: SomeUserClass; S: SomeIntProperty](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers2dRender)

template gdexport_flags_2d_render*(iden: SomeIntProperty, alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, hint= propertyHintLayers2dRender)

template gdexport_flags_3d_navigation*[T: SomeUserClass; S: SomeIntProperty](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers3dNavigation)

template gdexport_flags_3d_navigation*(iden: SomeIntProperty, alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, hint= propertyHintLayers3dNavigation)

template gdexport_flags_3d_physics*[T: SomeUserClass; S: SomeIntProperty](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers3dPhysics)

template gdexport_flags_3d_physics*(iden: SomeIntProperty, alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, hint= propertyHintLayers3dPhysics)

template gdexport_flags_3d_render*[T: SomeUserClass; S: SomeIntProperty](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers3dRender)

template gdexport_flags_3d_render*(iden: SomeIntProperty, alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, hint= propertyHintLayers3dRender)

template gdexport_flags_avoidance*[T: SomeUserClass; S: SomeIntProperty](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayersAvoidance)

template gdexport_flags_avoidance*(iden: SomeIntProperty, alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, hint= propertyHintLayersAvoidance)

template gdexport_exp_easing*[T: SomeUserClass; S: SomeFloatProperty](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
      extra: varargs[ExpEasingArgument];
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintExpEasing,
    hint_string= @extra.mapIt($it).join(","))

template gdexport_exp_easing*(iden: SomeFloatProperty, extra: varargs[ExpEasingArgument], alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, hint= propertyHintExpEasing, hint_string= "attenuation")

template gdexport_multiline*[T: SomeUserClass; S: SomeStringProperty](
    name;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S)): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintMultilineText)

template gdexport_multiline*(iden: SomeStringProperty, alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, hint= propertyHintMultilineText)

template gdexport_node_path*[T: SomeUserClass; S: SomeProperty](
    name;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S);
    validTypes: varargs[string]): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintNodePathValidTypes,
    hint_string= @validTypes.join(","))

macro gdexport_node_path*[T: SomeUserClass; S: SomeProperty](
    name;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S);
    validTypes: varargs[typedesc[Node]]): untyped =
  result = bindSym"gdexport_node_path".newCall(name, getter, setter)
  for valid in validTypes:
    result.add bindSym"$".newCall bindSym"className".newCall valid

template gdexport_node_path*(iden: typedesc[NodePath], validTypes: varargs[string], alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, hint= propertyHintNodePathValidTypes, hint_string= validTypes.joinArg)

template gdexport_placeholder*[T: SomeUserClass; S: SomeProperty](
    name;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S);
    placeholder: String): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintPlaceholderText,
    hint_string= placeholder)

template gdexport_placeholder*(iden: SomeProperty, placeholder: String, alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, hint= propertyHintPlaceholderText, hint_string= `placeholder`)

template gdexport_range*[T: SomeUserClass; S: SomeNumericProperty](
    name;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S);
    min, max: S;
    extra: varargs[RangeArgument]): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
      hint= propertyHintRange,
      hint_string= rangeHintString(min, max, step= defaultUnit(typeof S), extra))

template gdexport_range*[S: SomeNumericProperty](
    iden: typedesc[S],
    min, max: S,
    extra: varargs[RangeArgument],
    alias: static[alias] = noAlias) =
  gdexport_range(iden, min, max, step= defaultUnit(typeof S), extra, alias)

template gdexport_range*[T: SomeUserClass; S: SomeNumericProperty](
    name;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S);
    min, max, step: S; extra: varargs[RangeArgument]): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintRange,
    hint_string= rangeHintString(min, max, step, extra))

template gdexport_range*[S: SomeNumericProperty](
    iden: typedesc[S],
    min, max, step: S,
    extra: varargs[RangeArgument],
    alias: static[alias] = noAlias) =
  # compiler bug mitigation https://github.com/nim-lang/Nim/issues/11769
  const hintString = when `extra`.len > 0:
    rangeHintString(`min`, `max`, `step`, `extra`)
  else:
    rangeHintString(`min`, `max`, `step`)

  register_property_iden(`iden`, `alias`, hint= propertyHintRange, hint_string= hintString)

template gdexport_storage*[T: SomeUserClass; S: SomeProperty](
    name;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S)): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    usage= {propertyUsageStorage})

template gdexport_storage*(iden: SomeProperty, alias: static[alias] = noAlias) =
  register_property_iden(`iden`, `alias`, usage= {propertyUsageStorage})

macro processExports*(T: typed): untyped =
  propertyStage = pre_property

  let classIdent = T.getTypeInst[1].identifier
  let fields = T.recList

  result = newStmtList()
  for field in fields:
    let fieldIdent = field.identifier
    let dotExpr = newDotExpr(classIdent, fieldIdent)

    let classStmts = newStmtList()
    let fieldStmts = newStmtList()
    let pragmas = field.pragmas
    for pragma in pragmas:
      let pragmaIdent = pragma.identifier
      if pragmaIdent in exportPragmasClass:
        let args = @[classIdent].concat(pragma.args)
        classStmts.add pragmaIdent.newCall args
      elif pragmaIdent in exportPragmasField:
        let args = @[dotExpr].concat(pragma.args)
        fieldStmts.add pragmaIdent.newCall args
    # Always class-level pragmas first so that groups/subgroups/categories work correctly regardless
    # of the order of pragmas applied to the field
    result.add classStmts.add(fieldStmts) 
