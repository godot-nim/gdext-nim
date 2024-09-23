{.experimental: "dynamicBindSym".}

from std/strutils import join, strip, find, removeSuffix
from std/sequtils import concat, mapIt

import gdext/dirty/gdextensioninterface
import gdext/utils/[macros, staticevents]
import gdext/core/commandindex
import gdext/core/extracommands
import gdext/core/gdclass
import gdext/core/builtinindex
import gdextgen/builtinclasses
import gdextgen/globalenums
import gdextgen/classindex

import gdext/core/userclass/contracts
import gdext/core/userclass/propertyinfo
import gdext/core/userclass/procs
import gdext/surface/pragmas

template joinArg(s: varargs[string]): string = s.join(",")
template className(iden: SomeClass): string = $iden.className

proc register_property_internal*(
      info: PropertyInfo;
      typ: ptr StringName;
      getter: ptr StringName = addr StringName.empty;
      setter: ptr StringName = addr StringName.empty;
    ) =
  interface_ClassDB_registerExtensionClassProperty(
    environment.library, typ, addr info, setter, getter)

macro strlit(x): string = newlit $x

template register_property*(
      typ: typedesc[SomeUserClass];
      name;
      proptyp: typedesc[SomeProperty];
      getter, setter: StringName;
      hint: PropertyHint = propertyHintNone;
      hintstring: String = gdstring"";
      usage: set[PropertyUsageFlags] = PropertyUsageFlags.propertyUsageDefault;
    ): untyped =
  proc name {.execon: contract(typ).} =
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

macro register_property*[T: SomeClass; P: SomeProperty](
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
    typname = $typ.getTypeInst[1].toStrLit
    gettersym =
      if getter.kind == nnkLambda: genSym(nskProc, "get_" & typname & "_" & $name)
      else: getter
    settersym =
      if setter.kind == nnkLambda: genSym(nskProc, "set_" & typname & "_" & $name)
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
    hint: PropertyHint = propertyHintNone;
    hintstring: String = gdstring"";
    usage: set[PropertyUsageFlags] = PropertyUsageFlags.propertyUsageDefault;
  ): untyped =
  let classType = iden[0]
  let varType = iden.getTypeInst[1]
  let variable = iden[1]
  let getter = quote do:
    proc(self: `classType`): `varType` = self.`variable` 
  let setter = quote do:
    proc(self: `classType`, value: `varType`) = self.`variable` = value
  quote do:
    register_property(typedesc `classType`, `variable`, typedesc `varType`, `getter`, `setter`, `hint`, `hintstring`, `usage`)

template gdexport_category*[T: SomeUserClass](typ: typedesc[T]; name): untyped =
  proc name {.execon: contract(typ).} =
    let p_name = stringName strlit name
    register_property_internal(
      propertyInfo(VariantTypeNil, addr p_name, usage = {propertyUsageCategory}), addr className typ)

template gdexport_group*[T: SomeUserClass](typ: typedesc[T]; name; prefix: String = gdstring""): untyped =
  proc name {.execon: contract(typ).} =
    let n = gdstring strlit name
    let p = prefix
    interface_ClassDB_registerExtensionClassPropertyGroup(environment.library,
      addr className(typ), addr n, addr p)
template gdexport_subgroup*[T: SomeUserClass](typ: typedesc[T]; name; prefix: String = gdstring""): untyped =
  proc name {.execon: contract(typ).} =
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

macro gdexport_custom*(
      iden: typed;
      hint: PropertyHint = propertyHintNone;
      hintstring: String = gdstring"";
      usage: set[PropertyUsageFlags] = PropertyUsageFlags.propertyUsageDefault;
    ): untyped =
    quote do:
      register_property_iden(`iden`, `hint`, `hintstring`, `usage`) 

template gdexport*[T: SomeUserClass; S: SomeProperty](
    name;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S)): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter)
