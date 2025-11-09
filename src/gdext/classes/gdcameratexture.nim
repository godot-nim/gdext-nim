{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(CameraTexture, Texture2D)

proc setCameraFeedId*(self: CameraTexture; feedId: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraTexture, "set_camera_feed_id", 1286410249)
  methodbind.ptrcall(self, [getPtr feedId], void)

proc getCameraFeedId*(self: CameraTexture): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraTexture, "get_camera_feed_id", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setWhichFeed*(self: CameraTexture; whichFeed: CameraServer_FeedImage): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraTexture, "set_which_feed", 1595299230)
  methodbind.ptrcall(self, [getPtr whichFeed], void)

proc getWhichFeed*(self: CameraTexture): CameraServer_FeedImage =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraTexture, "get_which_feed", 91039457)
  methodbind.ptrcall(self, [], CameraServer_FeedImage)

proc setCameraActive*(self: CameraTexture; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraTexture, "set_camera_active", 2586408642)
  methodbind.ptrcall(self, [getPtr active], void)

proc getCameraActive*(self: CameraTexture): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraTexture, "get_camera_active", 36873697)
  methodbind.ptrcall(self, [], bool)

template cameraFeedId*(self: CameraTexture): untyped = self.getCameraFeedId()
template `cameraFeedId=`*(self: CameraTexture; value) = self.setCameraFeedId(value)

template whichFeed*(self: CameraTexture): untyped = self.getWhichFeed()
template `whichFeed=`*(self: CameraTexture; value) = self.setWhichFeed(value)

template cameraIsActive*(self: CameraTexture): untyped = self.getCameraActive()
template `cameraIsActive=`*(self: CameraTexture; value) = self.setCameraActive(value)
