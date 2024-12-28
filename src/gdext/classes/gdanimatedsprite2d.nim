{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setSpriteFrames*(self: AnimatedSprite2D; spriteFrames: gdref SpriteFrames): void =
  expandMethodBind(className AnimatedSprite2D, "set_sprite_frames", 905781144)
  methodbind.ptrcall(self, [getPtr spriteFrames])

proc getSpriteFrames*(self: AnimatedSprite2D): gdref SpriteFrames =
  expandMethodBind(className AnimatedSprite2D, "get_sprite_frames", 3804851214)
  var ret: encoded gdref SpriteFrames
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref SpriteFrames)

proc setAnimation*(self: AnimatedSprite2D; name: StringName): void =
  expandMethodBind(className AnimatedSprite2D, "set_animation", 3304788590)
  methodbind.ptrcall(self, [getPtr name])

proc getAnimation*(self: AnimatedSprite2D): StringName =
  expandMethodBind(className AnimatedSprite2D, "get_animation", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc setAutoplay*(self: AnimatedSprite2D; name: String): void =
  expandMethodBind(className AnimatedSprite2D, "set_autoplay", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc getAutoplay*(self: AnimatedSprite2D): String =
  expandMethodBind(className AnimatedSprite2D, "get_autoplay", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc isPlaying*(self: AnimatedSprite2D): bool =
  expandMethodBind(className AnimatedSprite2D, "is_playing", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc play*(self: AnimatedSprite2D; name: StringName = stringName ""; customSpeed: Float = 1.0; fromEnd: bool = false): void =
  expandMethodBind(className AnimatedSprite2D, "play", 2372066587)
  methodbind.ptrcall(self, [getPtr name, getPtr customSpeed, getPtr fromEnd])

proc playBackwards*(self: AnimatedSprite2D; name: StringName = stringName ""): void =
  expandMethodBind(className AnimatedSprite2D, "play_backwards", 1421762485)
  methodbind.ptrcall(self, [getPtr name])

proc pause*(self: AnimatedSprite2D): void =
  expandMethodBind(className AnimatedSprite2D, "pause", 3218959716)
  methodbind.ptrcall(self, [])

proc stop*(self: AnimatedSprite2D): void =
  expandMethodBind(className AnimatedSprite2D, "stop", 3218959716)
  methodbind.ptrcall(self, [])

proc setCentered*(self: AnimatedSprite2D; centered: bool): void =
  expandMethodBind(className AnimatedSprite2D, "set_centered", 2586408642)
  methodbind.ptrcall(self, [getPtr centered])

proc isCentered*(self: AnimatedSprite2D): bool =
  expandMethodBind(className AnimatedSprite2D, "is_centered", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setOffset*(self: AnimatedSprite2D; offset: Vector2): void =
  expandMethodBind(className AnimatedSprite2D, "set_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset])

proc getOffset*(self: AnimatedSprite2D): Vector2 =
  expandMethodBind(className AnimatedSprite2D, "get_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setFlipH*(self: AnimatedSprite2D; flipH: bool): void =
  expandMethodBind(className AnimatedSprite2D, "set_flip_h", 2586408642)
  methodbind.ptrcall(self, [getPtr flipH])

proc isFlippedH*(self: AnimatedSprite2D): bool =
  expandMethodBind(className AnimatedSprite2D, "is_flipped_h", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setFlipV*(self: AnimatedSprite2D; flipV: bool): void =
  expandMethodBind(className AnimatedSprite2D, "set_flip_v", 2586408642)
  methodbind.ptrcall(self, [getPtr flipV])

proc isFlippedV*(self: AnimatedSprite2D): bool =
  expandMethodBind(className AnimatedSprite2D, "is_flipped_v", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setFrame*(self: AnimatedSprite2D; frame: int32): void =
  expandMethodBind(className AnimatedSprite2D, "set_frame", 1286410249)
  methodbind.ptrcall(self, [getPtr frame])

proc getFrame*(self: AnimatedSprite2D): int32 =
  expandMethodBind(className AnimatedSprite2D, "get_frame", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setFrameProgress*(self: AnimatedSprite2D; progress: Float): void =
  expandMethodBind(className AnimatedSprite2D, "set_frame_progress", 373806689)
  methodbind.ptrcall(self, [getPtr progress])

proc getFrameProgress*(self: AnimatedSprite2D): Float =
  expandMethodBind(className AnimatedSprite2D, "get_frame_progress", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setFrameAndProgress*(self: AnimatedSprite2D; frame: int32; progress: Float): void =
  expandMethodBind(className AnimatedSprite2D, "set_frame_and_progress", 1602489585)
  methodbind.ptrcall(self, [getPtr frame, getPtr progress])

proc setSpeedScale*(self: AnimatedSprite2D; speedScale: Float): void =
  expandMethodBind(className AnimatedSprite2D, "set_speed_scale", 373806689)
  methodbind.ptrcall(self, [getPtr speedScale])

proc getSpeedScale*(self: AnimatedSprite2D): Float =
  expandMethodBind(className AnimatedSprite2D, "get_speed_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getPlayingSpeed*(self: AnimatedSprite2D): Float =
  expandMethodBind(className AnimatedSprite2D, "get_playing_speed", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

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

const AnimatedSprite2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimatedSprite2D]): Table[string, string] = AnimatedSprite2D_vmap

proc spriteFramesChanged*(self: AnimatedSprite2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("sprite_frames_changed")
  self.emitSignal(signalname)

proc animationChanged*(self: AnimatedSprite2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_changed")
  self.emitSignal(signalname)

proc frameChanged*(self: AnimatedSprite2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("frame_changed")
  self.emitSignal(signalname)

proc animationLooped*(self: AnimatedSprite2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_looped")
  self.emitSignal(signalname)

proc animationFinished*(self: AnimatedSprite2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_finished")
  self.emitSignal(signalname)