import gdext/dirty/gdextensioninterface
import gdext/core/builtinindex
import gdext/core/commandindex

var newStringNameFromString: PtrConstructor
var newStringFromStringName: PtrConstructor

var String_length: PtrBuiltinMethod

proc gdstring*(str: string): String =
  interfaceStringNewWithLatin1Chars(addr result, cstring str)
proc gdstring(sn: StringName): String =
  let args = [cast[pointer](addr sn)]
  newStringFromStringName(addr result, addr args[0])
proc length(s: String): Int =
  String_length(addr s, nil, addr result, 0)
proc `$`*(s: String): string =
  let length = s.length
  result = newString(length)
  discard interfaceStringToLatin1Chars(addr s, cstring result, length)
proc `$`*(s: StringName): string = $gdstring s

proc stringName*(str: string): StringName =
  interfaceStringNameNewWithLatin1Chars(addr result, cstring str, false)

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

var RefCounted_reference: MethodBindPtr
var RefCounted_unreference: MethodBindPtr
var RefCounted_get_reference_count: MethodBindPtr
proc hook_reference*(o: ObjectPtr): Bool {.raises: [].} =
  if unlikely(o.isNil): return
  try:
    interface_Object_methodBindPtrCall(RefCounted_reference, o, nil, addr result)
  except: discard
proc hook_unreference*(o: ObjectPtr): Bool {.raises: [].} =
  if unlikely(o.isNil): return
  try:
    interface_Object_methodBindPtrCall(RefCounted_unreference, o, nil, addr result)
  except: discard
proc hook_getReferenceCount*(o: ObjectPtr): int32 {.raises: [].} =
  if unlikely(o.isNil): return
  try:
    var ret: Int
    interface_Object_methodBindPtrCall(RefCounted_get_reference_count, o, nil, addr ret)
    return int32 ret
  except: discard

proc load* =
  newStringNameFromString = interfaceVariantGetPtrConstructor(VariantType_StringName, 2)
  newStringFromStringName = interfaceVariantGetPtrConstructor(VariantType_String, 2)

  let RefCounted_name = stringName"RefCounted"
  let RefCounted_reference_name = stringName"reference"
  let RefCounted_unreference_name = stringName"unreference"
  let RefCounted_get_reference_count_name = stringName"get_reference_count"

  RefCounted_reference = interface_ClassDB_getMethodBind(addr RefCounted_name, addr RefCounted_reference_name, 2240911060)
  RefCounted_unreference = interface_ClassDB_getMethodBind(addr RefCounted_name, addr RefCounted_unreference_name, 2240911060)
  RefCounted_get_reference_count = interface_ClassDB_getMethodBind(addr RefCounted_name, addr RefCounted_get_reference_count_name, 3905245786)

  let String_length_name = stringName"length"
  String_length = interface_Variant_getPtrBuiltinMethod(VariantType_String, addr String_length_name, 3173160232)