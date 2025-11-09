{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

expandOnClassImported(ScrollContainer, Container)

proc setHScroll*(self: ScrollContainer; value: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "set_h_scroll", 1286410249)
  methodbind.ptrcall(self, [getPtr value], void)

proc getHScroll*(self: ScrollContainer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "get_h_scroll", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setVScroll*(self: ScrollContainer; value: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "set_v_scroll", 1286410249)
  methodbind.ptrcall(self, [getPtr value], void)

proc getVScroll*(self: ScrollContainer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "get_v_scroll", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setHorizontalCustomStep*(self: ScrollContainer; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "set_horizontal_custom_step", 373806689)
  methodbind.ptrcall(self, [getPtr value], void)

proc getHorizontalCustomStep*(self: ScrollContainer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "get_horizontal_custom_step", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVerticalCustomStep*(self: ScrollContainer; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "set_vertical_custom_step", 373806689)
  methodbind.ptrcall(self, [getPtr value], void)

proc getVerticalCustomStep*(self: ScrollContainer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "get_vertical_custom_step", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHorizontalScrollMode*(self: ScrollContainer; enable: ScrollContainer_ScrollMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "set_horizontal_scroll_mode", 2750506364)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getHorizontalScrollMode*(self: ScrollContainer): ScrollContainer_ScrollMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "get_horizontal_scroll_mode", 3987985145)
  methodbind.ptrcall(self, [], ScrollContainer_ScrollMode)

proc setVerticalScrollMode*(self: ScrollContainer; enable: ScrollContainer_ScrollMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "set_vertical_scroll_mode", 2750506364)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getVerticalScrollMode*(self: ScrollContainer): ScrollContainer_ScrollMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "get_vertical_scroll_mode", 3987985145)
  methodbind.ptrcall(self, [], ScrollContainer_ScrollMode)

proc setDeadzone*(self: ScrollContainer; deadzone: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "set_deadzone", 1286410249)
  methodbind.ptrcall(self, [getPtr deadzone], void)

proc getDeadzone*(self: ScrollContainer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "get_deadzone", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setFollowFocus*(self: ScrollContainer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "set_follow_focus", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isFollowingFocus*(self: ScrollContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "is_following_focus", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getHScrollBar*(self: ScrollContainer): HScrollBar =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "get_h_scroll_bar", 4004517983)
  methodbind.ptrcall(self, [], HScrollBar)

proc getVScrollBar*(self: ScrollContainer): VScrollBar =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "get_v_scroll_bar", 2630340773)
  methodbind.ptrcall(self, [], VScrollBar)

proc ensureControlVisible*(self: ScrollContainer; control: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "ensure_control_visible", 1496901182)
  methodbind.ptrcall(self, [getPtr control], void)

proc setDrawFocusBorder*(self: ScrollContainer; draw: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "set_draw_focus_border", 2586408642)
  methodbind.ptrcall(self, [getPtr draw], void)

proc getDrawFocusBorder*(self: ScrollContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollContainer, "get_draw_focus_border", 2240911060)
  methodbind.ptrcall(self, [], bool)

template followFocus*(self: ScrollContainer): untyped = self.isFollowingFocus()
template `followFocus=`*(self: ScrollContainer; value) = self.setFollowFocus(value)

template drawFocusBorder*(self: ScrollContainer): untyped = self.getDrawFocusBorder()
template `drawFocusBorder=`*(self: ScrollContainer; value) = self.setDrawFocusBorder(value)

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
