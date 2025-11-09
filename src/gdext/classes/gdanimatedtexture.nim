{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(AnimatedTexture, Texture2D)

const MaxFrames* = 256

proc setFrames*(self: AnimatedTexture; frames: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedTexture, "set_frames", 1286410249)
  methodbind.ptrcall(self, [getPtr frames], void)

proc getFrames*(self: AnimatedTexture): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedTexture, "get_frames", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setCurrentFrame*(self: AnimatedTexture; frame: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedTexture, "set_current_frame", 1286410249)
  methodbind.ptrcall(self, [getPtr frame], void)

proc getCurrentFrame*(self: AnimatedTexture): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedTexture, "get_current_frame", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPause*(self: AnimatedTexture; pause: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedTexture, "set_pause", 2586408642)
  methodbind.ptrcall(self, [getPtr pause], void)

proc getPause*(self: AnimatedTexture): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedTexture, "get_pause", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setOneShot*(self: AnimatedTexture; oneShot: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedTexture, "set_one_shot", 2586408642)
  methodbind.ptrcall(self, [getPtr oneShot], void)

proc getOneShot*(self: AnimatedTexture): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedTexture, "get_one_shot", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSpeedScale*(self: AnimatedTexture; scale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedTexture, "set_speed_scale", 373806689)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getSpeedScale*(self: AnimatedTexture): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedTexture, "get_speed_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFrameTexture*(self: AnimatedTexture; frame: int32; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedTexture, "set_frame_texture", 666127730)
  methodbind.ptrcall(self, [getPtr frame, getPtr texture], void)

proc getFrameTexture*(self: AnimatedTexture; frame: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedTexture, "get_frame_texture", 3536238170)
  methodbind.ptrcall(self, [getPtr frame], gdref Texture2D)

proc setFrameDuration*(self: AnimatedTexture; frame: int32; duration: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedTexture, "set_frame_duration", 1602489585)
  methodbind.ptrcall(self, [getPtr frame, getPtr duration], void)

proc getFrameDuration*(self: AnimatedTexture; frame: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedTexture, "get_frame_duration", 2339986948)
  methodbind.ptrcall(self, [getPtr frame], Float)

template frames*(self: AnimatedTexture): untyped = self.getFrames()
template `frames=`*(self: AnimatedTexture; value) = self.setFrames(value)

template currentFrame*(self: AnimatedTexture): untyped = self.getCurrentFrame()
template `currentFrame=`*(self: AnimatedTexture; value) = self.setCurrentFrame(value)

template pause*(self: AnimatedTexture): untyped = self.getPause()
template `pause=`*(self: AnimatedTexture; value) = self.setPause(value)

template oneShot*(self: AnimatedTexture): untyped = self.getOneShot()
template `oneShot=`*(self: AnimatedTexture; value) = self.setOneShot(value)

template speedScale*(self: AnimatedTexture): untyped = self.getSpeedScale()
template `speedScale=`*(self: AnimatedTexture; value) = self.setSpeedScale(value)
