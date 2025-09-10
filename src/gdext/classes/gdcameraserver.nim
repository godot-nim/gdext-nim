{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject
export CameraServer

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

proc feeds*(self: CameraServer): TypedArray[gdref CameraFeed] =
  expandMethodBind(className CameraServer, "feeds", 2915620761)
  var ret: encoded TypedArray[gdref CameraFeed]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[gdref CameraFeed])

proc addFeed*(self: CameraServer; feed: gdref CameraFeed): void =
  expandMethodBind(className CameraServer, "add_feed", 3204782488)
  methodbind.ptrcall(self, [getPtr feed])

proc removeFeed*(self: CameraServer; feed: gdref CameraFeed): void =
  expandMethodBind(className CameraServer, "remove_feed", 3204782488)
  methodbind.ptrcall(self, [getPtr feed])
