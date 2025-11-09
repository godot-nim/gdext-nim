{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

expandOnClassImported(SplitContainer, Container)

proc setSplitOffset*(self: SplitContainer; offset: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "set_split_offset", 1286410249)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getSplitOffset*(self: SplitContainer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "get_split_offset", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc clampSplitOffset*(self: SplitContainer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "clamp_split_offset", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setCollapsed*(self: SplitContainer; collapsed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "set_collapsed", 2586408642)
  methodbind.ptrcall(self, [getPtr collapsed], void)

proc isCollapsed*(self: SplitContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "is_collapsed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDraggerVisibility*(self: SplitContainer; mode: SplitContainer_DraggerVisibility): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "set_dragger_visibility", 1168273952)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getDraggerVisibility*(self: SplitContainer): SplitContainer_DraggerVisibility =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "get_dragger_visibility", 967297479)
  methodbind.ptrcall(self, [], SplitContainer_DraggerVisibility)

proc setVertical*(self: SplitContainer; vertical: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "set_vertical", 2586408642)
  methodbind.ptrcall(self, [getPtr vertical], void)

proc isVertical*(self: SplitContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "is_vertical", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDraggingEnabled*(self: SplitContainer; draggingEnabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "set_dragging_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr draggingEnabled], void)

proc isDraggingEnabled*(self: SplitContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "is_dragging_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDragAreaMarginBegin*(self: SplitContainer; margin: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "set_drag_area_margin_begin", 1286410249)
  methodbind.ptrcall(self, [getPtr margin], void)

proc getDragAreaMarginBegin*(self: SplitContainer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "get_drag_area_margin_begin", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setDragAreaMarginEnd*(self: SplitContainer; margin: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "set_drag_area_margin_end", 1286410249)
  methodbind.ptrcall(self, [getPtr margin], void)

proc getDragAreaMarginEnd*(self: SplitContainer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "get_drag_area_margin_end", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setDragAreaOffset*(self: SplitContainer; offset: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "set_drag_area_offset", 1286410249)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getDragAreaOffset*(self: SplitContainer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "get_drag_area_offset", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setDragAreaHighlightInEditor*(self: SplitContainer; dragAreaHighlightInEditor: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "set_drag_area_highlight_in_editor", 2586408642)
  methodbind.ptrcall(self, [getPtr dragAreaHighlightInEditor], void)

proc isDragAreaHighlightInEditorEnabled*(self: SplitContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "is_drag_area_highlight_in_editor_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getDragAreaControl*(self: SplitContainer): Control =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "get_drag_area_control", 829782337)
  methodbind.ptrcall(self, [], Control)

proc setTouchDraggerEnabled*(self: SplitContainer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "set_touch_dragger_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isTouchDraggerEnabled*(self: SplitContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SplitContainer, "is_touch_dragger_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

template splitOffset*(self: SplitContainer): untyped = self.getSplitOffset()
template `splitOffset=`*(self: SplitContainer; value) = self.setSplitOffset(value)

template collapsed*(self: SplitContainer): untyped = self.isCollapsed()
template `collapsed=`*(self: SplitContainer; value) = self.setCollapsed(value)

template draggingEnabled*(self: SplitContainer): untyped = self.isDraggingEnabled()
template `draggingEnabled=`*(self: SplitContainer; value) = self.setDraggingEnabled(value)

template draggerVisibility*(self: SplitContainer): untyped = self.getDraggerVisibility()
template `draggerVisibility=`*(self: SplitContainer; value) = self.setDraggerVisibility(value)

template vertical*(self: SplitContainer): untyped = self.isVertical()
template `vertical=`*(self: SplitContainer; value) = self.setVertical(value)

template touchDraggerEnabled*(self: SplitContainer): untyped = self.isTouchDraggerEnabled()
template `touchDraggerEnabled=`*(self: SplitContainer; value) = self.setTouchDraggerEnabled(value)

template dragAreaMarginBegin*(self: SplitContainer): untyped = self.getDragAreaMarginBegin()
template `dragAreaMarginBegin=`*(self: SplitContainer; value) = self.setDragAreaMarginBegin(value)

template dragAreaMarginEnd*(self: SplitContainer): untyped = self.getDragAreaMarginEnd()
template `dragAreaMarginEnd=`*(self: SplitContainer; value) = self.setDragAreaMarginEnd(value)

template dragAreaOffset*(self: SplitContainer): untyped = self.getDragAreaOffset()
template `dragAreaOffset=`*(self: SplitContainer; value) = self.setDragAreaOffset(value)

template dragAreaHighlightInEditor*(self: SplitContainer): untyped = self.isDragAreaHighlightInEditorEnabled()
template `dragAreaHighlightInEditor=`*(self: SplitContainer; value) = self.setDragAreaHighlightInEditor(value)
