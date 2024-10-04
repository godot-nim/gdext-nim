import cloths


import utils
import types/json
import submodules/wordropes
import submodules/semanticstrings

import std/strformat
import std/strutils
import std/sugar
import std/algorithm
import std/options
import std/math
import std/tables

type
  EnumFieldFlag* = enum
    alias, bitset
  EnumFlag* = enum
    bitfield
  EnumField* = object
    commentedout*: bool
    flags*: set[EnumFieldFlag]
    name*: VariableSym
    value*: int
    nativeValue*: int
    comment*: string
  Enum* = ref object
    flags*: set[EnumFlag]
    typename*: TypeSym
    pragmas*: Pragmas
    fields*: seq[EnumField]

var enumDB* = new TableRef[TypeSym, Enum]

proc with_registerDB*(item: Enum): Enum =
  enumDB[item.typename] = item
  item


func flagkey(value: int; res: out int): bool =
  let l = log2 value.float32
  let f = l.floor
  result = f == l.ceil
  if result:
    res = int f
  else:
    res = 0

proc fullfill_fields(renderable: Enum; values: seq[JsonEnumField]; is_bitfield: bool) =
  var sorted = values.sorted((x,y) => cmp(x.value, y.value))
  renderable.fields = newSeqOfCap[EnumField](sorted.len)
  if is_bitfield: renderable.flags.incl bitfield
  var enumval = int.low
  var fbit: int
  for i, item in sorted:
    var field = EnumField(name: item.name.scan.convert(VariableSym))
    field.nativeValue = item.value
    if is_bitfield:
      if item.value.flagkey(fbit):
        if item.value == 0:
          field.value = 0
          field.commentedout = true
        else:
          field.value = fbit
          if enumval == item.value:
            field.flags.incl alias
      else:
        field.value = item.value
        field.flags.incl {alias, bitset}
    else:
      field.value = item.value
      if enumval == item.value:
        field.flags.incl alias
    enumval = item.value
    renderable.fields.add field

proc padding_bitfield(renderable: Enum) =
  for i, item in renderable.fields:
    if not item.commentedout and item.value == 0:
      break
    if not item.commentedout and item.value > 0:
      renderable.fields.insert(EnumField(name: "--PADDING-MIN--".scan.convert(VariableSym), value: 0, comment: fmt"To align size-of set[{renderable.typename}] to size-of Int."), i)
      break
  renderable.fields.add EnumField(name: "--PADDING-MAX--".scan.convert(VariableSym), value: 63, comment: fmt"To align size-of set[{renderable.typename}] to size-of Int.")

proc convert*(raw: JsonGlobalEnum): Enum =
  new result
  result.typename = raw.name.scan.convert(TypeSym)
  let is_bitfield = raw.is_bitfield.get(false)

  fullfill_fields(result, raw.values, is_bitfield)
  if is_bitfield:
    padding_bitfield(result)
  else:
    result.pragmas.list.add "size: sizeof(clong)"

proc convert*(raw: JsonClassEnum; caller: TypeSym): Enum =
  new result
  result.typename = fmt("{caller}.{raw.name}").scan.convert(TypeSym)
  let is_bitfield = raw.is_bitfield.get(false)

  fullfill_fields(result, raw.values, is_bitfield)
  if is_bitfield:
    padding_bitfield(result)
  else:
    result.pragmas.list.add "size: sizeof(clong)"

proc convert*(raw: JsonBuiltinClassEnum; caller: TypeSym): Enum =
  new result
  result.typename = fmt("{caller}.{raw.name}").scan.convert(TypeSym)
  let is_bitfield = raw.is_bitfield.get(false)

  fullfill_fields(result, raw.values, is_bitfield)
  if is_bitfield:
    padding_bitfield(result)
  else:
    result.pragmas.list.add "size: sizeof(clong)"


proc weave*(renderable: Enum): Cloth =
  let pragmas = if renderable.pragmas.list.len == 0: "" else: " " & $renderable.pragmas

  template commentmsg: string =
    if field.comment == "": ""
    else: " # " & field.comment

  weave multiline:
    fmt"type {renderable.typename}*{pragmas} = enum"
    weave cloths.indent:
      for field in renderable.fields:
        if alias notin field.flags:
          weave comment[field.commentedout]:
            fmt"{field.name} = {field.value}{commentmsg}"

    for field in renderable.fields:
      if alias in field.flags:
        weave comment[field.commentedout]:
          if bitset in field.flags:
            fmt"template {field.name}*[T: {renderable.typename}](_: typedesc[T]): set[T] = cast[set[T]]({field.value}){commentmsg}"
          else:
            fmt"template {field.name}*[T: {renderable.typename}](_: typedesc[T]): T = T({field.value}){commentmsg}"