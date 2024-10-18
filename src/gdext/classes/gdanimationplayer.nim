{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationmixer; export gdanimationmixer

proc animationSetNext*(self: AnimationPlayer; animationFrom: StringName; animationTo: StringName): void =
  expandMethodBind(className AnimationPlayer, "animation_set_next", 3740211285)
  var `?param` = [getPtr animationFrom, getPtr animationTo]
  methodbind.ptrcall(self, addr `?param`[0])

proc animationGetNext*(self: AnimationPlayer; animationFrom: StringName): StringName =
  expandMethodBind(className AnimationPlayer, "animation_get_next", 1965194235)
  var `?param` = [getPtr animationFrom]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

proc setBlendTime*(self: AnimationPlayer; animationFrom: StringName; animationTo: StringName; sec: float64): void =
  expandMethodBind(className AnimationPlayer, "set_blend_time", 3231131886)
  var `?param` = [getPtr animationFrom, getPtr animationTo, getPtr sec]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBlendTime*(self: AnimationPlayer; animationFrom: StringName; animationTo: StringName): float64 =
  expandMethodBind(className AnimationPlayer, "get_blend_time", 1958752504)
  var `?param` = [getPtr animationFrom, getPtr animationTo]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc setDefaultBlendTime*(self: AnimationPlayer; sec: float64): void =
  expandMethodBind(className AnimationPlayer, "set_default_blend_time", 373806689)
  var `?param` = [getPtr sec]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDefaultBlendTime*(self: AnimationPlayer): float64 =
  expandMethodBind(className AnimationPlayer, "get_default_blend_time", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setAutoCapture*(self: AnimationPlayer; autoCapture: bool): void =
  expandMethodBind(className AnimationPlayer, "set_auto_capture", 2586408642)
  var `?param` = [getPtr autoCapture]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAutoCapture*(self: AnimationPlayer): bool =
  expandMethodBind(className AnimationPlayer, "is_auto_capture", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAutoCaptureDuration*(self: AnimationPlayer; autoCaptureDuration: float64): void =
  expandMethodBind(className AnimationPlayer, "set_auto_capture_duration", 373806689)
  var `?param` = [getPtr autoCaptureDuration]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutoCaptureDuration*(self: AnimationPlayer): float64 =
  expandMethodBind(className AnimationPlayer, "get_auto_capture_duration", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setAutoCaptureTransitionType*(self: AnimationPlayer; autoCaptureTransitionType: Tween_TransitionType): void =
  expandMethodBind(className AnimationPlayer, "set_auto_capture_transition_type", 1058637742)
  var `?param` = [getPtr autoCaptureTransitionType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutoCaptureTransitionType*(self: AnimationPlayer): Tween_TransitionType =
  expandMethodBind(className AnimationPlayer, "get_auto_capture_transition_type", 3842314528)
  var ret: encoded Tween_TransitionType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Tween_TransitionType)

proc setAutoCaptureEaseType*(self: AnimationPlayer; autoCaptureEaseType: Tween_EaseType): void =
  expandMethodBind(className AnimationPlayer, "set_auto_capture_ease_type", 1208105857)
  var `?param` = [getPtr autoCaptureEaseType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutoCaptureEaseType*(self: AnimationPlayer): Tween_EaseType =
  expandMethodBind(className AnimationPlayer, "get_auto_capture_ease_type", 631880200)
  var ret: encoded Tween_EaseType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Tween_EaseType)

proc play*(self: AnimationPlayer; name: StringName = stringName ""; customBlend: float64 = -1; customSpeed: Float = 1.0; fromEnd: bool = false): void =
  expandMethodBind(className AnimationPlayer, "play", 3697947785)
  var `?param` = [getPtr name, getPtr customBlend, getPtr customSpeed, getPtr fromEnd]
  methodbind.ptrcall(self, addr `?param`[0])

proc playBackwards*(self: AnimationPlayer; name: StringName = stringName ""; customBlend: float64 = -1): void =
  expandMethodBind(className AnimationPlayer, "play_backwards", 3890664824)
  var `?param` = [getPtr name, getPtr customBlend]
  methodbind.ptrcall(self, addr `?param`[0])

proc playWithCapture*(self: AnimationPlayer; name: StringName = stringName ""; duration: float64 = -1.0; customBlend: float64 = -1; customSpeed: Float = 1.0; fromEnd: bool = false; transType: Tween_TransitionType = transLinear; easeType: Tween_EaseType = easeIn): void =
  expandMethodBind(className AnimationPlayer, "play_with_capture", 3180464118)
  var `?param` = [getPtr name, getPtr duration, getPtr customBlend, getPtr customSpeed, getPtr fromEnd, getPtr transType, getPtr easeType]
  methodbind.ptrcall(self, addr `?param`[0])

proc pause*(self: AnimationPlayer): void =
  expandMethodBind(className AnimationPlayer, "pause", 3218959716)
  methodbind.ptrcall(self, nil)

proc stop*(self: AnimationPlayer; keepState: bool = false): void =
  expandMethodBind(className AnimationPlayer, "stop", 107499316)
  var `?param` = [getPtr keepState]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPlaying*(self: AnimationPlayer): bool =
  expandMethodBind(className AnimationPlayer, "is_playing", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCurrentAnimation*(self: AnimationPlayer; animation: String): void =
  expandMethodBind(className AnimationPlayer, "set_current_animation", 83702148)
  var `?param` = [getPtr animation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCurrentAnimation*(self: AnimationPlayer): String =
  expandMethodBind(className AnimationPlayer, "get_current_animation", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setAssignedAnimation*(self: AnimationPlayer; animation: String): void =
  expandMethodBind(className AnimationPlayer, "set_assigned_animation", 83702148)
  var `?param` = [getPtr animation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAssignedAnimation*(self: AnimationPlayer): String =
  expandMethodBind(className AnimationPlayer, "get_assigned_animation", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc queue*(self: AnimationPlayer; name: StringName): void =
  expandMethodBind(className AnimationPlayer, "queue", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getQueue*(self: AnimationPlayer): PackedStringArray =
  expandMethodBind(className AnimationPlayer, "get_queue", 2981934095)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc clearQueue*(self: AnimationPlayer): void =
  expandMethodBind(className AnimationPlayer, "clear_queue", 3218959716)
  methodbind.ptrcall(self, nil)

proc setSpeedScale*(self: AnimationPlayer; speed: Float): void =
  expandMethodBind(className AnimationPlayer, "set_speed_scale", 373806689)
  var `?param` = [getPtr speed]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpeedScale*(self: AnimationPlayer): Float =
  expandMethodBind(className AnimationPlayer, "get_speed_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getPlayingSpeed*(self: AnimationPlayer): Float =
  expandMethodBind(className AnimationPlayer, "get_playing_speed", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAutoplay*(self: AnimationPlayer; name: String): void =
  expandMethodBind(className AnimationPlayer, "set_autoplay", 83702148)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutoplay*(self: AnimationPlayer): String =
  expandMethodBind(className AnimationPlayer, "get_autoplay", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setMovieQuitOnFinishEnabled*(self: AnimationPlayer; enabled: bool): void =
  expandMethodBind(className AnimationPlayer, "set_movie_quit_on_finish_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isMovieQuitOnFinishEnabled*(self: AnimationPlayer): bool =
  expandMethodBind(className AnimationPlayer, "is_movie_quit_on_finish_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getCurrentAnimationPosition*(self: AnimationPlayer): float64 =
  expandMethodBind(className AnimationPlayer, "get_current_animation_position", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getCurrentAnimationLength*(self: AnimationPlayer): float64 =
  expandMethodBind(className AnimationPlayer, "get_current_animation_length", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc seek*(self: AnimationPlayer; seconds: float64; update: bool = false; updateOnly: bool = false): void =
  expandMethodBind(className AnimationPlayer, "seek", 1807872683)
  var `?param` = [getPtr seconds, getPtr update, getPtr updateOnly]
  methodbind.ptrcall(self, addr `?param`[0])

proc setProcessCallback*(self: AnimationPlayer; mode: AnimationPlayer_AnimationProcessCallback): void =
  expandMethodBind(className AnimationPlayer, "set_process_callback", 1663839457)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getProcessCallback*(self: AnimationPlayer): AnimationPlayer_AnimationProcessCallback =
  expandMethodBind(className AnimationPlayer, "get_process_callback", 4207496604)
  var ret: encoded AnimationPlayer_AnimationProcessCallback
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AnimationPlayer_AnimationProcessCallback)

proc setMethodCallMode*(self: AnimationPlayer; mode: AnimationPlayer_AnimationMethodCallMode): void =
  expandMethodBind(className AnimationPlayer, "set_method_call_mode", 3413514846)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMethodCallMode*(self: AnimationPlayer): AnimationPlayer_AnimationMethodCallMode =
  expandMethodBind(className AnimationPlayer, "get_method_call_mode", 3583380054)
  var ret: encoded AnimationPlayer_AnimationMethodCallMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AnimationPlayer_AnimationMethodCallMode)

proc setRoot*(self: AnimationPlayer; path: NodePath): void =
  expandMethodBind(className AnimationPlayer, "set_root", 1348162250)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRoot*(self: AnimationPlayer): NodePath =
  expandMethodBind(className AnimationPlayer, "get_root", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

template currentAnimation*(self: AnimationPlayer): untyped = self.getCurrentAnimation()
template `currentAnimation=`*(self: AnimationPlayer; value) = self.setCurrentAnimation(value)

template assignedAnimation*(self: AnimationPlayer): untyped = self.getAssignedAnimation()
template `assignedAnimation=`*(self: AnimationPlayer; value) = self.setAssignedAnimation(value)

template autoplay*(self: AnimationPlayer): untyped = self.getAutoplay()
template `autoplay=`*(self: AnimationPlayer; value) = self.setAutoplay(value)

template currentAnimationLength*(self: AnimationPlayer): untyped = self.getCurrentAnimationLength()

template currentAnimationPosition*(self: AnimationPlayer): untyped = self.getCurrentAnimationPosition()

template playbackAutoCapture*(self: AnimationPlayer): untyped = self.isAutoCapture()
template `playbackAutoCapture=`*(self: AnimationPlayer; value) = self.setAutoCapture(value)

template playbackAutoCaptureDuration*(self: AnimationPlayer): untyped = self.getAutoCaptureDuration()
template `playbackAutoCaptureDuration=`*(self: AnimationPlayer; value) = self.setAutoCaptureDuration(value)

template playbackAutoCaptureTransitionType*(self: AnimationPlayer): untyped = self.getAutoCaptureTransitionType()
template `playbackAutoCaptureTransitionType=`*(self: AnimationPlayer; value) = self.setAutoCaptureTransitionType(value)

template playbackAutoCaptureEaseType*(self: AnimationPlayer): untyped = self.getAutoCaptureEaseType()
template `playbackAutoCaptureEaseType=`*(self: AnimationPlayer; value) = self.setAutoCaptureEaseType(value)

template playbackDefaultBlendTime*(self: AnimationPlayer): untyped = self.getDefaultBlendTime()
template `playbackDefaultBlendTime=`*(self: AnimationPlayer; value) = self.setDefaultBlendTime(value)

template speedScale*(self: AnimationPlayer): untyped = self.getSpeedScale()
template `speedScale=`*(self: AnimationPlayer; value) = self.setSpeedScale(value)

template movieQuitOnFinish*(self: AnimationPlayer): untyped = self.isMovieQuitOnFinishEnabled()
template `movieQuitOnFinish=`*(self: AnimationPlayer; value) = self.setMovieQuitOnFinishEnabled(value)

const AnimationPlayer_vmap =
  AnimationMixer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimationPlayer]): Table[string, string] = AnimationPlayer_vmap

proc currentAnimationChanged*(self: AnimationPlayer; name: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("current_animation_changed")
  let args = [name]
  self.emitSignal(signalname, args)

proc animationChanged*(self: AnimationPlayer; oldName: Variant; newName: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_changed")
  let args = [oldName, newName]
  self.emitSignal(signalname, args)