import std/[importutils]
import gdext/builtinindex {.all.}
import gdext/private/native

var newStringNameFromString: PtrConstructor
var newStringFromStringName: PtrConstructor

var String_length: PtrBuiltinMethod

proc ownerPtr*(obj: Object): ptr ObjectPtr =
  privateAccess Object
  if unlikely(obj.isNil or obj.owner.isNil): nil
  else: addr obj.owner
proc owner*(obj: Object): ObjectPtr =
  privateAccess Object
  if unlikely(obj.isNil): nil
  else: obj.owner

proc gdstring*(str: string): String =
  interfaceStringNewWithUtf8Chars(addr result, cstring str)
proc gdstring(sn: StringName): String =
  let args = [cast[pointer](addr sn)]
  newStringFromStringName(addr result, addr args[0])
proc length(s: String): Int =
  String_length(addr s, nil, addr result, 0)
proc `$`*(s: String): string =
  var buffer {.global.}: string
  let length = s.length
  if buffer.len < length * 6: buffer.setlen(length*6)
  let actualSize = interfaceStringToUtf8Chars(addr s, cstring buffer, buffer.len)
  buffer[0..<actualSize]
proc `$`*(s: StringName): string = $gdstring s

proc stringName*(str: string): StringName =
  interfaceStringNameNewWithUtf8Chars(addr result, cstring str)

proc className*(o: ObjectPtr): string =
  var sn: StringName
  discard interfaceObjectGetClassName(o, environment.library, addr sn)
  $sn

proc empty*(_: typedesc[String]): var String =
  var instance {.global.}: String
  once: instance = gdstring""
  instance
proc empty*(_: typedesc[StringName]): var StringName =
  var instance {.global.}: StringName
  once: instance = stringName""
  instance

proc referenced*[T](self: T): GdRef[T] =
  result.handle = self
  discard hook_reference(self.owner)
proc asGdRef*[T](self: T): GdRef[T] =
  result.handle = self

proc load* =
  newStringNameFromString = interfaceVariantGetPtrConstructor(VariantType_StringName, 2)
  newStringFromStringName = interfaceVariantGetPtrConstructor(VariantType_String, 2)

  let String_length_name = stringName"length"
  String_length = interface_Variant_getPtrBuiltinMethod(VariantType_String, addr String_length_name, 3173160232)