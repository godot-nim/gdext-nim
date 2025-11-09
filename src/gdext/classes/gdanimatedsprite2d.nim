{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(AnimatedSprite2D, Node2D)

proc setSpriteFrames*(self: AnimatedSprite2D; spriteFrames: gdref SpriteFrames): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "set_sprite_frames", 905781144)
  methodbind.ptrcall(self, [getPtr spriteFrames], void)

proc getSpriteFrames*(self: AnimatedSprite2D): gdref SpriteFrames =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "get_sprite_frames", 3804851214)
  methodbind.ptrcall(self, [], gdref SpriteFrames)

proc setAnimation*(self: AnimatedSprite2D; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "set_animation", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc getAnimation*(self: AnimatedSprite2D): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "get_animation", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setAutoplay*(self: AnimatedSprite2D; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "set_autoplay", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getAutoplay*(self: AnimatedSprite2D): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "get_autoplay", 201670096)
  methodbind.ptrcall(self, [], String)

proc isPlaying*(self: AnimatedSprite2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "is_playing", 36873697)
  methodbind.ptrcall(self, [], bool)

proc play*(self: AnimatedSprite2D; name: StringName = default(StringName); customSpeed: Float = 1.0; fromEnd: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "play", 3269405555)
  methodbind.ptrcall(self, [getPtr name, getPtr customSpeed, getPtr fromEnd], void)

proc playBackwards*(self: AnimatedSprite2D; name: StringName = default(StringName)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "play_backwards", 3323268493)
  methodbind.ptrcall(self, [getPtr name], void)

proc pause*(self: AnimatedSprite2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "pause", 3218959716)
  methodbind.ptrcall(self, [], void)

proc stop*(self: AnimatedSprite2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "stop", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setCentered*(self: AnimatedSprite2D; centered: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "set_centered", 2586408642)
  methodbind.ptrcall(self, [getPtr centered], void)

proc isCentered*(self: AnimatedSprite2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "is_centered", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setOffset*(self: AnimatedSprite2D; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "set_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getOffset*(self: AnimatedSprite2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "get_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setFlipH*(self: AnimatedSprite2D; flipH: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "set_flip_h", 2586408642)
  methodbind.ptrcall(self, [getPtr flipH], void)

proc isFlippedH*(self: AnimatedSprite2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "is_flipped_h", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFlipV*(self: AnimatedSprite2D; flipV: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "set_flip_v", 2586408642)
  methodbind.ptrcall(self, [getPtr flipV], void)

proc isFlippedV*(self: AnimatedSprite2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "is_flipped_v", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFrame*(self: AnimatedSprite2D; frame: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "set_frame", 1286410249)
  methodbind.ptrcall(self, [getPtr frame], void)

proc getFrame*(self: AnimatedSprite2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "get_frame", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setFrameProgress*(self: AnimatedSprite2D; progress: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "set_frame_progress", 373806689)
  methodbind.ptrcall(self, [getPtr progress], void)

proc getFrameProgress*(self: AnimatedSprite2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "get_frame_progress", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFrameAndProgress*(self: AnimatedSprite2D; frame: int32; progress: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "set_frame_and_progress", 1602489585)
  methodbind.ptrcall(self, [getPtr frame, getPtr progress], void)

proc setSpeedScale*(self: AnimatedSprite2D; speedScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "set_speed_scale", 373806689)
  methodbind.ptrcall(self, [getPtr speedScale], void)

proc getSpeedScale*(self: AnimatedSprite2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "get_speed_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getPlayingSpeed*(self: AnimatedSprite2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimatedSprite2D, "get_playing_speed", 1740695150)
  methodbind.ptrcall(self, [], Float)

template spriteFrames*(self: AnimatedSprite2D): untyped = self.getSpriteFrames()
template `spriteFrames=`*(self: AnimatedSprite2D; value) = self.setSpriteFrames(value)

template animation*(self: AnimatedSprite2D): untyped = self.getAnimation()
template `animation=`*(self: AnimatedSprite2D; value) = self.setAnimation(value)

template autoplay*(self: AnimatedSprite2D): untyped = self.getAutoplay()
template `autoplay=`*(self: AnimatedSprite2D; value) = self.setAutoplay(value)

template frame*(self: AnimatedSprite2D): untyped = self.getFrame()
template `frame=`*(self: AnimatedSprite2D; value) = self.setFrame(value)

template frameProgress*(self: AnimatedSprite2D): untyped = self.getFrameProgress()
template `frameProgress=`*(self: AnimatedSprite2D; value) = self.setFrameProgress(value)

template speedScale*(self: AnimatedSprite2D): untyped = self.getSpeedScale()
template `speedScale=`*(self: AnimatedSprite2D; value) = self.setSpeedScale(value)

template centered*(self: AnimatedSprite2D): untyped = self.isCentered()
template `centered=`*(self: AnimatedSprite2D; value) = self.setCentered(value)

template offset*(self: AnimatedSprite2D): untyped = self.getOffset()
template `offset=`*(self: AnimatedSprite2D; value) = self.setOffset(value)

template flipH*(self: AnimatedSprite2D): untyped = self.isFlippedH()
template `flipH=`*(self: AnimatedSprite2D; value) = self.setFlipH(value)

template flipV*(self: AnimatedSprite2D): untyped = self.isFlippedV()
template `flipV=`*(self: AnimatedSprite2D; value) = self.setFlipV(value)
