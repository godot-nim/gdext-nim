import std/[unicode, importutils]
import gdext/builtinindex
import gdext/private/[native, staticevents]

proc gdstring*(str: string): String =
  interfaceStringNewWithUtf8Chars(addr result, cstring str)
proc stringName*(str: string): StringName =
  interfaceStringNameNewWithUtf8Chars(addr result, cstring str)

proc `&`*(str: string): StringName {.inline.} = stringName str

include gdext/private/includes/stringtoolsbase

include gdext/gen/gdstringconstr
include gdext/gen/gdstringnameconstr
include gdext/gen/gdnodepathconstr
include gdext/gen/gdstring
include gdext/gen/gdstringname
include gdext/gen/gdnodepath

proc `$`*(s: String): string =
  var buffer {.global.}: string
  let length = s.length
  if buffer.len < length * 6: buffer.setlen(length*6)
  let actualSize = interfaceStringToUtf8Chars(addr s, cstring buffer, buffer.len)
  buffer[0..<actualSize]

{.push, inline.}
proc `$`*(s: StringName): string = $gdstring s
{.pop.}
