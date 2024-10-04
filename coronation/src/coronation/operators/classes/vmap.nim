import cloths

import types/json
import ../classindex
import submodules/wordropes
import submodules/semanticstrings

import std/options
import std/sequtils
import std/strformat

proc weave_vmap*(class: Class): Cloth = weave multiline:
  let vmethods = class.json.methods.get(@[]).filterIt(it.isVirtual)
  let super =
    if class.inherits == TypeSym.RootObj:
      "  "
    else:
      &"  {class.inherits}.vmap.concat "

  &"const {class.typesym}_vmap ="
  if vmethods.len == 0:
    super & "initTable[string, string]()"
  else:
    super & "toTable {"
    weave Indent(level: 4):
      for entry in vmethods:
        "\"" & $entry.name.scan.convert(NormalizedProcSym) & "\" : \"" & $entry.name & "\","
      "}"
  &"template vmap*(_: typedesc[{class.typesym}]): Table[string, string] = {class.typesym}_vmap"