macro gdexport*(iden: SomeProperty) = 
  let className = $iden.getTypeInst[1].toStrLit
  quote do: 
    when `iden` is SomeObject:
      register_property_iden(`iden`, hint= propertyHintNodeType, hint_string= `className`)
    else:
      register_property_iden(`iden`)
    
template gdexport_color_no_alpha*[T: SomeUserClass, S: SomeColor](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintColorNoAlpha)
macro gdexport_color_no_alpha*(iden: SomeColor) = quote do: 
  register_property_iden(`iden`, hint= propertyHintColorNoAlpha)

template gdexport_dir*[T: SomeUserClass; S: SomeString](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintDir)
macro gdexport_dir*(iden: SomeString) = quote do:
  register_property_iden(`iden`, hint= propertyHintDir)

template gdexport_global_dir*[T: SomeUserClass; S: SomeString](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintGlobalDir)
macro gdexport_global_dir*(iden: SomeString) = quote do:
  register_property_iden(`iden`, hint= propertyHintGlobalDir)

template gdexport_file*[T: SomeUserClass; S: SomeString](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintFile)
macro gdexport_file*(iden: SomeString) = quote do:
  register_property_iden(`iden`, hint= propertyHintFile)

template gdexport_global_file*[T: SomeUserClass; S: SomeString](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintGlobalFile)
macro gdexport_global_file*(iden: SomeString) = quote do:
  register_property_iden(`iden`, hint= propertyHintGlobalFile)

template gdexport_enum*[T: SomeUserClass; S: SomeInt|SomeString](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
      enums: varargs[string];
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintEnum,
    hint_string= enums.joinArg)

macro gdexport_enum*(iden: SomeInt|SomeString, enums: varargs[string]) = quote do:
    register_property_iden(`iden`, hint= propertyHintEnum, hint_string= `enums`.joinArg)

template gdexport_flags*[T: SomeUserClass; S: SomeInt](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
      flags: varargs[string];
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintFlags,
    hint_string= flags.joinArg)
macro gdexport_flags*(iden: SomeInt, flags: varargs[string]) = quote do:
  register_property_iden(`iden`, hint= propertyHintFlags, hint_string= `flags`.joinArg)

template gdexport_flags_2d_navigation*[T: SomeUserClass; S: SomeInt](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers2dNavigation)
macro gdexport_flags_2d_navigation*(iden: SomeInt) = quote do:
  register_property_iden(`iden`, hint= propertyHintLayers2dNavigation)

template gdexport_flags_2d_physics*[T: SomeUserClass; S: SomeInt](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers2dPhysics)
macro gdexport_flags_2d_physics*(iden: SomeInt) = quote do:
  register_property_iden(`iden`, hint= propertyHintLayers2dPhysics)

template gdexport_flags_2d_render*[T: SomeUserClass; S: SomeInt](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers2dRender)
macro gdexport_flags_2d_render*(iden: SomeInt) = quote do:
  register_property_iden(`iden`, hint= propertyHintLayers2dRender)

template gdexport_flags_3d_navigation*[T: SomeUserClass; S: SomeInt](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers3dNavigation)
macro gdexport_flags_3d_navigation*(iden: SomeInt) = quote do:
  register_property_iden(`iden`, hint= propertyHintLayers3dNavigation)

template gdexport_flags_3d_physics*[T: SomeUserClass; S: SomeInt](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers3dPhysics)
macro gdexport_flags_3d_physics*(iden: SomeInt) = quote do:
  register_property_iden(`iden`, hint= propertyHintLayers3dPhysics)

template gdexport_flags_3d_render*[T: SomeUserClass; S: SomeInt](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers3dRender)
macro gdexport_flags_3d_render*(iden: SomeInt) = quote do:
  register_property_iden(`iden`, hint= propertyHintLayers3dRender)

