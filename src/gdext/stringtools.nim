import std/[unicode, importutils]
import gdext/builtinindex
import gdext/private/[native, staticevents, macros]

proc newGdString*(): String = discard
proc newGdString*(str: string): String =
  interfaceStringNewWithUtf8Chars(addr result, cstring str)

proc newStringName*(): StringName = discard
proc newStringName*(str: string): StringName =
  interfaceStringNameNewWithUtf8Chars(addr result, cstring str)

proc newNodePath*(): NodePath = discard

proc `[]`*(self: String; index: Natural): Rune =
  cast[ptr Rune](interface_String_operatorIndexConst(addr self, index))[]
proc `[]`*(self: var String; index: Natural): var Rune =
  cast[ptr Rune](interface_String_operatorIndex(addr self, index))[]
proc `[]=`*(self: var String; index: Natural; value: sink Rune) =
  `[]`(self, index) = value

include gdext/private/includes/stringtoolsbase

include gdext/gen/gdstringconstr
include gdext/gen/gdstringnameconstr
include gdext/gen/gdnodepathconstr
include gdext/gen/gdstring
include gdext/gen/gdstringname
include gdext/gen/gdnodepath

proc newNodePath*(str: string): NodePath = newNodePath(newGdString(str))

template gdstring*(args: varargs[untyped]): untyped {.deprecated: "use newGdString instead".} = unpackVarargs(newGdString, args)
template stringname*(args: varargs[untyped]): untyped {.deprecated: "use newStringName instead".} = unpackVarargs(newStringName, args)
template nodepath*(args: varargs[untyped]): untyped {.deprecated: "use newNodePath instead".} = unpackVarargs(newNodePath, args)

proc `$`*(s: String): string =
  var buffer {.global.}: string
  let length = s.length
  if buffer.len < length * 6: buffer.setlen(length*6)
  let actualSize = interfaceStringToUtf8Chars(addr s, cstring buffer, buffer.len)
  buffer[0..<actualSize]

{.push, inline.}
proc `$`*(s: StringName): string = $newGdString s
proc `$`*(s: NodePath): string = $newGdString s
{.pop.}
