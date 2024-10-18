{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc getFeed*(self: CameraServer; index: int32): gdref CameraFeed =
  expandMethodBind(className CameraServer, "get_feed", 361927068)
  var `?param` = [getPtr index]
  var ret: encoded gdref CameraFeed
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref CameraFeed)

proc getFeedCount*(self: CameraServer): int32 =
  expandMethodBind(className CameraServer, "get_feed_count", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc feeds*(self: CameraServer): TypedArray[gdref CameraFeed] =
  expandMethodBind(className CameraServer, "feeds", 2915620761)
  var ret: encoded TypedArray[gdref CameraFeed]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[gdref CameraFeed])

proc addFeed*(self: CameraServer; feed: gdref CameraFeed): void =
  expandMethodBind(className CameraServer, "add_feed", 3204782488)
  var `?param` = [getPtr feed]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeFeed*(self: CameraServer; feed: gdref CameraFeed): void =
  expandMethodBind(className CameraServer, "remove_feed", 3204782488)
  var `?param` = [getPtr feed]
  methodbind.ptrcall(self, addr `?param`[0])

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