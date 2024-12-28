{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdspritebase3d; export gdspritebase3d

proc setSpriteFrames*(self: AnimatedSprite3D; spriteFrames: gdref SpriteFrames): void =
  expandMethodBind(className AnimatedSprite3D, "set_sprite_frames", 905781144)
  methodbind.ptrcall(self, [getPtr spriteFrames])

proc getSpriteFrames*(self: AnimatedSprite3D): gdref SpriteFrames =
  expandMethodBind(className AnimatedSprite3D, "get_sprite_frames", 3804851214)
  var ret: encoded gdref SpriteFrames
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref SpriteFrames)

proc setAnimation*(self: AnimatedSprite3D; name: StringName): void =
  expandMethodBind(className AnimatedSprite3D, "set_animation", 3304788590)
  methodbind.ptrcall(self, [getPtr name])

proc getAnimation*(self: AnimatedSprite3D): StringName =
  expandMethodBind(className AnimatedSprite3D, "get_animation", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc setAutoplay*(self: AnimatedSprite3D; name: String): void =
  expandMethodBind(className AnimatedSprite3D, "set_autoplay", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc getAutoplay*(self: AnimatedSprite3D): String =
  expandMethodBind(className AnimatedSprite3D, "get_autoplay", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc isPlaying*(self: AnimatedSprite3D): bool =
  expandMethodBind(className AnimatedSprite3D, "is_playing", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc play*(self: AnimatedSprite3D; name: StringName = stringName ""; customSpeed: Float = 1.0; fromEnd: bool = false): void =
  expandMethodBind(className AnimatedSprite3D, "play", 2372066587)
  methodbind.ptrcall(self, [getPtr name, getPtr customSpeed, getPtr fromEnd])

proc playBackwards*(self: AnimatedSprite3D; name: StringName = stringName ""): void =
  expandMethodBind(className AnimatedSprite3D, "play_backwards", 1421762485)
  methodbind.ptrcall(self, [getPtr name])

proc pause*(self: AnimatedSprite3D): void =
  expandMethodBind(className AnimatedSprite3D, "pause", 3218959716)
  methodbind.ptrcall(self, [])

proc stop*(self: AnimatedSprite3D): void =
  expandMethodBind(className AnimatedSprite3D, "stop", 3218959716)
  methodbind.ptrcall(self, [])

proc setFrame*(self: AnimatedSprite3D; frame: int32): void =
  expandMethodBind(className AnimatedSprite3D, "set_frame", 1286410249)
  methodbind.ptrcall(self, [getPtr frame])

proc getFrame*(self: AnimatedSprite3D): int32 =
  expandMethodBind(className AnimatedSprite3D, "get_frame", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setFrameProgress*(self: AnimatedSprite3D; progress: Float): void =
  expandMethodBind(className AnimatedSprite3D, "set_frame_progress", 373806689)
  methodbind.ptrcall(self, [getPtr progress])

proc getFrameProgress*(self: AnimatedSprite3D): Float =
  expandMethodBind(className AnimatedSprite3D, "get_frame_progress", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setFrameAndProgress*(self: AnimatedSprite3D; frame: int32; progress: Float): void =
  expandMethodBind(className AnimatedSprite3D, "set_frame_and_progress", 1602489585)
  methodbind.ptrcall(self, [getPtr frame, getPtr progress])

proc setSpeedScale*(self: AnimatedSprite3D; speedScale: Float): void =
  expandMethodBind(className AnimatedSprite3D, "set_speed_scale", 373806689)
  methodbind.ptrcall(self, [getPtr speedScale])

proc getSpeedScale*(self: AnimatedSprite3D): Float =
  expandMethodBind(className AnimatedSprite3D, "get_speed_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getPlayingSpeed*(self: AnimatedSprite3D): Float =
  expandMethodBind(className AnimatedSprite3D, "get_playing_speed", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

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

const AnimatedSprite3D_vmap =
  SpriteBase3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimatedSprite3D]): Table[string, string] = AnimatedSprite3D_vmap

proc spriteFramesChanged*(self: AnimatedSprite3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("sprite_frames_changed")
  self.emitSignal(signalname)

proc animationChanged*(self: AnimatedSprite3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_changed")
  self.emitSignal(signalname)

proc frameChanged*(self: AnimatedSprite3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("frame_changed")
  self.emitSignal(signalname)

proc animationLooped*(self: AnimatedSprite3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_looped")
  self.emitSignal(signalname)

proc animationFinished*(self: AnimatedSprite3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_finished")
  self.emitSignal(signalname)