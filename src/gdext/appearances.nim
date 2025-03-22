from std/strformat import fmt
from std/strutils import join, strip, find, removeSuffix
from std/sequtils import concat, mapIt, toSeq

import gdext/private/gdinterface
import gdext/core/userclass/propertyinfo
import gdext/private/macros
import gdext/builtinindex
import gdext/stringtools

type
  Appearance* = object
    ## Specifies how the property looks in the inspector;
    ## can be passed to the gdexport macro/pragma.
    hint*: PropertyHint
    hintstring*: String
    usage*: set[PropertyUsageFlags] = {propertyUsageEditor, propertyUsageStorage}

  ExpEasingArgument* = enum
    attenuation, positive_only
  RangeArgument*  = enum
    or_less, or_greater, exp, radians_as_degrees, degrees, hide_slider

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


proc appearance*[T](_: typedesc[T]): Appearance = discard
proc appearance*[T: Object](_: typedesc[T]): Appearance =
  when T is Node:
    const hint = propertyHintNodeType
  elif T is Resource:
    const hint = propertyHintResourceType
  else:
    const hint = propertyHintNone
  Appearance(
    hint: hint,
    hintstring: gdstring className T)
proc appearance*[T](_: typedesc[GdRef[T]]): Appearance = T.appearance
proc appearance*(T: typedesc[enum]): Appearance =
  const hintstring = T.makeDefaultHintStringEnum
  Appearance(
    hint: propertyHintEnum,
    hintstring: gdstring hintstring)
proc appearance*[T: enum](_: typedesc[set[T]]): Appearance =
  const hintstring = T.makeDefaultHintStringBitField
  Appearance(
    hint: propertyHintFlags,
    hintstring: gdstring hintstring)
proc appearance*(T: typedesc[range]): Appearance =
  const hintstring = T.makeDefaultHintStringRange
  Appearance(
    hint: propertyHintRange,
    hintstring: gdstring hintstring)
proc appearance*[T](_: typedesc[TypedArray[T]]): Appearance =
  var elementApp = T.appearance
  let typ = T.variantType.ord
  let hint = (if elementApp.hint == propertyHintNone: "" else: "/" & $elementApp.hint.ord)
  let str = fmt"{typ}{hint}:{elementApp.hint_string}"
  Appearance(
    hint: propertyHintArrayType,
    hintstring: gdstring str)

template joinArg(s: varargs[string]): string = s.join(",")

proc storage*(T: typedesc[Appearance]): Appearance =
  ## `@export_storage <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-storage>`_
  Appearance(usage: {propertyUsageStorage})

proc category*(T: typedesc[Appearance]): Appearance =
  ## `@export_category <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-category>`_
  Appearance(usage: {propertyUsageCategory})

proc group*(T: typedesc[Appearance];
    prefix= String()): T =
  ## `@export_group <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-group>`_
  Appearance(
    hintString: prefix,
    usage: {propertyUsageGroup})

proc subgroup*(T: typedesc[Appearance];
    prefix= String()): T =
  ## `@export_subgroup <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-subgroup>`_
  Appearance(
    hintString: prefix,
    usage: {propertyUsageSubgroup})

proc colorNoAlpha*(T: typedesc[Appearance]): Appearance =
  ## `@export_color_no_alpha <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-color-no-alpha>`_
  Appearance(hint: propertyHintColorNoAlpha)

proc dir*(T: typedesc[Appearance]): Appearance =
  ## `@export_dir <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-dir>`_
  Appearance(hint: propertyHintDir)

proc globalDir*(T: typedesc[Appearance]): Appearance =
  ## `@export_global_dir <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-global-dir>`_
  Appearance(hint: propertyHintGlobalDir)

proc file*(T: typedesc[Appearance]; filter: varargs[string]): Appearance =
  ## `@export_file <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-file>`_
  Appearance(
    hint: propertyHintFile,
    hintstring: gdstring filter.joinArg)

proc globalFile*(T: typedesc[Appearance]; filter: varargs[string]): Appearance =
  ## `@export_global_file <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-global-file>`_
  Appearance(
    hint: propertyHintGlobalFile,
    hintstring: gdstring filter.joinArg)

proc flags2dNavigation*(T: typedesc[Appearance]): Appearance =
  ## `@export_flags_2d_navigation <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-flags-2d-navigation>`_
  Appearance(hint: propertyHintLayers2DNavigation)

