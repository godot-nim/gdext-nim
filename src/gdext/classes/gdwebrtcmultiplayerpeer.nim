{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmultiplayerpeer; export gdmultiplayerpeer

proc createServer*(self: WebRTCMultiplayerPeer; channelsConfig: Array = gdarray()): Error =
  expandMethodBind(className WebRTCMultiplayerPeer, "create_server", 2865356025)
  var `?param` = [getPtr channelsConfig]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc createClient*(self: WebRTCMultiplayerPeer; peerId: int32; channelsConfig: Array = gdarray()): Error =
  expandMethodBind(className WebRTCMultiplayerPeer, "create_client", 2641732907)
  var `?param` = [getPtr peerId, getPtr channelsConfig]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc createMesh*(self: WebRTCMultiplayerPeer; peerId: int32; channelsConfig: Array = gdarray()): Error =
  expandMethodBind(className WebRTCMultiplayerPeer, "create_mesh", 2641732907)
  var `?param` = [getPtr peerId, getPtr channelsConfig]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc addPeer*(self: WebRTCMultiplayerPeer; peer: gdref WebRTCPeerConnection; peerId: int32; unreliableLifetime: int32 = 1): Error =
  expandMethodBind(className WebRTCMultiplayerPeer, "add_peer", 4078953270)
  var `?param` = [getPtr peer, getPtr peerId, getPtr unreliableLifetime]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc removePeer*(self: WebRTCMultiplayerPeer; peerId: int32): void =
  expandMethodBind(className WebRTCMultiplayerPeer, "remove_peer", 1286410249)
  var `?param` = [getPtr peerId]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasPeer*(self: WebRTCMultiplayerPeer; peerId: int32): bool =
  expandMethodBind(className WebRTCMultiplayerPeer, "has_peer", 3067735520)
  var `?param` = [getPtr peerId]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getPeer*(self: WebRTCMultiplayerPeer; peerId: int32): Dictionary =
  expandMethodBind(className WebRTCMultiplayerPeer, "get_peer", 3554694381)
  var `?param` = [getPtr peerId]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc getPeers*(self: WebRTCMultiplayerPeer): Dictionary =
  expandMethodBind(className WebRTCMultiplayerPeer, "get_peers", 2382534195)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

const WebRTCMultiplayerPeer_vmap =
  MultiplayerPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[WebRTCMultiplayerPeer]): Table[string, string] = WebRTCMultiplayerPeer_vmap