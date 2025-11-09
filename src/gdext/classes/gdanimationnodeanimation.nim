{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationrootnode; export gdanimationrootnode

expandOnClassImported(AnimationNodeAnimation, AnimationRootNode)

proc setAnimation*(self: AnimationNodeAnimation; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeAnimation, "set_animation", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc getAnimation*(self: AnimationNodeAnimation): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeAnimation, "get_animation", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setPlayMode*(self: AnimationNodeAnimation; mode: AnimationNodeAnimation_PlayMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeAnimation, "set_play_mode", 3347718873)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getPlayMode*(self: AnimationNodeAnimation): AnimationNodeAnimation_PlayMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeAnimation, "get_play_mode", 2061244637)
  methodbind.ptrcall(self, [], AnimationNodeAnimation_PlayMode)

proc setAdvanceOnStart*(self: AnimationNodeAnimation; advanceOnStart: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeAnimation, "set_advance_on_start", 2586408642)
  methodbind.ptrcall(self, [getPtr advanceOnStart], void)

proc isAdvanceOnStart*(self: AnimationNodeAnimation): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeAnimation, "is_advance_on_start", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUseCustomTimeline*(self: AnimationNodeAnimation; useCustomTimeline: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeAnimation, "set_use_custom_timeline", 2586408642)
  methodbind.ptrcall(self, [getPtr useCustomTimeline], void)

proc isUsingCustomTimeline*(self: AnimationNodeAnimation): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeAnimation, "is_using_custom_timeline", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTimelineLength*(self: AnimationNodeAnimation; timelineLength: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeAnimation, "set_timeline_length", 373806689)
  methodbind.ptrcall(self, [getPtr timelineLength], void)

proc getTimelineLength*(self: AnimationNodeAnimation): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeAnimation, "get_timeline_length", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setStretchTimeScale*(self: AnimationNodeAnimation; stretchTimeScale: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeAnimation, "set_stretch_time_scale", 2586408642)
  methodbind.ptrcall(self, [getPtr stretchTimeScale], void)

proc isStretchingTimeScale*(self: AnimationNodeAnimation): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeAnimation, "is_stretching_time_scale", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setStartOffset*(self: AnimationNodeAnimation; startOffset: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeAnimation, "set_start_offset", 373806689)
  methodbind.ptrcall(self, [getPtr startOffset], void)

proc getStartOffset*(self: AnimationNodeAnimation): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeAnimation, "get_start_offset", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setLoopMode*(self: AnimationNodeAnimation; loopMode: Animation_LoopMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeAnimation, "set_loop_mode", 3155355575)
  methodbind.ptrcall(self, [getPtr loopMode], void)

proc getLoopMode*(self: AnimationNodeAnimation): Animation_LoopMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeAnimation, "get_loop_mode", 1988889481)
  methodbind.ptrcall(self, [], Animation_LoopMode)

template animation*(self: AnimationNodeAnimation): untyped = self.getAnimation()
template `animation=`*(self: AnimationNodeAnimation; value) = self.setAnimation(value)

template playMode*(self: AnimationNodeAnimation): untyped = self.getPlayMode()
template `playMode=`*(self: AnimationNodeAnimation; value) = self.setPlayMode(value)

template advanceOnStart*(self: AnimationNodeAnimation): untyped = self.isAdvanceOnStart()
template `advanceOnStart=`*(self: AnimationNodeAnimation; value) = self.setAdvanceOnStart(value)

template useCustomTimeline*(self: AnimationNodeAnimation): untyped = self.isUsingCustomTimeline()
template `useCustomTimeline=`*(self: AnimationNodeAnimation; value) = self.setUseCustomTimeline(value)

template timelineLength*(self: AnimationNodeAnimation): untyped = self.getTimelineLength()
template `timelineLength=`*(self: AnimationNodeAnimation; value) = self.setTimelineLength(value)

template stretchTimeScale*(self: AnimationNodeAnimation): untyped = self.isStretchingTimeScale()
template `stretchTimeScale=`*(self: AnimationNodeAnimation; value) = self.setStretchTimeScale(value)

template startOffset*(self: AnimationNodeAnimation): untyped = self.getStartOffset()
template `startOffset=`*(self: AnimationNodeAnimation; value) = self.setStartOffset(value)

template loopMode*(self: AnimationNodeAnimation): untyped = self.getLoopMode()
template `loopMode=`*(self: AnimationNodeAnimation; value) = self.setLoopMode(value)
