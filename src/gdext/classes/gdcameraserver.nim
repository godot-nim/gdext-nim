{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getFeed*(self: CameraServer; index: int32): gdref CameraFeed =
  expandMethodBind(className CameraServer, "get_feed", 361927068)
  var ret: encoded gdref CameraFeed
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(gdref CameraFeed)

proc getFeedCount*(self: CameraServer): int32 =
  expandMethodBind(className CameraServer, "get_feed_count", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc feeds*(self: CameraServer): TypedArray[CameraFeed] =
  expandMethodBind(className CameraServer, "feeds", 2915620761)
  var ret: encoded TypedArray[CameraFeed]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[CameraFeed])

proc addFeed*(self: CameraServer; feed: gdref CameraFeed): void =
  expandMethodBind(className CameraServer, "add_feed", 3204782488)
  methodbind.ptrcall(self, [getPtr feed])

proc removeFeed*(self: CameraServer; feed: gdref CameraFeed): void =
  expandMethodBind(className CameraServer, "remove_feed", 3204782488)
  methodbind.ptrcall(self, [getPtr feed])

const CameraServer_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CameraServer]): Table[string, string] = CameraServer_vmap

proc cameraFeedAdded*(self: CameraServer; id: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("camera_feed_added")
  let args = [id]
  self.emitSignal(signalname, args)

proc cameraFeedRemoved*(self: CameraServer; id: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("camera_feed_removed")
  let args = [id]
  self.emitSignal(signalname, args)