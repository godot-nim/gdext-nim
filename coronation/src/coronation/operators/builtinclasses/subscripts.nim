import std/strformat
import std/options

import cloths
import submodules/semanticstrings

import types/json

import config

type Subscription = enum
  Never
  Indexing
  Keying

proc subscription(json: JsonBuiltinClass; typename: TypeSym): Subscription =
  let ignore = getignore(typename)
  if json.indexing_return_type.isNone or ignore.subscript: Never
  elif json.is_keyed: Keying
  else: Indexing

proc weave_subscript*(json: JsonBuiltinClass): Cloth =
  let typename = json.name.convert(TypeSym)
  weave multiline:
    case json.subscription(typename)
    of Never: discard
    of Indexing:
      &"proc `[]`*(self: {typename}; index: int): var {typename}.Item = cast[ptr {typename}.Item](interface_{typename}_operatorIndex(addr self, index))[]"
      &"proc `[]=`*(self: {typename}; index: int; value: {typename}.Item) = cast[ptr {typename}.Item](interface_{typename}_operatorIndex(addr self, index))[] = value"
    of Keying:
      &"proc `[]`*(self: {typename}; key: Variant): var {typename}.Item = cast[ptr {typename}.Item](interface_{typename}_operatorIndex(addr self, addr key))[]"
      &"proc `[]=`*(self: {typename}; key: Variant; value: {typename}.Item) = cast[ptr {typename}.Item](interface_{typename}_operatorIndex(addr self, addr key))[] = value"
