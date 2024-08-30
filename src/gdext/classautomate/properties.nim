from std/strutils import join
from std/sequtils import concat, mapIt

import gdextcore/dirty/gdextensioninterface
import gdextcore/utils/macros
import gdextcore/commandindex
import gdextcore/gdclass
import gdextcore/staticevents
import gdextcore/builtinindex
import gdextgen/builtinclasses
import gdextgen/globalenums
import gdextgen/classindex

import contracts
import propertyinfo
import procs

template register_property*(
      typ: typedesc[SomeUserClass];
      name: StringName;
      proptyp: typedesc[SomeProperty];
      getter, setter: StringName;
      hint: PropertyHint = propertyHintNone;
      hintstring: String = gdstring"";
      usage: set[PropertyUsageFlags] = PropertyUsageFlags.propertyUsageDefault;
    ): untyped =
  process(typ.contract.property, $name):
    let
      info: ref PropertyInfoGlue = proptyp.propertyInfo(
        name,
        className typ,
        hint,
        hintstring,
        usage)
      setterName = setter
      getterName = getter
    interface_ClassDB_registerExtensionClassProperty( environment.library,
      addr className(typ), native info,
      addr setterName, addr getterName)

macro gdname*(P: proc): string =
  for pragma in P.getImpl.pragma:
    case pragma.kind
    of nnkExprColonExpr, nnkCall:
      if pragma[0].eqIdent "name":
        return pragma[1]
    else:
      discard

  return newLit $P

proc revertConv(x: NimNode): NimNode =
  result = case x.kind
  of nnkHiddenCallConv:
    x[1]
  else:
    x

macro register_property*[T: SomeUserClass; P: SomeProperty](
      typ: typedesc[T];
      name: StringName;
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
      if getter.kind == nnkLambda: genSym(nskProc, "get_" & name.revertConv.strVal)
      else: getter
    settersym =
      if setter.kind == nnkLambda: genSym(nskProc, "set_" & name.revertConv.strVal)
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

template `@export_category`*[T: SomeUserClass](typ: typedesc[T]; name: StringName): untyped =
  process(typ.contract.property, "category " & $name):
    let
      info: ref PropertyInfoGlue = propertyInfo(
        VariantType_Nil,
        name,
        stringName"",
        propertyHintNone,
        gdstring"",
        {propertyUsageCategory})
    let getter = stringName""
    let setter = stringName""
    interface_ClassDB_registerExtensionClassProperty( environment.library,
      addr className(typ), native info,
      addr setter, addr getter)

template `@export_group`*[T: SomeUserClass](typ: typedesc[T]; name: String; prefix: String = gdstring""): untyped =
  process(typ.contract.property, "group " & $name):
    let n = name
    let p = prefix
    interface_ClassDB_registerExtensionClassPropertyGroup(environment.library,
      addr className(typ), addr n, addr p)
template `@export_subgroup`*[T: SomeUserClass](typ: typedesc[T]; name: String; prefix: String = gdstring""): untyped =
  process(typ.contract.property, "subgroup " & $name):
    let n = name
    let p = prefix
    interface_ClassDB_registerExtensionClassPropertySubGroup(environment.library,
      addr className(typ), addr n, addr p)

template `@export_custom`*[T: SomeUserClass; S: SomeProperty](
      name: StringName;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
      hint: PropertyHint = propertyHintNone;
      hintstring: String = gdstring"";
      usage: set[PropertyUsageFlags] = PropertyUsageFlags.propertyUsageDefault;
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint, hintstring, usage)

template `@export`*[T: SomeUserClass; S: SomeProperty](
    name: StringName;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S)): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter)

template `@export_color_no_alpha`*[T: SomeUserClass; S: SomeProperty](
      name: StringName;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintColorNoAlpha)

template `@export_dir`*[T: SomeUserClass; S: SomeProperty](
      name: StringName;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintDir)
template `@export_global_dir`*[T: SomeUserClass; S: SomeProperty](
      name: StringName;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintGlobalDir)
template `@export_file`*[T: SomeUserClass; S: SomeProperty](
      name: StringName;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintFile)
template `@export_global_file`*[T: SomeUserClass; S: SomeProperty](
      name: StringName;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintGlobalFile)

template `@export_enum`*[T: SomeUserClass; S: SomeProperty](
      name: StringName;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
      enums: varargs[string];
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintEnum,
    hint_string= @enums.join(","))

template `@export_flags`*[T: SomeUserClass; S: SomeProperty](
      name: StringName;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
      flags: varargs[string];
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintFlags,
    hint_string= @flags.join(","))

template `@export_flags_2d_navigation`*[T: SomeUserClass; S: SomeProperty](
      name: StringName;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers2dNavigation)

template `@export_flags_2d_physics`*[T: SomeUserClass; S: SomeProperty](
      name: StringName;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers2dPhysics)

template `@export_flags_2d_render`*[T: SomeUserClass; S: SomeProperty](
      name: StringName;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers2dRender)

template `@export_flags_3d_navigation`*[T: SomeUserClass; S: SomeProperty](
      name: StringName;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =

  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers3dNavigation)

template `@export_flags_3d_physics`*[T: SomeUserClass; S: SomeProperty](
      name: StringName;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers3dPhysics)

template `@export_flags_3d_render`*[T: SomeUserClass; S: SomeProperty](
      name: StringName;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayers3dRender)

template `@export_flags_avoidance`*[T: SomeUserClass; S: SomeProperty](
      name: StringName;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintLayersAvoidance)

type ExpEasingArgument* = enum
  attenuation, positive_only
template `@export_exp_easing`*[T: SomeUserClass; S: SomeProperty](
      name: StringName;
      getter: proc(self: T): S;
      setter: proc(self: T; value: S);
      extra: varargs[ExpEasingArgument];
    ): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintExpEasing,
    hint_string= @extra.mapIt($it).join(","))

template `@export_multiline`*[T: SomeUserClass; S: SomeProperty](
    name: StringName;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S)): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintMultilineText)

template `@export_node_path`*[T: SomeUserClass; S: SomeProperty](
    name: StringName;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S);
    validTypes: varargs[string]): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintNodePathValidTypes,
    hint_string= @validTypes.join(","))

macro `@export_node_path`*[T: SomeUserClass; S: SomeProperty](
    name: StringName;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S);
    validTypes: varargs[typedesc[Node]]): untyped =
  result = bindSym"@export_node_path".newCall(name, getter, setter)
  for valid in validTypes:
    result.add bindSym"$".newCall bindSym"className".newCall valid

template `@export_placeholder`*[T: SomeUserClass; S: SomeProperty](
    name: StringName;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S);
    placeholder: String): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintPlaceholderText,
    hint_string= placeholder)

type RangeArgument* {.pure.} = enum
  or_less, or_greater, exp, radians_as_degrees, degrees, hide_slider
template `@export_range`*[T: SomeUserClass; S: SomeProperty](
    name: StringName;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S);
    min, max: S; extra: varargs[RangeArgument]): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintRange,
    hint_string= @[$min, $max].concat(@extra.mapit($it)).join(","))
template `@export_range`*[T: SomeUserClass; S: SomeProperty](
    name: StringName;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S);
    min, max, step: S; extra: varargs[RangeArgument]): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    hint= propertyHintRange,
    hint_string= @[$min, $max, $step].concat(@extra.mapIt($it)).join(","))

template `@export_storage`*[T: SomeUserClass; S: SomeProperty](
    name: StringName;
    getter: proc(self: T): S;
    setter: proc(self: T; value: S)): untyped =
  register_property(typedesc T, name, typedesc S, getter, setter,
    usage= {propertyUsageStorage})
