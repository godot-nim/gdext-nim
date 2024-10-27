{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setSpriteFrames*(self: AnimatedSprite2D; spriteFrames: gdref SpriteFrames): void =
  ##The SpriteFrames resource containing the animation(s). Allows you the option to load, edit, clear, make
  ##unique and save the states of the SpriteFrames resource.
  expandMethodBind(className AnimatedSprite2D, "set_sprite_frames", 905781144)
  var `?param` = [getPtr spriteFrames]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpriteFrames*(self: AnimatedSprite2D): gdref SpriteFrames =
  ##The SpriteFrames resource containing the animation(s). Allows you the option to load, edit, clear, make
  ##unique and save the states of the SpriteFrames resource.
  expandMethodBind(className AnimatedSprite2D, "get_sprite_frames", 3804851214)
  var ret: encoded gdref SpriteFrames
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref SpriteFrames)

proc setAnimation*(self: AnimatedSprite2D; name: StringName): void =
  ##The current animation from the sprite_frames resource. If this value is changed, the frame counter and the
  ##frame_progress are reset.
  expandMethodBind(className AnimatedSprite2D, "set_animation", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAnimation*(self: AnimatedSprite2D): StringName =
  ##The current animation from the sprite_frames resource. If this value is changed, the frame counter and the
  ##frame_progress are reset.
  expandMethodBind(className AnimatedSprite2D, "get_animation", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setAutoplay*(self: AnimatedSprite2D; name: String): void =
  ##The key of the animation to play when the scene loads.
  expandMethodBind(className AnimatedSprite2D, "set_autoplay", 83702148)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutoplay*(self: AnimatedSprite2D): String =
  ##The key of the animation to play when the scene loads.
  expandMethodBind(className AnimatedSprite2D, "get_autoplay", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc isPlaying*(self: AnimatedSprite2D): bool =
  ##Returns true if an animation is currently playing (even if speed_scale and/or custom_speed are 0).
  expandMethodBind(className AnimatedSprite2D, "is_playing", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc play*(self: AnimatedSprite2D; name: StringName = stringName ""; customSpeed: Float = 1.0; fromEnd: bool = false): void =
  ##Plays the animation with key name. If custom_speed is negative and from_end is true, the animation will
  ##play backwards (which is equivalent to calling play_backwards).
  ##
  ##If this method is called with that same animation name, or with no name parameter, the assigned animation
  ##will resume playing if it was paused.
  expandMethodBind(className AnimatedSprite2D, "play", 2372066587)
  var `?param` = [getPtr name, getPtr customSpeed, getPtr fromEnd]
  methodbind.ptrcall(self, addr `?param`[0])

proc playBackwards*(self: AnimatedSprite2D; name: StringName = stringName ""): void =
  ##Plays the animation with key name in reverse.
  ##
  ##This method is a shorthand for play with custom_speed = -1.0 and from_end = true, so see its
  ##description for more information.
  expandMethodBind(className AnimatedSprite2D, "play_backwards", 1421762485)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc pause*(self: AnimatedSprite2D): void =
  ##Pauses the currently playing animation. The frame and frame_progress will be kept and calling play or
  ##play_backwards without arguments will resume the animation from the current playback position.
  ##
  ##See also stop.
  expandMethodBind(className AnimatedSprite2D, "pause", 3218959716)
  methodbind.ptrcall(self, nil)

proc stop*(self: AnimatedSprite2D): void =
  ##Stops the currently playing animation. The animation position is reset to 0 and the custom_speed is reset
  ##to 1.0. See also pause.
  expandMethodBind(className AnimatedSprite2D, "stop", 3218959716)
  methodbind.ptrcall(self, nil)

proc setCentered*(self: AnimatedSprite2D; centered: bool): void =
  ##If true, texture will be centered.
  ##
  ##Note: For games with a pixel art aesthetic, textures may appear deformed when centered. This is caused by
  ##their position being between pixels. To prevent this, set this property to false, or consider enabling
  ##ProjectSettings.rendering/2d/snap/snap_2d_vertices_to_pixel and
  ##ProjectSettings.rendering/2d/snap/snap_2d_transforms_to_pixel.
  expandMethodBind(className AnimatedSprite2D, "set_centered", 2586408642)
  var `?param` = [getPtr centered]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCentered*(self: AnimatedSprite2D): bool =
  ##If true, texture will be centered.
  ##
  ##Note: For games with a pixel art aesthetic, textures may appear deformed when centered. This is caused by
  ##their position being between pixels. To prevent this, set this property to false, or consider enabling
  ##ProjectSettings.rendering/2d/snap/snap_2d_vertices_to_pixel and
  ##ProjectSettings.rendering/2d/snap/snap_2d_transforms_to_pixel.
  expandMethodBind(className AnimatedSprite2D, "is_centered", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setOffset*(self: AnimatedSprite2D; offset: Vector2): void =
  ##The texture's drawing offset.
  expandMethodBind(className AnimatedSprite2D, "set_offset", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOffset*(self: AnimatedSprite2D): Vector2 =
  ##The texture's drawing offset.
  expandMethodBind(className AnimatedSprite2D, "get_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setFlipH*(self: AnimatedSprite2D; flipH: bool): void =
  ##If true, texture is flipped horizontally.
  expandMethodBind(className AnimatedSprite2D, "set_flip_h", 2586408642)
  var `?param` = [getPtr flipH]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFlippedH*(self: AnimatedSprite2D): bool =
  ##If true, texture is flipped horizontally.
  expandMethodBind(className AnimatedSprite2D, "is_flipped_h", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFlipV*(self: AnimatedSprite2D; flipV: bool): void =
  ##If true, texture is flipped vertically.
  expandMethodBind(className AnimatedSprite2D, "set_flip_v", 2586408642)
  var `?param` = [getPtr flipV]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFlippedV*(self: AnimatedSprite2D): bool =
  ##If true, texture is flipped vertically.
  expandMethodBind(className AnimatedSprite2D, "is_flipped_v", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFrame*(self: AnimatedSprite2D; frame: int32): void =
  ##The displayed animation frame's index. Setting this property also resets frame_progress. If this is not desired,
  ##use set_frame_and_progress.
  expandMethodBind(className AnimatedSprite2D, "set_frame", 1286410249)
  var `?param` = [getPtr frame]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrame*(self: AnimatedSprite2D): int32 =
  ##The displayed animation frame's index. Setting this property also resets frame_progress. If this is not desired,
  ##use set_frame_and_progress.
  expandMethodBind(className AnimatedSprite2D, "get_frame", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setFrameProgress*(self: AnimatedSprite2D; progress: Float): void =
  ##The progress value between 0.0 and 1.0 until the current frame transitions to the next frame. If the
  ##animation is playing backwards, the value transitions from 1.0 to 0.0.
  expandMethodBind(className AnimatedSprite2D, "set_frame_progress", 373806689)
  var `?param` = [getPtr progress]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrameProgress*(self: AnimatedSprite2D): Float =
  ##The progress value between 0.0 and 1.0 until the current frame transitions to the next frame. If the
  ##animation is playing backwards, the value transitions from 1.0 to 0.0.
  expandMethodBind(className AnimatedSprite2D, "get_frame_progress", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFrameAndProgress*(self: AnimatedSprite2D; frame: int32; progress: Float): void =
  ##The setter of frame resets the frame_progress to 0.0 implicitly, but this method avoids that.
  ##
  ##This is useful when you want to carry over the current frame_progress to another frame.
  expandMethodBind(className AnimatedSprite2D, "set_frame_and_progress", 1602489585)
  var `?param` = [getPtr frame, getPtr progress]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSpeedScale*(self: AnimatedSprite2D; speedScale: Float): void =
  ##The speed scaling ratio. For example, if this value is 1, then the animation plays at normal speed. If it's 0.5,
  ##then it plays at half speed. If it's 2, then it plays at double speed.
  ##
  ##If set to a negative value, the animation is played in reverse. If set to 0, the animation will not advance.
  expandMethodBind(className AnimatedSprite2D, "set_speed_scale", 373806689)
  var `?param` = [getPtr speedScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpeedScale*(self: AnimatedSprite2D): Float =
  ##The speed scaling ratio. For example, if this value is 1, then the animation plays at normal speed. If it's 0.5,
  ##then it plays at half speed. If it's 2, then it plays at double speed.
  ##
  ##If set to a negative value, the animation is played in reverse. If set to 0, the animation will not advance.
  expandMethodBind(className AnimatedSprite2D, "get_speed_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getPlayingSpeed*(self: AnimatedSprite2D): Float =
  ##Returns the actual playing speed of current animation or 0 if not playing. This speed is the speed_scale
  ##property multiplied by custom_speed argument specified when calling the play method.
  ##
  ##Returns a negative value if the current animation is playing backwards.
  expandMethodBind(className AnimatedSprite2D, "get_playing_speed", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
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
  ##Emitted when sprite_frames changes.
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("sprite_frames_changed")
  self.emitSignal(signalname)

proc animationChanged*(self: AnimatedSprite2D): Error =
  ##Emitted when animation changes.
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_changed")
  self.emitSignal(signalname)

proc frameChanged*(self: AnimatedSprite2D): Error =
  ##Emitted when frame changes.
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("frame_changed")
  self.emitSignal(signalname)

proc animationLooped*(self: AnimatedSprite2D): Error =
  ##Emitted when the animation loops.
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_looped")
  self.emitSignal(signalname)

proc animationFinished*(self: AnimatedSprite2D): Error =
  ##Emitted when the animation reaches the end, or the start if it is played in reverse. When the animation
  ##finishes, it pauses the playback.
  ##
  ##Note: This signal is not emitted if an animation is looping.
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_finished")
  self.emitSignal(signalname)