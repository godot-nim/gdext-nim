import cloths

import ./enums
import ./classindex

import submodules/wordropes
import submodules/semanticstrings
import types/json

import std/hashes
import std/strutils
import std/strformat
import std/options
import std/tables

type
  ParamTypeAttr* = enum
    ptaNake
    ptaSet
  ParamInfo* = object
    isMutable*: bool
    isVarargs*: bool
    attribute*: ParamTypeAttr
    metaType*: TypeSym
    ptrdepth*: Natural

type
  RenderableParamBase* = ref object of RootObj
    info*: ParamInfo
    typeSym*: TypeSym

  RenderableResult* = ref object of RenderableParamBase

  RenderableParam* = ref object of RenderableParamBase
  RenderableArgument* = ref object of RenderableParam
    default_value*: Option[string]
    variableSym*: VariableSym
  RenderableSelfArgument* = ref object of RenderableParam
    isStatic*: bool


method name*(param: RenderableParam): VariableSym {.base.} = discard

method name*(param: RenderableArgument): VariableSym = param.variableSym
method name*(param: RenderableSelfArgument): VariableSym =
  VariableSym:
    case param.isStatic
    of false: "self"
    of true: "_"

# Default-Value Calculation #
# ===========================

proc dbModify*(typeSym: TypeSym): string =
  try:
    let class = classDB[typeSym]
    if class.json.isRefCounted:
      "gdref " & $typeSym
    else: $typeSym
  except:
    $typeSym

proc `type`*(param: RenderableParamBase): string =
  var name = "ptr ".repeat(param.info.ptrdepth)
  name.add dbModify param.typeSym
  if param.typeSym == TypeSym"TypedArray":
    name.add "["
    name.add $param.info.metaType
    name.add "]"

  result = case param.info.attribute
  of ptaNake:
    name
  of ptaSet:
    &"set[{name}]"

  if param.info.ismutable:
    return "var " & result
  if param.info.isVarargs:
    return &"varargs[{result}]"

proc `type`*(param: RenderableArgument): string =
  param.RenderableParamBase.type

proc `type`*(param: RenderableSelfArgument): string =
  result = $param.typeSym
  if param.info.ismutable:
    return "var " & result

proc `type`*(param: RenderableResult): string =
  param.RenderableParamBase.type

proc fixDefaultValue(arg: RenderableArgument; value: string) =
  let typesym = arg.typesym
  var default = if typesym in enumDB:
    let enumentry = enumDB[typesym]
    let v = value.parseInt
    if bitfield in enumentry.flags:
      var needle = 1
      var targetnvs: seq[int]
      while true:
        if v < needle: break
        if (v and needle) != 0:
          targetnvs.add needle
        needle = needle shl 1

      var sets: seq[string]
      for f in enumentry.fields:
        if f.nativeValue in targetnvs and alias notin f.flags and not f.commentedout:
          sets.add $f.name
      "{" & sets.join(", ") & "}"
    else:
      # Find matched Entry
      var named: string
      for f in enumentry.fields:
        if f.nativeValue == v and alias notin f.flags and not f.commentedout:
          named = $f.name
          break
      named

  elif typesym in classDB:
    case value
    of "null":
      "default " & $arg.type
    else:
      value

  else:
    case typesym
    of TypeSym"String":
      if value[0] == '"':
        "gdstring" & value
      else:
        value.replace("String", "gdstring")

    of TypeSym"StringName":
      case value
      of "&\"\"", "\"\"":
        "stringName \"\""
      else:
        value

    of TypeSym"Vector3", TypeSym"Vector3i", TypeSym"Vector2", TypeSym"Vector2i":
      value.replace("Vector", "vector")

    of TypeSym"Rect2", TypeSym"Rect2i":
      value.replace("Rect2", "rect2")

    of TypeSym"Transform3D":
      case value
      of "Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)":
        "transform3D()"
      else:
        value.replace("Transform3D", "transform3D")

    of TypeSym"Transform2D":
      case value
      of "Transform2D(1, 0, 0, 1, 0, 0)":
        "transform2D()"
      else:
        value.replace("Transform2D", "transform2D")

    of TypeSym"Color":
        value.replace("Color", "color")

    of TypeSym"Array":
      case value
      of "[]":
        "gdarray()"
      else:
        value

    of TypeSym"TypedArray":
      case value
      of "[]":
        &"TypedArray[{arg.info.metaType}](gdarray())"
      elif value.startsWith "Array":
        "TypedArray[" & $value.split({'[', ']'})[1].scan.convert(TypeSym) & "](gdarray())"
      else:
        value

    of TypeSym"Dictionary":
      case value
      of "{}":
        "dictionary()"
      else:
        value

    of TypeSym"Callable":
      case value
      of "Callable()":
        "callable()"
      else:
        value

    of TypeSym"NodePath":
      case value
      of "NodePath(\"\")":
        "nodePath()"
      else:
        value

    of TypeSym"Variant":
      case value
      of "0", "null":
        "default(Variant)"
      else:
        value

    of TypeSym"uint32":
      value & "'u32"

    else:
      case value
      of "null":
        "nil"
      else:
        value

  default = case arg.info.attribute
  of ptaNake:
    default
  else:
    default

  arg.default_value = some default



proc preconvert*(param: RenderableParamBase; basetype: Option[string]) =
  if basetype.isNone:
    param.typesym = TypeSym.Void
    return

  param.info.ptrdepth = basetype.get.count('*')
  var basetype = basetype.get
    .multireplace(("const ", ""), ("*", ""))
  while basetype[^1] == ' ': basetype = basetype[0..^2]

  for (key, attr) in {"enum::": ptaNake, "bitfield::":ptaSet}:
    if basetype.startsWith key:
      param.info.attribute = attr
      basetype = basetype[key.len..^1]
      break
  if basetype.startsWith "typedarray::":
    param.info.metaType = basetype["typedarray::".len..^1].scan.convert(TypeSym)
    basetype = "TypedArray"

  if basetype.find("void") != -1:
    basetype = "pointer"
    dec param.info.ptrdepth
  param.typeSym = basetype.scan.convert(TypeSym)

proc convertToResult*(baseType: Option[string]): RenderableResult =
  new result
  preconvert(result, basetype)

proc convert*(raw: JsonArgument): RenderableArgument =
  new result
  preconvert(result, some raw.meta.get(raw.`type`))
  result.variableSym = raw.name.replace("result", "retval").scan.convert(VariableSym)
  if raw.default_value.isSome:
    fixDefaultValue(result, get raw.default_value)



proc weave*(renderable: RenderableResult): Cloth =
  &"{renderable.type}"

proc weave*(renderable: RenderableArgument): Cloth = weave text:
  &"{renderable.name}: {renderable.type}"
  if renderable.default_value.isSome:
    "="
    get(renderable.default_value)

proc weave*(renderable: RenderableSelfArgument): Cloth = weave text:
  &"{renderable.name}: {renderable.type}"