{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

expandOnClassImported(Object, RootObj)

const NotificationPostinitialize* = 0
const NotificationPredelete* = 1
const NotificationExtensionReloaded* = 2

proc getClass*(self: Object): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "get_class", 201670096)
  methodbind.ptrcall(self, [], String)

proc isClass*(self: Object; class: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "is_class", 3927539163)
  methodbind.ptrcall(self, [getPtr class], bool)

proc set*(self: Object; property: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "set", 3776071444)
  methodbind.ptrcall(self, [getPtr property, getPtr value], void)

proc get*(self: Object; property: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "get", 2760726917)
  methodbind.ptrcall(self, [getPtr property], Variant)

proc setIndexed*(self: Object; propertyPath: NodePath; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "set_indexed", 3500910842)
  methodbind.ptrcall(self, [getPtr propertyPath, getPtr value], void)

proc getIndexed*(self: Object; propertyPath: NodePath): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "get_indexed", 4006125091)
  methodbind.ptrcall(self, [getPtr propertyPath], Variant)

proc getPropertyList*(self: Object): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "get_property_list", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Dictionary])

proc getMethodList*(self: Object): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "get_method_list", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Dictionary])

proc propertyCanRevert*(self: Object; property: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "property_can_revert", 2619796661)
  methodbind.ptrcall(self, [getPtr property], bool)

proc propertyGetRevert*(self: Object; property: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "property_get_revert", 2760726917)
  methodbind.ptrcall(self, [getPtr property], Variant)

proc notification*(self: Object; what: int32; reversed: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "notification", 4023243586)
  methodbind.ptrcall(self, [getPtr what, getPtr reversed], void)

proc toString*(self: Object): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "to_string", 2841200299)
  methodbind.ptrcall(self, [], String)

proc getInstanceId*(self: Object): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "get_instance_id", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc setScript*(self: Object; script: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "set_script", 1114965689)
  methodbind.ptrcall(self, [getPtr script], void)

proc getScript*(self: Object): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "get_script", 1214101251)
  methodbind.ptrcall(self, [], Variant)

proc setMeta*(self: Object; name: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "set_meta", 3776071444)
  methodbind.ptrcall(self, [getPtr name, getPtr value], void)

proc removeMeta*(self: Object; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "remove_meta", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc getMeta*(self: Object; name: StringName; default: Variant = default(Variant)): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "get_meta", 3990617847)
  methodbind.ptrcall(self, [getPtr name, getPtr default], Variant)

proc hasMeta*(self: Object; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "has_meta", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc getMetaList*(self: Object): TypedArray[StringName] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "get_meta_list", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[StringName])

proc addUserSignal*(self: Object; signal: String; arguments: Array = newArray()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "add_user_signal", 85656714)
  methodbind.ptrcall(self, [getPtr signal, getPtr arguments], void)

proc hasUserSignal*(self: Object; signal: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "has_user_signal", 2619796661)
  methodbind.ptrcall(self, [getPtr signal], bool)

proc removeUserSignal*(self: Object; signal: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "remove_user_signal", 3304788590)
  methodbind.ptrcall(self, [getPtr signal], void)

proc emitSignal*(self: Object; signal: Variant; args: varargs[Variant, variant]): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "emit_signal", 4047867050)
  var `?param` = newSeqOfCap[VariantPtr](1+args.len)
  `?param`.add [getTypedPtr signal]
  methodbind.call(self, `?param`, args).get(Error)
template emitSignal*(self: Object; signal: StringName; args: varargs[Variant, variant]): Error =
  emitSignal(self, variant signal, args)

proc call*(self: Object; `method`: Variant; args: varargs[Variant, variant]): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "call", 3400424181)
  var `?param` = newSeqOfCap[VariantPtr](1+args.len)
  `?param`.add [getTypedPtr `method`]
  methodbind.call(self, `?param`, args).get(Variant)
