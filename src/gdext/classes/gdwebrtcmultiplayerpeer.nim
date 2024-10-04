{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdmultiplayerpeer; export gdmultiplayerpeer

proc createServer*(self: WebRtcMultiplayerPeer; channelsConfig: Array = gdarray()): Error =
  expandMethodBind(className WebRtcMultiplayerPeer, "create_server", 2865356025)
  var `?param` = [getPtr channelsConfig]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc createClient*(self: WebRtcMultiplayerPeer; peerId: int32; channelsConfig: Array = gdarray()): Error =
  expandMethodBind(className WebRtcMultiplayerPeer, "create_client", 2641732907)
  var `?param` = [getPtr peerId, getPtr channelsConfig]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc createMesh*(self: WebRtcMultiplayerPeer; peerId: int32; channelsConfig: Array = gdarray()): Error =
  expandMethodBind(className WebRtcMultiplayerPeer, "create_mesh", 2641732907)
  var `?param` = [getPtr peerId, getPtr channelsConfig]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc addPeer*(self: WebRtcMultiplayerPeer; peer: gdref WebRtcPeerConnection; peerId: int32; unreliableLifetime: int32 = 1): Error =
  expandMethodBind(className WebRtcMultiplayerPeer, "add_peer", 4078953270)
  var `?param` = [getPtr peer, getPtr peerId, getPtr unreliableLifetime]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc removePeer*(self: WebRtcMultiplayerPeer; peerId: int32): void =
  expandMethodBind(className WebRtcMultiplayerPeer, "remove_peer", 1286410249)
  var `?param` = [getPtr peerId]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasPeer*(self: WebRtcMultiplayerPeer; peerId: int32): bool =
  expandMethodBind(className WebRtcMultiplayerPeer, "has_peer", 3067735520)
  var `?param` = [getPtr peerId]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getPeer*(self: WebRtcMultiplayerPeer; peerId: int32): Dictionary =
  expandMethodBind(className WebRtcMultiplayerPeer, "get_peer", 3554694381)
  var `?param` = [getPtr peerId]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc getPeers*(self: WebRtcMultiplayerPeer): Dictionary =
  expandMethodBind(className WebRtcMultiplayerPeer, "get_peers", 2382534195)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

const WebRtcMultiplayerPeer_vmap =
  MultiplayerPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[WebRtcMultiplayerPeer]): Table[string, string] = WebRtcMultiplayerPeer_vmap