import cloths/sdk
import cloths
import std/strutils

import submodules/semanticstrings

type
  Pragmas* = object
    list*: seq[string]

func `$`*(pragmas: Pragmas): string =
  if pragmas.list.len == 0: result
  else:
    "{." & pragmas.list.join(", ") & ".}"

type Comment = ref object of Style
  enable: bool

let comment*: array[bool, Comment] = [Comment(enable: false), Comment(enable: true)]

method apply(style: Comment; data: Data): Data =
  var super {.global.}: array[bool, Style]
  once: super = [multiline, Prefix(prefix: "# ")]

  super[style.enable].apply data


const withNew = [
  TypeSym"Array",
  TypeSym"PackedByteArray",
  TypeSym"PackedColorArray",
  TypeSym"PackedStringArray",
  TypeSym"PackedInt32Array",
  TypeSym"PackedInt64Array",
  TypeSym"PackedFloat32Array",
  TypeSym"PackedFloat64Array",
  TypeSym"PackedVector2Array",
  TypeSym"PackedVector3Array",
  TypeSym"PackedVector4Array",
  TypeSym"Dictionary",
  TYpeSym"String",
  TYpeSym"StringName",
  TYpeSym"NodePath",
]
const withGd = [
  TYpeSym"String",
]
func uncapitalizeAscii(s: string): string =
  if s.len == 0: result = ""
  else: result = toLowerAscii(s[0]) & substr(s, 1)

proc constructorName*(sym: TypeSym): ProcSym =
  ProcSym uncapitalizeAscii do:
    (if sym in withNew: "New" else: "") &
    (if sym in withGd: "Gd" else: "") &
    capitalizeAscii($sym)