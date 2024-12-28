{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

proc setHScroll*(self: ScrollContainer; value: int32): void =
  expandMethodBind(className ScrollContainer, "set_h_scroll", 1286410249)
  methodbind.ptrcall(self, [getPtr value])

proc getHScroll*(self: ScrollContainer): int32 =
  expandMethodBind(className ScrollContainer, "get_h_scroll", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setVScroll*(self: ScrollContainer; value: int32): void =
  expandMethodBind(className ScrollContainer, "set_v_scroll", 1286410249)
  methodbind.ptrcall(self, [getPtr value])

proc getVScroll*(self: ScrollContainer): int32 =
  expandMethodBind(className ScrollContainer, "get_v_scroll", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setHorizontalCustomStep*(self: ScrollContainer; value: Float): void =
  expandMethodBind(className ScrollContainer, "set_horizontal_custom_step", 373806689)
  methodbind.ptrcall(self, [getPtr value])

proc getHorizontalCustomStep*(self: ScrollContainer): Float =
  expandMethodBind(className ScrollContainer, "get_horizontal_custom_step", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setVerticalCustomStep*(self: ScrollContainer; value: Float): void =
  expandMethodBind(className ScrollContainer, "set_vertical_custom_step", 373806689)
  methodbind.ptrcall(self, [getPtr value])

proc getVerticalCustomStep*(self: ScrollContainer): Float =
  expandMethodBind(className ScrollContainer, "get_vertical_custom_step", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setHorizontalScrollMode*(self: ScrollContainer; enable: ScrollContainer_ScrollMode): void =
  expandMethodBind(className ScrollContainer, "set_horizontal_scroll_mode", 2750506364)
  methodbind.ptrcall(self, [getPtr enable])

proc getHorizontalScrollMode*(self: ScrollContainer): ScrollContainer_ScrollMode =
  expandMethodBind(className ScrollContainer, "get_horizontal_scroll_mode", 3987985145)
  var ret: encoded ScrollContainer_ScrollMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(ScrollContainer_ScrollMode)

proc setVerticalScrollMode*(self: ScrollContainer; enable: ScrollContainer_ScrollMode): void =
  expandMethodBind(className ScrollContainer, "set_vertical_scroll_mode", 2750506364)
  methodbind.ptrcall(self, [getPtr enable])

proc getVerticalScrollMode*(self: ScrollContainer): ScrollContainer_ScrollMode =
  expandMethodBind(className ScrollContainer, "get_vertical_scroll_mode", 3987985145)
  var ret: encoded ScrollContainer_ScrollMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(ScrollContainer_ScrollMode)

proc setDeadzone*(self: ScrollContainer; deadzone: int32): void =
  expandMethodBind(className ScrollContainer, "set_deadzone", 1286410249)
  methodbind.ptrcall(self, [getPtr deadzone])

proc getDeadzone*(self: ScrollContainer): int32 =
  expandMethodBind(className ScrollContainer, "get_deadzone", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setFollowFocus*(self: ScrollContainer; enabled: bool): void =
  expandMethodBind(className ScrollContainer, "set_follow_focus", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isFollowingFocus*(self: ScrollContainer): bool =
  expandMethodBind(className ScrollContainer, "is_following_focus", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getHScrollBar*(self: ScrollContainer): HScrollBar =
  expandMethodBind(className ScrollContainer, "get_h_scroll_bar", 4004517983)
  var ret: encoded HScrollBar
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(HScrollBar)

proc getVScrollBar*(self: ScrollContainer): VScrollBar =
  expandMethodBind(className ScrollContainer, "get_v_scroll_bar", 2630340773)
  var ret: encoded VScrollBar
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VScrollBar)

proc ensureControlVisible*(self: ScrollContainer; control: Control): void =
  expandMethodBind(className ScrollContainer, "ensure_control_visible", 1496901182)
  methodbind.ptrcall(self, [getPtr control])

template followFocus*(self: ScrollContainer): untyped = self.isFollowingFocus()
template `followFocus=`*(self: ScrollContainer; value) = self.setFollowFocus(value)

template scrollHorizontal*(self: ScrollContainer): untyped = self.getHScroll()
template `scrollHorizontal=`*(self: ScrollContainer; value) = self.setHScroll(value)

template scrollVertical*(self: ScrollContainer): untyped = self.getVScroll()
template `scrollVertical=`*(self: ScrollContainer; value) = self.setVScroll(value)

template scrollHorizontalCustomStep*(self: ScrollContainer): untyped = self.getHorizontalCustomStep()
template `scrollHorizontalCustomStep=`*(self: ScrollContainer; value) = self.setHorizontalCustomStep(value)

template scrollVerticalCustomStep*(self: ScrollContainer): untyped = self.getVerticalCustomStep()
template `scrollVerticalCustomStep=`*(self: ScrollContainer; value) = self.setVerticalCustomStep(value)

template horizontalScrollMode*(self: ScrollContainer): untyped = self.getHorizontalScrollMode()
template `horizontalScrollMode=`*(self: ScrollContainer; value) = self.setHorizontalScrollMode(value)

template verticalScrollMode*(self: ScrollContainer): untyped = self.getVerticalScrollMode()
template `verticalScrollMode=`*(self: ScrollContainer; value) = self.setVerticalScrollMode(value)

template scrollDeadzone*(self: ScrollContainer): untyped = self.getDeadzone()
template `scrollDeadzone=`*(self: ScrollContainer; value) = self.setDeadzone(value)

const ScrollContainer_vmap =
  Container.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ScrollContainer]): Table[string, string] = ScrollContainer_vmap

proc scrollStarted*(self: ScrollContainer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("scroll_started")
  self.emitSignal(signalname)

proc scrollEnded*(self: ScrollContainer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("scroll_ended")
  self.emitSignal(signalname)