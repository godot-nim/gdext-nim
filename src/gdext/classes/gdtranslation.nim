{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

method getPluralMessage*(self: Translation; srcMessage: StringName; srcPluralMessage: StringName; n: int32; context: StringName): StringName {.base.} = (discard)
proc getPluralMessage(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Translation](p_instance).getPluralMessage(p_args[0].decode(StringName), p_args[1].decode(StringName), p_args[2].decode(int32), p_args[3].decode(StringName)).encode(r_ret)
template getPluralMessage_bind*(_: typedesc[Translation]): ClassCallVirtual = getPluralMessage

method getMessage*(self: Translation; srcMessage: StringName; context: StringName): StringName {.base.} = (discard)
proc getMessage(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Translation](p_instance).getMessage(p_args[0].decode(StringName), p_args[1].decode(StringName)).encode(r_ret)
template getMessage_bind*(_: typedesc[Translation]): ClassCallVirtual = getMessage

proc setLocale*(self: Translation; locale: String): void =
  expandMethodBind(className Translation, "set_locale", 83702148)
  methodbind.ptrcall(self, [getPtr locale])

proc getLocale*(self: Translation): String =
  expandMethodBind(className Translation, "get_locale", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc addMessage*(self: Translation; srcMessage: StringName; xlatedMessage: StringName; context: StringName = stringName ""): void =
  expandMethodBind(className Translation, "add_message", 971803314)
  methodbind.ptrcall(self, [getPtr srcMessage, getPtr xlatedMessage, getPtr context])

proc addPluralMessage*(self: Translation; srcMessage: StringName; xlatedMessages: PackedStringArray; context: StringName = stringName ""): void =
  expandMethodBind(className Translation, "add_plural_message", 360316719)
  methodbind.ptrcall(self, [getPtr srcMessage, getPtr xlatedMessages, getPtr context])

proc getMessage*(self: Translation; srcMessage: StringName; context: StringName = stringName ""): StringName =
  expandMethodBind(className Translation, "get_message", 58037827)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr srcMessage, getPtr context], addr ret)
  (addr ret).decode_result(StringName)

proc getPluralMessage*(self: Translation; srcMessage: StringName; srcPluralMessage: StringName; n: int32; context: StringName = stringName ""): StringName =
  expandMethodBind(className Translation, "get_plural_message", 1333931916)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr srcMessage, getPtr srcPluralMessage, getPtr n, getPtr context], addr ret)
  (addr ret).decode_result(StringName)

proc eraseMessage*(self: Translation; srcMessage: StringName; context: StringName = stringName ""): void =
  expandMethodBind(className Translation, "erase_message", 3919944288)
  methodbind.ptrcall(self, [getPtr srcMessage, getPtr context])

proc getMessageList*(self: Translation): PackedStringArray =
  expandMethodBind(className Translation, "get_message_list", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getTranslatedMessageList*(self: Translation): PackedStringArray =
  expandMethodBind(className Translation, "get_translated_message_list", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getMessageCount*(self: Translation): int32 =
  expandMethodBind(className Translation, "get_message_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

template messages*(self: Translation): untyped = self.getMessages()
template `messages=`*(self: Translation; value) = self.setMessages(value)

template locale*(self: Translation): untyped = self.getLocale()
template `locale=`*(self: Translation; value) = self.setLocale(value)

const Translation_vmap =
  Resource.vmap.concat toTable {
    "getpluralmessage" : "_get_plural_message",
    "getmessage" : "_get_message",
    }
template vmap*(_: typedesc[Translation]): Table[string, string] = Translation_vmap