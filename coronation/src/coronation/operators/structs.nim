import cloths

import submodules/semanticstrings
import submodules/wordropes

import types/json

import std/sequtils
import std/strutils
import std/strformat
import std/options

type Property = object
  name: VariableSym
  `type`: string
  exportme: bool
  default: Option[string]

func `$`(prop: Property): string =
  result = $prop.name & (if prop.exportme: "*" else: "") & ": " & $prop.`type`
  if prop.default.isSome:
    result &= " = " & (get prop.default)


proc parseFormatProperty(s: string): Property =
  let spl = s.split(" ")
  result.exportme = true
  var `type` = spl[0]
  var name = spl[1]
  let ptrdepth = name.count('*')
  name = name.replace("*", "")
  if name[^1] == ']':
    let x = name.split('[')
    name = x[0]
    `type` = &"array[{x[1][0..^2]}, {`type`}]"

  if spl.len >= 4:
    result.default = some spl[3].replace(".f", "")
  `type` = `type`
    .multiReplace( ("_t", ""), ("real", "real_elem"), ("::", "_") )
  for t in ["int", "uint", "float"]:
    if `type` == t:
      `type`= "c" & t

  result.name = name.scan.convert(VariableSym)
  result.`type` = "ptr ".repeat(ptrdepth) & `type`

type RenderableStructure* = ref object
  typename: TypeSym
  props: seq[Property]
proc parseFormat(self: JsonStructure): seq[Property] =
  self.format.split(';').mapIt(it.parseFormatProperty)

proc convert*(json: JsonStructure): RenderableStructure =
  RenderableStructure(
    typename: json.name.convert(TypeSym),
    props: json.parseFormat,
  )

proc weave*(renderable: RenderableStructure): Cloth =
  var entries = cloth cloths.indent
  result = weave multiline:
    &"type {renderable.typename}* = object"
    entries
  for prop in renderable.props:
    entries.add $prop