{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setScrollScale*(self: Parallax2D; scale: Vector2): void =
  expandMethodBind(className Parallax2D, "set_scroll_scale", 743155724)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScrollScale*(self: Parallax2D): Vector2 =
  expandMethodBind(className Parallax2D, "get_scroll_scale", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setRepeatSize*(self: Parallax2D; repeatSize: Vector2): void =
  expandMethodBind(className Parallax2D, "set_repeat_size", 743155724)
  var `?param` = [getPtr repeatSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRepeatSize*(self: Parallax2D): Vector2 =
  expandMethodBind(className Parallax2D, "get_repeat_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setRepeatTimes*(self: Parallax2D; repeatTimes: int32): void =
  expandMethodBind(className Parallax2D, "set_repeat_times", 1286410249)
  var `?param` = [getPtr repeatTimes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRepeatTimes*(self: Parallax2D): int32 =
  expandMethodBind(className Parallax2D, "get_repeat_times", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setAutoscroll*(self: Parallax2D; autoscroll: Vector2): void =
  expandMethodBind(className Parallax2D, "set_autoscroll", 743155724)
  var `?param` = [getPtr autoscroll]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutoscroll*(self: Parallax2D): Vector2 =
  expandMethodBind(className Parallax2D, "get_autoscroll", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setScrollOffset*(self: Parallax2D; offset: Vector2): void =
  expandMethodBind(className Parallax2D, "set_scroll_offset", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScrollOffset*(self: Parallax2D): Vector2 =
  expandMethodBind(className Parallax2D, "get_scroll_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setScreenOffset*(self: Parallax2D; offset: Vector2): void =
  expandMethodBind(className Parallax2D, "set_screen_offset", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScreenOffset*(self: Parallax2D): Vector2 =
  expandMethodBind(className Parallax2D, "get_screen_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setLimitBegin*(self: Parallax2D; offset: Vector2): void =
  expandMethodBind(className Parallax2D, "set_limit_begin", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLimitBegin*(self: Parallax2D): Vector2 =
  expandMethodBind(className Parallax2D, "get_limit_begin", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setLimitEnd*(self: Parallax2D; offset: Vector2): void =
  expandMethodBind(className Parallax2D, "set_limit_end", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLimitEnd*(self: Parallax2D): Vector2 =
  expandMethodBind(className Parallax2D, "get_limit_end", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setFollowViewport*(self: Parallax2D; follow: bool): void =
  expandMethodBind(className Parallax2D, "set_follow_viewport", 2586408642)
  var `?param` = [getPtr follow]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFollowViewport*(self: Parallax2D): bool =
  expandMethodBind(className Parallax2D, "get_follow_viewport", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setIgnoreCameraScroll*(self: Parallax2D; ignore: bool): void =
  expandMethodBind(className Parallax2D, "set_ignore_camera_scroll", 2586408642)
  var `?param` = [getPtr ignore]
  methodbind.ptrcall(self, addr `?param`[0])

proc isIgnoreCameraScroll*(self: Parallax2D): bool =
  expandMethodBind(className Parallax2D, "is_ignore_camera_scroll", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template scrollScale*(self: Parallax2D): untyped = self.getScrollScale()
template `scrollScale=`*(self: Parallax2D; value) = self.setScrollScale(value)

template scrollOffset*(self: Parallax2D): untyped = self.getScrollOffset()
template `scrollOffset=`*(self: Parallax2D; value) = self.setScrollOffset(value)

template repeatSize*(self: Parallax2D): untyped = self.getRepeatSize()
template `repeatSize=`*(self: Parallax2D; value) = self.setRepeatSize(value)

template autoscroll*(self: Parallax2D): untyped = self.getAutoscroll()
template `autoscroll=`*(self: Parallax2D; value) = self.setAutoscroll(value)

template repeatTimes*(self: Parallax2D): untyped = self.getRepeatTimes()
template `repeatTimes=`*(self: Parallax2D; value) = self.setRepeatTimes(value)

template limitBegin*(self: Parallax2D): untyped = self.getLimitBegin()
template `limitBegin=`*(self: Parallax2D; value) = self.setLimitBegin(value)

template limitEnd*(self: Parallax2D): untyped = self.getLimitEnd()
template `limitEnd=`*(self: Parallax2D; value) = self.setLimitEnd(value)

template followViewport*(self: Parallax2D): untyped = self.getFollowViewport()
template `followViewport=`*(self: Parallax2D; value) = self.setFollowViewport(value)

template ignoreCameraScroll*(self: Parallax2D): untyped = self.isIgnoreCameraScroll()
template `ignoreCameraScroll=`*(self: Parallax2D; value) = self.setIgnoreCameraScroll(value)

template screenOffset*(self: Parallax2D): untyped = self.getScreenOffset()
template `screenOffset=`*(self: Parallax2D; value) = self.setScreenOffset(value)

const Parallax2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Parallax2D]): Table[string, string] = Parallax2D_vmap