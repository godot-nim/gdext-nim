{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(CameraServer, Object)

proc setMonitoringFeeds*(self: CameraServer; isMonitoringFeeds: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraServer, "set_monitoring_feeds", 2586408642)
  methodbind.ptrcall(self, [getPtr isMonitoringFeeds], void)

proc isMonitoringFeeds*(self: CameraServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraServer, "is_monitoring_feeds", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getFeed*(self: CameraServer; index: int32): gdref CameraFeed =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraServer, "get_feed", 361927068)
  methodbind.ptrcall(self, [getPtr index], gdref CameraFeed)

proc getFeedCount*(self: CameraServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraServer, "get_feed_count", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc feeds*(self: CameraServer): TypedArray[gdref CameraFeed] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraServer, "feeds", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[gdref CameraFeed])

proc addFeed*(self: CameraServer; feed: gdref CameraFeed): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraServer, "add_feed", 3204782488)
  methodbind.ptrcall(self, [getPtr feed], void)

proc removeFeed*(self: CameraServer; feed: gdref CameraFeed): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraServer, "remove_feed", 3204782488)
  methodbind.ptrcall(self, [getPtr feed], void)

template monitoringFeeds*(self: CameraServer): untyped = self.isMonitoringFeeds()
template `monitoringFeeds=`*(self: CameraServer; value) = self.setMonitoringFeeds(value)
