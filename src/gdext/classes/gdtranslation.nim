{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Translation, Resource)

method getPluralMessage*(self: Translation; srcMessage: StringName; srcPluralMessage: StringName; n: int32; context: StringName): StringName {.base.} = (discard)
proc registerVirtual_getPluralMessage*[T: Translation](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_plural_message"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Translation](p_instance).getPluralMessage(p_args[0].decode(StringName), p_args[1].decode(StringName), p_args[2].decode(int32), p_args[3].decode(StringName)).encode(r_ret)

method getMessage*(self: Translation; srcMessage: StringName; context: StringName): StringName {.base.} = (discard)
proc registerVirtual_getMessage*[T: Translation](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_message"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Translation](p_instance).getMessage(p_args[0].decode(StringName), p_args[1].decode(StringName)).encode(r_ret)

proc setLocale*(self: Translation; locale: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Translation, "set_locale", 83702148)
  methodbind.ptrcall(self, [getPtr locale], void)

proc getLocale*(self: Translation): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Translation, "get_locale", 201670096)
  methodbind.ptrcall(self, [], String)

proc addMessage*(self: Translation; srcMessage: StringName; xlatedMessage: StringName; context: StringName = default(StringName)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Translation, "add_message", 3898530326)
  methodbind.ptrcall(self, [getPtr srcMessage, getPtr xlatedMessage, getPtr context], void)

proc addPluralMessage*(self: Translation; srcMessage: StringName; xlatedMessages: PackedStringArray; context: StringName = default(StringName)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Translation, "add_plural_message", 2356982266)
  methodbind.ptrcall(self, [getPtr srcMessage, getPtr xlatedMessages, getPtr context], void)

proc getMessage*(self: Translation; srcMessage: StringName; context: StringName = default(StringName)): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Translation, "get_message", 1829228469)
  methodbind.ptrcall(self, [getPtr srcMessage, getPtr context], StringName)

proc getPluralMessage*(self: Translation; srcMessage: StringName; srcPluralMessage: StringName; n: int32; context: StringName = default(StringName)): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Translation, "get_plural_message", 229954002)
  methodbind.ptrcall(self, [getPtr srcMessage, getPtr srcPluralMessage, getPtr n, getPtr context], StringName)

proc eraseMessage*(self: Translation; srcMessage: StringName; context: StringName = default(StringName)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Translation, "erase_message", 3959009644)
  methodbind.ptrcall(self, [getPtr srcMessage, getPtr context], void)

proc getMessageList*(self: Translation): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Translation, "get_message_list", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getTranslatedMessageList*(self: Translation): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Translation, "get_translated_message_list", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getMessageCount*(self: Translation): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Translation, "get_message_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

template messages*(self: Translation): untyped = self.getMessages()
template `messages=`*(self: Translation; value) = self.setMessages(value)

template locale*(self: Translation): untyped = self.getLocale()
template `locale=`*(self: Translation; value) = self.setLocale(value)