template call*(self: Object; `method`: StringName; args: varargs[Variant, variant]): Variant =
  call(self, variant `method`, args)

proc callDeferred*(self: Object; `method`: Variant; args: varargs[Variant, variant]): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "call_deferred", 3400424181)
  var `?param` = newSeqOfCap[VariantPtr](1+args.len)
  `?param`.add [getTypedPtr `method`]
  methodbind.call(self, `?param`, args).get(Variant)
template callDeferred*(self: Object; `method`: StringName; args: varargs[Variant, variant]): Variant =
  callDeferred(self, variant `method`, args)

proc setDeferred*(self: Object; property: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "set_deferred", 3776071444)
  methodbind.ptrcall(self, [getPtr property, getPtr value], void)

proc callv*(self: Object; `method`: StringName; argArray: Array): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "callv", 1260104456)
  methodbind.ptrcall(self, [getPtr `method`, getPtr argArray], Variant)

proc hasMethod*(self: Object; `method`: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "has_method", 2619796661)
  methodbind.ptrcall(self, [getPtr `method`], bool)

proc getMethodArgumentCount*(self: Object; `method`: StringName): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "get_method_argument_count", 2458036349)
  methodbind.ptrcall(self, [getPtr `method`], int32)

proc hasSignal*(self: Object; signal: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "has_signal", 2619796661)
  methodbind.ptrcall(self, [getPtr signal], bool)

proc getSignalList*(self: Object): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "get_signal_list", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Dictionary])

proc getSignalConnectionList*(self: Object; signal: StringName): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "get_signal_connection_list", 3147814860)
  methodbind.ptrcall(self, [getPtr signal], TypedArray[Dictionary])

proc getIncomingConnections*(self: Object): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "get_incoming_connections", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Dictionary])

proc connect*(self: Object; signal: StringName; callable: Callable; flags: uint32 = 0'u32): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "connect", 1518946055)
  methodbind.ptrcall(self, [getPtr signal, getPtr callable, getPtr flags], Error)

proc disconnect*(self: Object; signal: StringName; callable: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "disconnect", 1874754934)
  methodbind.ptrcall(self, [getPtr signal, getPtr callable], void)

proc isConnected*(self: Object; signal: StringName; callable: Callable): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "is_connected", 768136979)
  methodbind.ptrcall(self, [getPtr signal, getPtr callable], bool)

proc hasConnections*(self: Object; signal: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "has_connections", 2619796661)
  methodbind.ptrcall(self, [getPtr signal], bool)

proc setBlockSignals*(self: Object; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "set_block_signals", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isBlockingSignals*(self: Object): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "is_blocking_signals", 36873697)
  methodbind.ptrcall(self, [], bool)

proc notifyPropertyListChanged*(self: Object): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "notify_property_list_changed", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setMessageTranslation*(self: Object; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "set_message_translation", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc canTranslateMessages*(self: Object): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "can_translate_messages", 36873697)
  methodbind.ptrcall(self, [], bool)

proc tr*(self: Object; message: StringName; context: StringName = default(StringName)): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "tr", 1195764410)
  methodbind.ptrcall(self, [getPtr message, getPtr context], String)

proc trN*(self: Object; message: StringName; pluralMessage: StringName; n: int32; context: StringName = default(StringName)): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "tr_n", 162698058)
  methodbind.ptrcall(self, [getPtr message, getPtr pluralMessage, getPtr n, getPtr context], String)

proc getTranslationDomain*(self: Object): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "get_translation_domain", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setTranslationDomain*(self: Object; domain: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "set_translation_domain", 3304788590)
  methodbind.ptrcall(self, [getPtr domain], void)

proc isQueuedForDeletion*(self: Object): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "is_queued_for_deletion", 36873697)
  methodbind.ptrcall(self, [], bool)

proc cancelFree*(self: Object): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Object, "cancel_free", 3218959716)
  methodbind.ptrcall(self, [], void)
