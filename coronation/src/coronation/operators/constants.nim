import cloths

import submodules/wordropes
import submodules/semanticstrings
import types/json
import utils

import std/strformat
import std/strutils

proc constValue*(t: string; value: string): string =
  case t
  of "Vector2", "Vector3", "Vector4":
    value.multireplace((t, "vector"), ("inf", "Inf"))
  of "Vector2i", "Vector3i", "Vector4i":
    value.replace(t, "vectori")
  else:
    value.replace(t, $constructorName TypeSym t)

proc weave*(constant: JsonConstant; caller: TypeSym): Cloth =
  let pred = constant.name.scan.convert(TypeSym)
  let value = constValue(constant.`type`, constant.value)
  weave multiline:
    &"const {caller}_{pred}*: {constant.`type`} = {value}"
    &"template {pred}*(_: typedesc[{caller}]): {constant.`type`} = {caller}_{pred}"
