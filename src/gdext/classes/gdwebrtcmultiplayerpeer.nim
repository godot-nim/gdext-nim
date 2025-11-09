{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmultiplayerpeer; export gdmultiplayerpeer

expandOnClassImported(WebRTCMultiplayerPeer, MultiplayerPeer)

proc createServer*(self: WebRTCMultiplayerPeer; channelsConfig: Array = newArray()): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCMultiplayerPeer, "create_server", 2865356025)
  methodbind.ptrcall(self, [getPtr channelsConfig], Error)

proc createClient*(self: WebRTCMultiplayerPeer; peerId: int32; channelsConfig: Array = newArray()): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCMultiplayerPeer, "create_client", 2641732907)
  methodbind.ptrcall(self, [getPtr peerId, getPtr channelsConfig], Error)

proc createMesh*(self: WebRTCMultiplayerPeer; peerId: int32; channelsConfig: Array = newArray()): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCMultiplayerPeer, "create_mesh", 2641732907)
  methodbind.ptrcall(self, [getPtr peerId, getPtr channelsConfig], Error)

proc addPeer*(self: WebRTCMultiplayerPeer; peer: gdref WebRTCPeerConnection; peerId: int32; unreliableLifetime: int32 = 1): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCMultiplayerPeer, "add_peer", 4078953270)
  methodbind.ptrcall(self, [getPtr peer, getPtr peerId, getPtr unreliableLifetime], Error)

proc removePeer*(self: WebRTCMultiplayerPeer; peerId: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCMultiplayerPeer, "remove_peer", 1286410249)
  methodbind.ptrcall(self, [getPtr peerId], void)

proc hasPeer*(self: WebRTCMultiplayerPeer; peerId: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCMultiplayerPeer, "has_peer", 3067735520)
  methodbind.ptrcall(self, [getPtr peerId], bool)

proc getPeer*(self: WebRTCMultiplayerPeer; peerId: int32): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCMultiplayerPeer, "get_peer", 3554694381)
  methodbind.ptrcall(self, [getPtr peerId], Dictionary)

proc getPeers*(self: WebRTCMultiplayerPeer): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCMultiplayerPeer, "get_peers", 2382534195)
  methodbind.ptrcall(self, [], Dictionary)