template gdexport_flags_avoidance*[T: SomeUserClass; S: SomeInt](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayersAvoidance)
macro gdexport_flags_avoidance*(iden: SomeInt) = quote do:
  register_property_iden(`iden`, hint= propertyHintLayersAvoidance)

type ExpEasingArgument* = enum
  attenuation, positive_only
template gdexport_exp_easing*[T: SomeUserClass; S: propertyinfo.SomeFloat](
      name;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
      extra: varargs[ExpEasingArgument];
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintExpEasing,
    hint_string= @extra.mapIt($it).join(","))
macro gdexport_exp_easing*(iden: propertyinfo.SomeFloat, extra: varargs[ExpEasingArgument]) = quote do:
  register_property_iden(`iden`, hint= propertyHintExpEasing, hint_string= "attenuation")

template gdexport_multiline*[T: SomeUserClass; S: SomeString](
    name;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S)): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintMultilineText)
macro gdexport_multiline*(iden: SomeString) = quote do:
  register_property_iden(`iden`, hint= propertyHintMultilineText)

template gdexport_node_path*[T: SomeUserClass; S: SomeProperty](
    name;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S);
    validTypes: varargs[string]): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintNodeType,
    hint_string= @validTypes.join(","))
macro gdexport_node_path*[T: SomeUserClass; S: SomeProperty](
    name;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S);
    validTypes: varargs[typedesc[Node]]): untyped =
  result = bindSym"gdexport_node_path".newCall(name, getter, setter)
  for valid in validTypes:
    result.add bindSym"$".newCall bindSym"className".newCall valid
macro gdexport_node_path*(iden: SomeUserClass) =
  quote do:
    gdexport(`iden`)

template gdexport_placeholder*[T: SomeUserClass; S: SomeProperty](
    name;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S);
    placeholder: String): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintPlaceholderText,
    hint_string= placeholder)

type RangeArgument* {.pure.} = enum
  or_less, or_greater, exp, radians_as_degrees, degrees, hide_slider
template gdexport_range*[T: SomeUserClass; S: SomeProperty](
    name;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S);
    min, max: S; extra: varargs[RangeArgument]): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintRange,
    hint_string= @[$min, $max].concat(@extra.mapit($it)).join(","))
template gdexport_range*[T: SomeUserClass; S: SomeProperty](
    name;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S);
    min, max, step: S; extra: varargs[RangeArgument]): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintRange,
    hint_string= @[$min, $max, $step].concat(@extra.mapIt($it)).join(","))

template gdexport_storage*[T: SomeUserClass; S: SomeProperty](
    name;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S)): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    usage= {propertyUsageStorage})

macro processExports*(T: typed): untyped =
  let innerType = T.getType[1][1]

  let objType = innerType.getImpl
  let objTypeInner = objType[0]
  var objTypeStr = $objTypeInner.toStrLit
  let index = objTypeStr.find(":")
  objTypeStr = objTypeStr[0..<index]

  let fields = objType[2][2]

  let module = objType[0].owner
  let classIdent = newIdentNode(objTypeStr)

  var stmts = newStmtList()
  
  for field in fields:
    if field[0].kind != nnkPragmaExpr:
      continue

    var fieldName = $field[0][0][1]
    let fieldIdent = newIdentNode(fieldName)
    let dotExpr = newDotExpr(newDotExpr(module, classIdent), fieldIdent)
    
    let pragma = field[0][1]
    let pragmaIdent = 
      if pragma[0].kind == nnkSym:
        $pragma[0]
      elif pragma[0].kind == nnkCall:
        $pragma[0][0]
      else:
        error("Unimplemented pragma configuration")

    if isPragmaNoArgs(pragmaIdent):
      stmts.add bindSym(pragmaIdent).newCall dotExpr
    if isPragmaVarArgs(pragmaIdent):
      let args = pragma[0][1]
      stmts.add bindSym(pragmaIdent).newCall(dotExpr, args)
      
  result = stmts
