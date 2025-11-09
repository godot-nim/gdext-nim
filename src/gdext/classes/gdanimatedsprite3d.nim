{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdspritebase3d; export gdspritebase3d

expandOnClassImported(AnimatedSprite3D, SpriteBase3D)

proc setSpriteFrames*(self: AnimatedSprite3D; spriteFrames: gdref SpriteFrames): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "set_sprite_frames", 905781144)
  methodbind.ptrcall(self, [getPtr spriteFrames], void)

proc getSpriteFrames*(self: AnimatedSprite3D): gdref SpriteFrames =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "get_sprite_frames", 3804851214)
  methodbind.ptrcall(self, [], gdref SpriteFrames)

proc setAnimation*(self: AnimatedSprite3D; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "set_animation", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc getAnimation*(self: AnimatedSprite3D): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "get_animation", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setAutoplay*(self: AnimatedSprite3D; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "set_autoplay", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getAutoplay*(self: AnimatedSprite3D): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "get_autoplay", 201670096)
  methodbind.ptrcall(self, [], String)

proc isPlaying*(self: AnimatedSprite3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "is_playing", 36873697)
  methodbind.ptrcall(self, [], bool)

proc play*(self: AnimatedSprite3D; name: StringName = default(StringName); customSpeed: Float = 1.0; fromEnd: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "play", 3269405555)
  methodbind.ptrcall(self, [getPtr name, getPtr customSpeed, getPtr fromEnd], void)

proc playBackwards*(self: AnimatedSprite3D; name: StringName = default(StringName)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "play_backwards", 3323268493)
  methodbind.ptrcall(self, [getPtr name], void)

proc pause*(self: AnimatedSprite3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "pause", 3218959716)
  methodbind.ptrcall(self, [], void)

proc stop*(self: AnimatedSprite3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "stop", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setFrame*(self: AnimatedSprite3D; frame: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "set_frame", 1286410249)
  methodbind.ptrcall(self, [getPtr frame], void)

proc getFrame*(self: AnimatedSprite3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "get_frame", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setFrameProgress*(self: AnimatedSprite3D; progress: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "set_frame_progress", 373806689)
  methodbind.ptrcall(self, [getPtr progress], void)

proc getFrameProgress*(self: AnimatedSprite3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "get_frame_progress", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFrameAndProgress*(self: AnimatedSprite3D; frame: int32; progress: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "set_frame_and_progress", 1602489585)
  methodbind.ptrcall(self, [getPtr frame, getPtr progress], void)

proc setSpeedScale*(self: AnimatedSprite3D; speedScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "set_speed_scale", 373806689)
  methodbind.ptrcall(self, [getPtr speedScale], void)

proc getSpeedScale*(self: AnimatedSprite3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "get_speed_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getPlayingSpeed*(self: AnimatedSprite3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite3D, "get_playing_speed", 1740695150)
  methodbind.ptrcall(self, [], Float)

template spriteFrames*(self: AnimatedSprite3D): untyped = self.getSpriteFrames()
template `spriteFrames=`*(self: AnimatedSprite3D; value) = self.setSpriteFrames(value)

template animation*(self: AnimatedSprite3D): untyped = self.getAnimation()
template `animation=`*(self: AnimatedSprite3D; value) = self.setAnimation(value)

template autoplay*(self: AnimatedSprite3D): untyped = self.getAutoplay()
template `autoplay=`*(self: AnimatedSprite3D; value) = self.setAutoplay(value)

template frame*(self: AnimatedSprite3D): untyped = self.getFrame()
template `frame=`*(self: AnimatedSprite3D; value) = self.setFrame(value)

template frameProgress*(self: AnimatedSprite3D): untyped = self.getFrameProgress()
template `frameProgress=`*(self: AnimatedSprite3D; value) = self.setFrameProgress(value)

template speedScale*(self: AnimatedSprite3D): untyped = self.getSpeedScale()
template `speedScale=`*(self: AnimatedSprite3D; value) = self.setSpeedScale(value)
