{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationmixer; export gdanimationmixer

expandOnClassImported(AnimationPlayer, AnimationMixer)

proc animationSetNext*(self: AnimationPlayer; animationFrom: StringName; animationTo: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "animation_set_next", 3740211285)
  methodbind.ptrcall(self, [getPtr animationFrom, getPtr animationTo], void)

proc animationGetNext*(self: AnimationPlayer; animationFrom: StringName): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "animation_get_next", 1965194235)
  methodbind.ptrcall(self, [getPtr animationFrom], StringName)

proc setBlendTime*(self: AnimationPlayer; animationFrom: StringName; animationTo: StringName; sec: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "set_blend_time", 3231131886)
  methodbind.ptrcall(self, [getPtr animationFrom, getPtr animationTo, getPtr sec], void)

proc getBlendTime*(self: AnimationPlayer; animationFrom: StringName; animationTo: StringName): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_blend_time", 1958752504)
  methodbind.ptrcall(self, [getPtr animationFrom, getPtr animationTo], float64)

proc setDefaultBlendTime*(self: AnimationPlayer; sec: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "set_default_blend_time", 373806689)
  methodbind.ptrcall(self, [getPtr sec], void)

proc getDefaultBlendTime*(self: AnimationPlayer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_default_blend_time", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setAutoCapture*(self: AnimationPlayer; autoCapture: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "set_auto_capture", 2586408642)
  methodbind.ptrcall(self, [getPtr autoCapture], void)

proc isAutoCapture*(self: AnimationPlayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "is_auto_capture", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAutoCaptureDuration*(self: AnimationPlayer; autoCaptureDuration: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "set_auto_capture_duration", 373806689)
  methodbind.ptrcall(self, [getPtr autoCaptureDuration], void)

proc getAutoCaptureDuration*(self: AnimationPlayer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_auto_capture_duration", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setAutoCaptureTransitionType*(self: AnimationPlayer; autoCaptureTransitionType: Tween_TransitionType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "set_auto_capture_transition_type", 1058637742)
  methodbind.ptrcall(self, [getPtr autoCaptureTransitionType], void)

proc getAutoCaptureTransitionType*(self: AnimationPlayer): Tween_TransitionType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_auto_capture_transition_type", 3842314528)
  methodbind.ptrcall(self, [], Tween_TransitionType)

proc setAutoCaptureEaseType*(self: AnimationPlayer; autoCaptureEaseType: Tween_EaseType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "set_auto_capture_ease_type", 1208105857)
  methodbind.ptrcall(self, [getPtr autoCaptureEaseType], void)

proc getAutoCaptureEaseType*(self: AnimationPlayer): Tween_EaseType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_auto_capture_ease_type", 631880200)
  methodbind.ptrcall(self, [], Tween_EaseType)

proc play*(self: AnimationPlayer; name: StringName = default(StringName); customBlend: float64 = -1; customSpeed: Float = 1.0; fromEnd: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "play", 3118260607)
  methodbind.ptrcall(self, [getPtr name, getPtr customBlend, getPtr customSpeed, getPtr fromEnd], void)

proc playSectionWithMarkers*(self: AnimationPlayer; name: StringName = default(StringName); startMarker: StringName = default(StringName); endMarker: StringName = default(StringName); customBlend: float64 = -1; customSpeed: Float = 1.0; fromEnd: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "play_section_with_markers", 1421431412)
  methodbind.ptrcall(self, [getPtr name, getPtr startMarker, getPtr endMarker, getPtr customBlend, getPtr customSpeed, getPtr fromEnd], void)

proc playSection*(self: AnimationPlayer; name: StringName = default(StringName); startTime: float64 = -1; endTime: float64 = -1; customBlend: float64 = -1; customSpeed: Float = 1.0; fromEnd: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "play_section", 284774635)
  methodbind.ptrcall(self, [getPtr name, getPtr startTime, getPtr endTime, getPtr customBlend, getPtr customSpeed, getPtr fromEnd], void)

proc playBackwards*(self: AnimationPlayer; name: StringName = default(StringName); customBlend: float64 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "play_backwards", 2787282401)
  methodbind.ptrcall(self, [getPtr name, getPtr customBlend], void)

proc playSectionWithMarkersBackwards*(self: AnimationPlayer; name: StringName = default(StringName); startMarker: StringName = default(StringName); endMarker: StringName = default(StringName); customBlend: float64 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "play_section_with_markers_backwards", 910195100)
  methodbind.ptrcall(self, [getPtr name, getPtr startMarker, getPtr endMarker, getPtr customBlend], void)

proc playSectionBackwards*(self: AnimationPlayer; name: StringName = default(StringName); startTime: float64 = -1; endTime: float64 = -1; customBlend: float64 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "play_section_backwards", 831955981)
  methodbind.ptrcall(self, [getPtr name, getPtr startTime, getPtr endTime, getPtr customBlend], void)

proc playWithCapture*(self: AnimationPlayer; name: StringName = default(StringName); duration: float64 = -1.0; customBlend: float64 = -1; customSpeed: Float = 1.0; fromEnd: bool = false; transType: Tween_TransitionType = transLinear; easeType: Tween_EaseType = easeIn): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "play_with_capture", 1572969103)
  methodbind.ptrcall(self, [getPtr name, getPtr duration, getPtr customBlend, getPtr customSpeed, getPtr fromEnd, getPtr transType, getPtr easeType], void)

proc pause*(self: AnimationPlayer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "pause", 3218959716)
  methodbind.ptrcall(self, [], void)

proc stop*(self: AnimationPlayer; keepState: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "stop", 107499316)
  methodbind.ptrcall(self, [getPtr keepState], void)

proc isPlaying*(self: AnimationPlayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "is_playing", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCurrentAnimation*(self: AnimationPlayer; animation: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "set_current_animation", 83702148)
  methodbind.ptrcall(self, [getPtr animation], void)

proc getCurrentAnimation*(self: AnimationPlayer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_current_animation", 201670096)
  methodbind.ptrcall(self, [], String)

proc setAssignedAnimation*(self: AnimationPlayer; animation: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "set_assigned_animation", 83702148)
  methodbind.ptrcall(self, [getPtr animation], void)

proc getAssignedAnimation*(self: AnimationPlayer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_assigned_animation", 201670096)
  methodbind.ptrcall(self, [], String)

proc queue*(self: AnimationPlayer; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "queue", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc getQueue*(self: AnimationPlayer): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_queue", 2981934095)
  methodbind.ptrcall(self, [], PackedStringArray)

proc clearQueue*(self: AnimationPlayer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "clear_queue", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setSpeedScale*(self: AnimationPlayer; speed: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "set_speed_scale", 373806689)
  methodbind.ptrcall(self, [getPtr speed], void)

proc getSpeedScale*(self: AnimationPlayer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_speed_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getPlayingSpeed*(self: AnimationPlayer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_playing_speed", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAutoplay*(self: AnimationPlayer; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "set_autoplay", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getAutoplay*(self: AnimationPlayer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_autoplay", 201670096)
  methodbind.ptrcall(self, [], String)

proc setMovieQuitOnFinishEnabled*(self: AnimationPlayer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "set_movie_quit_on_finish_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isMovieQuitOnFinishEnabled*(self: AnimationPlayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "is_movie_quit_on_finish_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getCurrentAnimationPosition*(self: AnimationPlayer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_current_animation_position", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getCurrentAnimationLength*(self: AnimationPlayer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_current_animation_length", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setSectionWithMarkers*(self: AnimationPlayer; startMarker: StringName = default(StringName); endMarker: StringName = default(StringName)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "set_section_with_markers", 794792241)
  methodbind.ptrcall(self, [getPtr startMarker, getPtr endMarker], void)

proc setSection*(self: AnimationPlayer; startTime: float64 = -1; endTime: float64 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "set_section", 3749779719)
  methodbind.ptrcall(self, [getPtr startTime, getPtr endTime], void)

proc resetSection*(self: AnimationPlayer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "reset_section", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getSectionStartTime*(self: AnimationPlayer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_section_start_time", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getSectionEndTime*(self: AnimationPlayer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_section_end_time", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc hasSection*(self: AnimationPlayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "has_section", 36873697)
  methodbind.ptrcall(self, [], bool)

proc seek*(self: AnimationPlayer; seconds: float64; update: bool = false; updateOnly: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "seek", 1807872683)
  methodbind.ptrcall(self, [getPtr seconds, getPtr update, getPtr updateOnly], void)

proc setProcessCallback*(self: AnimationPlayer; mode: AnimationPlayer_AnimationProcessCallback): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "set_process_callback", 1663839457)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getProcessCallback*(self: AnimationPlayer): AnimationPlayer_AnimationProcessCallback =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_process_callback", 4207496604)
  methodbind.ptrcall(self, [], AnimationPlayer_AnimationProcessCallback)

proc setMethodCallMode*(self: AnimationPlayer; mode: AnimationPlayer_AnimationMethodCallMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "set_method_call_mode", 3413514846)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getMethodCallMode*(self: AnimationPlayer): AnimationPlayer_AnimationMethodCallMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_method_call_mode", 3583380054)
  methodbind.ptrcall(self, [], AnimationPlayer_AnimationMethodCallMode)

proc setRoot*(self: AnimationPlayer; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "set_root", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getRoot*(self: AnimationPlayer): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationPlayer, "get_root", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

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