proc flags2dPhysics*(T: typedesc[Appearance]): Appearance =
  ## `@export_flags_2d_physics <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-flags-2d-physics>`_
  Appearance(hint: propertyHintLayers2DPhysics)

proc flags2dRender*(T: typedesc[Appearance]): Appearance =
  ## `@export_flags_2d_render <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-flags-2d-render>`_
  Appearance(hint: propertyHintLayers2DRender)

proc flags3dNavigation*(T: typedesc[Appearance]): Appearance =
  ## `@export_flags_3d_navigation <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-flags-3d-navigation>`_
  Appearance(hint: propertyHintLayers3DNavigation)

proc flags3dPhysics*(T: typedesc[Appearance]): Appearance =
  ## `@export_flags_3d_physics <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-flags-3d-physics>`_
  Appearance(hint: propertyHintLayers3DPhysics)

proc flags3dRender*(T: typedesc[Appearance]): Appearance =
  ## `@export_flags_3d_render <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-flags-3d-render>`_
  Appearance(hint: propertyHintLayers3DRender)

proc flagsAvoidance*(T: typedesc[Appearance]): Appearance =
  ## `@export_flags_avoidance <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-flags-avoidance>`_
  Appearance(hint: propertyHintLayersAvoidance)

proc multiline*(T: typedesc[Appearance]): Appearance =
  ## `@export_multiline <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-multiline>`_
  Appearance(hint: propertyHintMultilineText)

proc custom*(T: typedesc[Appearance];
      hint: PropertyHint = propertyHintNone;
      hintstring= String();
      usage: set[PropertyUsageFlags] = {propertyUsageEditor, propertyUsageStorage};
    ): Appearance =
  ## `@export_custom <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-custom>`_
  Appearance(hint: hint, hintstring: hintstring, usage: usage)

proc `enum`*(T: typedesc[Appearance];
    enums: varargs[string]): Appearance =
  ## `@export_enum <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-enum>`_
  Appearance(
    hint: propertyHintEnum,
    hint_string: gdstring enums.joinArg)

proc `flags`*(T: typedesc[Appearance];
    flags: varargs[string]): Appearance =
  ## `@export_flags <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-flags>`_
  Appearance(
    hint: propertyHintFlags,
    hint_string: gdstring flags.joinArg)

proc expEasing*(T: typedesc[Appearance];
    extra: varargs[ExpEasingArgument]): Appearance =
  ## `@export_exp_easing <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-exp-easing>`_
  Appearance(
    hint: propertyHintExpEasing,
    hint_string: gdstring @extra.mapIt($it).joinArg)

proc nodePath*(T: typedesc[Appearance];
    validTypes: varargs[string]): Appearance =
  ## `@export_node_path <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-node-path>`_
  Appearance(
    hint: propertyHintNodePathValidTypes,
    hint_string: gdstring @validTypes.joinArg)

macro nodePath*(T: typedesc[Appearance];
    validTypes: varargs[typedesc[Node]]): Appearance =
  ## `@export_node_path <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-node-path>`_
  result = bindSym"nodePath".newCall(T)
  for valid in validTypes:
    result.add bindSym"$".newCall bindSym"className".newCall valid

proc placeholder*(T: typedesc[Appearance];
    placeholder: String): Appearance =
  ## `@export_placeholder <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-placeholder>`_
  Appearance(
    hint: propertyHintPlaceholderText,
    hint_string: placeholder)

proc range*[S: SomeNumber](T: typedesc[Appearance];
    min, max: S;
    step: S;
    extra: varargs[RangeArgument]): Appearance =
  ## `@export_range <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-range>`_
  var hint_string = @[$min, $max, $step]
  if extra.len > 0:
    hint_string = hint_string.concat(@extra.mapit($it))
  Appearance(
    hint: propertyHintRange,
    hint_string: hint_string.join(","))

proc range*[S: SomeNumber](T: typedesc[Appearance];
    min, max: S;
    extra: varargs[RangeArgument]): Appearance =
  ## `@export_range <https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html#class-gdscript-annotation-export-range>`_
  var hint_string = @[$min, $max]
  if extra.len > 0:
    hint_string = hint_string.concat(@extra.mapit($it))
  Appearance(
    hint: propertyHintRange,
    hint_string: hint_string.join(","))
