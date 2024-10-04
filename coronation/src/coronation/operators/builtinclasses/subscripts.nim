import std/strutils
import std/strformat
import std/options

import cloths
import submodules/wordropes
import submodules/semanticstrings

import types/json

import config

type Subscription = enum
  Never
  Optimize
  Indexing
  Keying

proc subscription(json: JsonBuiltinClass; typename: TypeSym): Subscription =
  let ignore = getignore(typename)
  if json.indexing_return_type.isNone or ignore.subscript: Never
  elif json.is_keyed: Keying
  elif "Packed" in $typename: Optimize
  else: Indexing

proc weave_subscript*(json: JsonBuiltinClass): Cloth =
  let typename = json.name.scan.convert(TypeSym)
  weave multiline:
    case json.subscription(typename)
    of Never: discard
    of Optimize:
      &"proc `[]`*(self: {typename}; index: int): {typename}.Item = self.data_unsafe[index]"
      &"proc `[]`*(self: var {typename}; index: int): var {typename}.Item = self.data_unsafe[index]"
      &"proc `[]=`*(self: var {typename}; index: int; value: {typename}.Item) = self.data_unsafe[index] = value"
    of Indexing:
      &"proc `[]`*(self: {typename}; index: int): {typename}.Item = cast[ptr {typename}.Item](interface_{typename}_operatorIndexConst(addr self, index))[]"
      &"proc `[]`*(self: var {typename}; index: int): var {typename}.Item = cast[ptr {typename}.Item](interface_{typename}_operatorIndex(addr self, index))[]"
      &"proc `[]=`*(self: var {typename}; index: int; value: {typename}.Item) = cast[ptr {typename}.Item](interface_{typename}_operatorIndex(addr self, index))[] = value"
    of Keying:
      &"proc `[]`*(self: {typename}; key: Variant): {typename}.Item = cast[ptr {typename}.Item](interface_{typename}_operatorIndexConst(addr self, addr key))[]"
      &"proc `[]`*(self: var {typename}; key: Variant): var {typename}.Item = cast[ptr {typename}.Item](interface_{typename}_operatorIndex(addr self, addr key))[]"
      &"proc `[]=`*(self: var {typename}; key: Variant; value: {typename}.Item) = cast[ptr {typename}.Item](interface_{typename}_operatorIndex(addr self, addr key))[] = value"
