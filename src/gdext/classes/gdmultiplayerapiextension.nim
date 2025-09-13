{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmultiplayerapi; export gdmultiplayerapi

expandOnClassImported(MultiplayerAPIExtension, MultiplayerAPI)

method poll*(self: MultiplayerAPIExtension): Error {.base.} = (discard)
proc registerVirtual_poll*[T: MultiplayerAPIExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_poll"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerAPIExtension](p_instance).poll().encode(r_ret)

method setMultiplayerPeer*(self: MultiplayerAPIExtension; multiplayerPeer: gdref MultiplayerPeer): void {.base.} = (discard)
proc registerVirtual_setMultiplayerPeer*[T: MultiplayerAPIExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_multiplayer_peer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerAPIExtension](p_instance).setMultiplayerPeer(p_args[0].decode(gdref MultiplayerPeer))

method getMultiplayerPeer*(self: MultiplayerAPIExtension): gdref MultiplayerPeer {.base.} = (discard)
proc registerVirtual_getMultiplayerPeer*[T: MultiplayerAPIExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_multiplayer_peer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerAPIExtension](p_instance).getMultiplayerPeer().encode(r_ret)

method getUniqueId*(self: MultiplayerAPIExtension): int32 {.base.} = (discard)
proc registerVirtual_getUniqueId*[T: MultiplayerAPIExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_unique_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerAPIExtension](p_instance).getUniqueId().encode(r_ret)

method getPeerIds*(self: MultiplayerAPIExtension): PackedInt32Array {.base.} = (discard)
proc registerVirtual_getPeerIds*[T: MultiplayerAPIExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_peer_ids"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerAPIExtension](p_instance).getPeerIds().encode(r_ret)

method rpc*(self: MultiplayerAPIExtension; peer: int32; `object`: Object; `method`: StringName; args: Array): Error {.base.} = (discard)
proc registerVirtual_rpc*[T: MultiplayerAPIExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_rpc"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerAPIExtension](p_instance).rpc(p_args[0].decode(int32), p_args[1].decode(Object), p_args[2].decode(StringName), p_args[3].decode(Array)).encode(r_ret)

method getRemoteSenderId*(self: MultiplayerAPIExtension): int32 {.base.} = (discard)
proc registerVirtual_getRemoteSenderId*[T: MultiplayerAPIExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_remote_sender_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerAPIExtension](p_instance).getRemoteSenderId().encode(r_ret)

method objectConfigurationAdd*(self: MultiplayerAPIExtension; `object`: Object; configuration: Variant): Error {.base.} = (discard)
proc registerVirtual_objectConfigurationAdd*[T: MultiplayerAPIExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_object_configuration_add"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerAPIExtension](p_instance).objectConfigurationAdd(p_args[0].decode(Object), p_args[1].decode(Variant)).encode(r_ret)

method objectConfigurationRemove*(self: MultiplayerAPIExtension; `object`: Object; configuration: Variant): Error {.base.} = (discard)
proc registerVirtual_objectConfigurationRemove*[T: MultiplayerAPIExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_object_configuration_remove"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerAPIExtension](p_instance).objectConfigurationRemove(p_args[0].decode(Object), p_args[1].decode(Variant)).encode(r_ret)
