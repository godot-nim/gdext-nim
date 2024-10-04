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
  let super {.global.}: array[bool, Style] = [multiline, Prefix(prefix: "# ")]

  super[style.enable].apply data


proc constructorName*(sym: TypeSym): ProcSym =
  case sym
  of TypeSym"String": ProcSym"gdstring"
  of TypeSym"Array": ProcSym"gdarray"
  else: ProcSym variablefy sym