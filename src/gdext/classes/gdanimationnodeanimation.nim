{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationrootnode; export gdanimationrootnode

proc setAnimation*(self: AnimationNodeAnimation; name: StringName): void =
  expandMethodBind(className AnimationNodeAnimation, "set_animation", 3304788590)
  methodbind.ptrcall(self, [getPtr name])

proc getAnimation*(self: AnimationNodeAnimation): StringName =
  expandMethodBind(className AnimationNodeAnimation, "get_animation", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc setPlayMode*(self: AnimationNodeAnimation; mode: AnimationNodeAnimation_PlayMode): void =
  expandMethodBind(className AnimationNodeAnimation, "set_play_mode", 3347718873)
  methodbind.ptrcall(self, [getPtr mode])

proc getPlayMode*(self: AnimationNodeAnimation): AnimationNodeAnimation_PlayMode =
  expandMethodBind(className AnimationNodeAnimation, "get_play_mode", 2061244637)
  var ret: encoded AnimationNodeAnimation_PlayMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AnimationNodeAnimation_PlayMode)

proc setUseCustomTimeline*(self: AnimationNodeAnimation; useCustomTimeline: bool): void =
  expandMethodBind(className AnimationNodeAnimation, "set_use_custom_timeline", 2586408642)
  methodbind.ptrcall(self, [getPtr useCustomTimeline])

proc isUsingCustomTimeline*(self: AnimationNodeAnimation): bool =
  expandMethodBind(className AnimationNodeAnimation, "is_using_custom_timeline", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setTimelineLength*(self: AnimationNodeAnimation; timelineLength: float64): void =
  expandMethodBind(className AnimationNodeAnimation, "set_timeline_length", 373806689)
  methodbind.ptrcall(self, [getPtr timelineLength])

proc getTimelineLength*(self: AnimationNodeAnimation): float64 =
  expandMethodBind(className AnimationNodeAnimation, "get_timeline_length", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setStretchTimeScale*(self: AnimationNodeAnimation; stretchTimeScale: bool): void =
  expandMethodBind(className AnimationNodeAnimation, "set_stretch_time_scale", 2586408642)
  methodbind.ptrcall(self, [getPtr stretchTimeScale])

proc isStretchingTimeScale*(self: AnimationNodeAnimation): bool =
  expandMethodBind(className AnimationNodeAnimation, "is_stretching_time_scale", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setStartOffset*(self: AnimationNodeAnimation; startOffset: float64): void =
  expandMethodBind(className AnimationNodeAnimation, "set_start_offset", 373806689)
  methodbind.ptrcall(self, [getPtr startOffset])

proc getStartOffset*(self: AnimationNodeAnimation): float64 =
  expandMethodBind(className AnimationNodeAnimation, "get_start_offset", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setLoopMode*(self: AnimationNodeAnimation; loopMode: Animation_LoopMode): void =
  expandMethodBind(className AnimationNodeAnimation, "set_loop_mode", 3155355575)
  methodbind.ptrcall(self, [getPtr loopMode])

proc getLoopMode*(self: AnimationNodeAnimation): Animation_LoopMode =
  expandMethodBind(className AnimationNodeAnimation, "get_loop_mode", 1988889481)
  var ret: encoded Animation_LoopMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Animation_LoopMode)

template animation*(self: AnimationNodeAnimation): untyped = self.getAnimation()
template `animation=`*(self: AnimationNodeAnimation; value) = self.setAnimation(value)

template playMode*(self: AnimationNodeAnimation): untyped = self.getPlayMode()
template `playMode=`*(self: AnimationNodeAnimation; value) = self.setPlayMode(value)

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

const AnimationNodeAnimation_vmap =
  AnimationRootNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimationNodeAnimation]): Table[string, string] = AnimationNodeAnimation_vmap