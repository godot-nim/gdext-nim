{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

proc getClass*(self: Object): String =
  expandMethodBind(className Object, "get_class", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc isClass*(self: Object; class: String): bool =
  expandMethodBind(className Object, "is_class", 3927539163)
  var `?param` = [getPtr class]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc set*(self: Object; property: StringName; value: Variant): void =
  expandMethodBind(className Object, "set", 3776071444)
  var `?param` = [getPtr property, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc get*(self: Object; property: StringName): Variant =
  expandMethodBind(className Object, "get", 2760726917)
  var `?param` = [getPtr property]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setIndexed*(self: Object; propertyPath: NodePath; value: Variant): void =
  expandMethodBind(className Object, "set_indexed", 3500910842)
  var `?param` = [getPtr propertyPath, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIndexed*(self: Object; propertyPath: NodePath): Variant =
  expandMethodBind(className Object, "get_indexed", 4006125091)
  var `?param` = [getPtr propertyPath]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc getPropertyList*(self: Object): TypedArray[Dictionary] =
  expandMethodBind(className Object, "get_property_list", 3995934104)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc getMethodList*(self: Object): TypedArray[Dictionary] =
  expandMethodBind(className Object, "get_method_list", 3995934104)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc propertyCanRevert*(self: Object; property: StringName): bool =
  expandMethodBind(className Object, "property_can_revert", 2619796661)
  var `?param` = [getPtr property]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc propertyGetRevert*(self: Object; property: StringName): Variant =
  expandMethodBind(className Object, "property_get_revert", 2760726917)
  var `?param` = [getPtr property]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc notification*(self: Object; what: int32; reversed: bool = false): void =
  expandMethodBind(className Object, "notification", 4023243586)
  var `?param` = [getPtr what, getPtr reversed]
  methodbind.ptrcall(self, addr `?param`[0])

proc toString*(self: Object): String =
  expandMethodBind(className Object, "to_string", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getInstanceId*(self: Object): uint64 =
  expandMethodBind(className Object, "get_instance_id", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc setScript*(self: Object; script: Variant): void =
  expandMethodBind(className Object, "set_script", 1114965689)
  var `?param` = [getPtr script]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScript*(self: Object): Variant =
  expandMethodBind(className Object, "get_script", 1214101251)
  var ret: encoded Variant
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Variant)

proc setMeta*(self: Object; name: StringName; value: Variant): void =
  expandMethodBind(className Object, "set_meta", 3776071444)
  var `?param` = [getPtr name, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeMeta*(self: Object; name: StringName): void =
  expandMethodBind(className Object, "remove_meta", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMeta*(self: Object; name: StringName; default: Variant = default(Variant)): Variant =
  expandMethodBind(className Object, "get_meta", 3990617847)
  var `?param` = [getPtr name, getPtr default]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc hasMeta*(self: Object; name: StringName): bool =
  expandMethodBind(className Object, "has_meta", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getMetaList*(self: Object): TypedArray[StringName] =
  expandMethodBind(className Object, "get_meta_list", 3995934104)
  var ret: encoded TypedArray[StringName]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[StringName])

proc addUserSignal*(self: Object; signal: String; arguments: Array = gdarray()): void =
  expandMethodBind(className Object, "add_user_signal", 85656714)
  var `?param` = [getPtr signal, getPtr arguments]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasUserSignal*(self: Object; signal: StringName): bool =
  expandMethodBind(className Object, "has_user_signal", 2619796661)
  var `?param` = [getPtr signal]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc removeUserSignal*(self: Object; signal: StringName): void =
  expandMethodBind(className Object, "remove_user_signal", 3304788590)
  var `?param` = [getPtr signal]
  methodbind.ptrcall(self, addr `?param`[0])

proc emitSignal*(self: Object; signal: Variant; args: varargs[Variant]): Error =
  expandMethodBind(className Object, "emit_signal", 4047867050)
  var `?param` = newSeqOfCap[VariantPtr](1+args.len)
  `?param`.add [getTypedPtr signal]
  methodbind.call(self, `?param`, args).get(Error)
template emitSignal*(self: Object; signal: StringName; args: varargs[Variant]): Error =
  emitSignal(self, variant signal, args)

proc call*(self: Object; `method`: Variant; args: varargs[Variant]): Variant =
  expandMethodBind(className Object, "call", 3400424181)
  var `?param` = newSeqOfCap[VariantPtr](1+args.len)
  `?param`.add [getTypedPtr `method`]
  methodbind.call(self, `?param`, args).get(Variant)
template call*(self: Object; `method`: StringName; args: varargs[Variant]): Variant =
  call(self, variant `method`, args)

proc callDeferred*(self: Object; `method`: Variant; args: varargs[Variant]): Variant =
  expandMethodBind(className Object, "call_deferred", 3400424181)
  var `?param` = newSeqOfCap[VariantPtr](1+args.len)
  `?param`.add [getTypedPtr `method`]
  methodbind.call(self, `?param`, args).get(Variant)
template callDeferred*(self: Object; `method`: StringName; args: varargs[Variant]): Variant =
  callDeferred(self, variant `method`, args)

proc setDeferred*(self: Object; property: StringName; value: Variant): void =
  expandMethodBind(className Object, "set_deferred", 3776071444)
  var `?param` = [getPtr property, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc callv*(self: Object; `method`: StringName; argArray: Array): Variant =
  expandMethodBind(className Object, "callv", 1260104456)
  var `?param` = [getPtr `method`, getPtr argArray]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc hasMethod*(self: Object; `method`: StringName): bool =
  expandMethodBind(className Object, "has_method", 2619796661)
  var `?param` = [getPtr `method`]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getMethodArgumentCount*(self: Object; `method`: StringName): int32 =
  expandMethodBind(className Object, "get_method_argument_count", 2458036349)
  var `?param` = [getPtr `method`]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc hasSignal*(self: Object; signal: StringName): bool =
  expandMethodBind(className Object, "has_signal", 2619796661)
  var `?param` = [getPtr signal]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getSignalList*(self: Object): TypedArray[Dictionary] =
  expandMethodBind(className Object, "get_signal_list", 3995934104)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc getSignalConnectionList*(self: Object; signal: StringName): TypedArray[Dictionary] =
  expandMethodBind(className Object, "get_signal_connection_list", 3147814860)
  var `?param` = [getPtr signal]
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc getIncomingConnections*(self: Object): TypedArray[Dictionary] =
  expandMethodBind(className Object, "get_incoming_connections", 3995934104)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc connect*(self: Object; signal: StringName; callable: Callable; flags: uint32 = 0'u32): Error =
  expandMethodBind(className Object, "connect", 1518946055)
  var `?param` = [getPtr signal, getPtr callable, getPtr flags]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc disconnect*(self: Object; signal: StringName; callable: Callable): void =
  expandMethodBind(className Object, "disconnect", 1874754934)
  var `?param` = [getPtr signal, getPtr callable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isConnected*(self: Object; signal: StringName; callable: Callable): bool =
  expandMethodBind(className Object, "is_connected", 768136979)
  var `?param` = [getPtr signal, getPtr callable]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setBlockSignals*(self: Object; enable: bool): void =
  expandMethodBind(className Object, "set_block_signals", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isBlockingSignals*(self: Object): bool =
  expandMethodBind(className Object, "is_blocking_signals", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc notifyPropertyListChanged*(self: Object): void =
  expandMethodBind(className Object, "notify_property_list_changed", 3218959716)
  methodbind.ptrcall(self, nil)

proc setMessageTranslation*(self: Object; enable: bool): void =
  expandMethodBind(className Object, "set_message_translation", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc canTranslateMessages*(self: Object): bool =
  expandMethodBind(className Object, "can_translate_messages", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc tr*(self: Object; message: StringName; context: StringName = stringName ""): String =
  expandMethodBind(className Object, "tr", 2475554935)
  var `?param` = [getPtr message, getPtr context]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc trN*(self: Object; message: StringName; pluralMessage: StringName; n: int32; context: StringName = stringName ""): String =
  expandMethodBind(className Object, "tr_n", 4021311862)
  var `?param` = [getPtr message, getPtr pluralMessage, getPtr n, getPtr context]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc isQueuedForDeletion*(self: Object): bool =
  expandMethodBind(className Object, "is_queued_for_deletion", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc cancelFree*(self: Object): void =
  expandMethodBind(className Object, "cancel_free", 3218959716)
  methodbind.ptrcall(self, nil)

const Object_vmap =
  initTable[string, string]()
template vmap*(_: typedesc[Object]): Table[string, string] = Object_vmap

proc scriptChanged*(self: Object): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("script_changed")
  self.emitSignal(signalname)

proc propertyListChanged*(self: Object): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_list_changed")
  self.emitSignal(signalname)