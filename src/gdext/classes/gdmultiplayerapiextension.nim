{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdmultiplayerapi; export gdmultiplayerapi

method poll*(self: MultiplayerApiExtension): Error {.base.} = (discard)
proc poll(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerApiExtension](p_instance).poll().encode(r_ret)
template poll_bind*(_: typedesc[MultiplayerApiExtension]): ClassCallVirtual = poll

method setMultiplayerPeer*(self: MultiplayerApiExtension; multiplayerPeer: gdref MultiplayerPeer): void {.base.} = (discard)
proc setMultiplayerPeer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerApiExtension](p_instance).setMultiplayerPeer(p_args[0].decode(gdref MultiplayerPeer))
template setMultiplayerPeer_bind*(_: typedesc[MultiplayerApiExtension]): ClassCallVirtual = setMultiplayerPeer

method getMultiplayerPeer*(self: MultiplayerApiExtension): gdref MultiplayerPeer {.base.} = (discard)
proc getMultiplayerPeer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerApiExtension](p_instance).getMultiplayerPeer().encode(r_ret)
template getMultiplayerPeer_bind*(_: typedesc[MultiplayerApiExtension]): ClassCallVirtual = getMultiplayerPeer

method getUniqueId*(self: MultiplayerApiExtension): int32 {.base.} = (discard)
proc getUniqueId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerApiExtension](p_instance).getUniqueId().encode(r_ret)
template getUniqueId_bind*(_: typedesc[MultiplayerApiExtension]): ClassCallVirtual = getUniqueId

method getPeerIds*(self: MultiplayerApiExtension): PackedInt32Array {.base.} = (discard)
proc getPeerIds(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerApiExtension](p_instance).getPeerIds().encode(r_ret)
template getPeerIds_bind*(_: typedesc[MultiplayerApiExtension]): ClassCallVirtual = getPeerIds

method rpc*(self: MultiplayerApiExtension; peer: int32; `object`: Object; `method`: StringName; args: Array): Error {.base.} = (discard)
proc rpc(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerApiExtension](p_instance).rpc(p_args[0].decode(int32), p_args[1].decode(Object), p_args[2].decode(StringName), p_args[3].decode(Array)).encode(r_ret)
template rpc_bind*(_: typedesc[MultiplayerApiExtension]): ClassCallVirtual = rpc

method getRemoteSenderId*(self: MultiplayerApiExtension): int32 {.base.} = (discard)
proc getRemoteSenderId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerApiExtension](p_instance).getRemoteSenderId().encode(r_ret)
template getRemoteSenderId_bind*(_: typedesc[MultiplayerApiExtension]): ClassCallVirtual = getRemoteSenderId

method objectConfigurationAdd*(self: MultiplayerApiExtension; `object`: Object; configuration: Variant): Error {.base.} = (discard)
proc objectConfigurationAdd(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerApiExtension](p_instance).objectConfigurationAdd(p_args[0].decode(Object), p_args[1].decode(Variant)).encode(r_ret)
template objectConfigurationAdd_bind*(_: typedesc[MultiplayerApiExtension]): ClassCallVirtual = objectConfigurationAdd

method objectConfigurationRemove*(self: MultiplayerApiExtension; `object`: Object; configuration: Variant): Error {.base.} = (discard)
proc objectConfigurationRemove(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerApiExtension](p_instance).objectConfigurationRemove(p_args[0].decode(Object), p_args[1].decode(Variant)).encode(r_ret)
template objectConfigurationRemove_bind*(_: typedesc[MultiplayerApiExtension]): ClassCallVirtual = objectConfigurationRemove

const MultiplayerApiExtension_vmap =
  MultiplayerApi.vmap.concat toTable {
    "poll" : "_poll",
    "setmultiplayerpeer" : "_set_multiplayer_peer",
    "getmultiplayerpeer" : "_get_multiplayer_peer",
    "getuniqueid" : "_get_unique_id",
    "getpeerids" : "_get_peer_ids",
    "rpc" : "_rpc",
    "getremotesenderid" : "_get_remote_sender_id",
    "objectconfigurationadd" : "_object_configuration_add",
    "objectconfigurationremove" : "_object_configuration_remove",
    }
template vmap*(_: typedesc[MultiplayerApiExtension]): Table[string, string] = MultiplayerApiExtension_vmap