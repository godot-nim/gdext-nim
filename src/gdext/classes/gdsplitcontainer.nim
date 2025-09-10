{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer
export SplitContainer

proc setSplitOffset*(self: SplitContainer; offset: int32): void =
  expandMethodBind(className SplitContainer, "set_split_offset", 1286410249)
  methodbind.ptrcall(self, [getPtr offset])

proc getSplitOffset*(self: SplitContainer): int32 =
  expandMethodBind(className SplitContainer, "get_split_offset", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc clampSplitOffset*(self: SplitContainer): void =
  expandMethodBind(className SplitContainer, "clamp_split_offset", 3218959716)
  methodbind.ptrcall(self, [])

proc setCollapsed*(self: SplitContainer; collapsed: bool): void =
  expandMethodBind(className SplitContainer, "set_collapsed", 2586408642)
  methodbind.ptrcall(self, [getPtr collapsed])

proc isCollapsed*(self: SplitContainer): bool =
  expandMethodBind(className SplitContainer, "is_collapsed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDraggerVisibility*(self: SplitContainer; mode: SplitContainer_DraggerVisibility): void =
  expandMethodBind(className SplitContainer, "set_dragger_visibility", 1168273952)
  methodbind.ptrcall(self, [getPtr mode])

proc getDraggerVisibility*(self: SplitContainer): SplitContainer_DraggerVisibility =
  expandMethodBind(className SplitContainer, "get_dragger_visibility", 967297479)
  var ret: encoded SplitContainer_DraggerVisibility
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(SplitContainer_DraggerVisibility)

proc setVertical*(self: SplitContainer; vertical: bool): void =
  expandMethodBind(className SplitContainer, "set_vertical", 2586408642)
  methodbind.ptrcall(self, [getPtr vertical])

proc isVertical*(self: SplitContainer): bool =
  expandMethodBind(className SplitContainer, "is_vertical", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDraggingEnabled*(self: SplitContainer; draggingEnabled: bool): void =
  expandMethodBind(className SplitContainer, "set_dragging_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr draggingEnabled])

proc isDraggingEnabled*(self: SplitContainer): bool =
  expandMethodBind(className SplitContainer, "is_dragging_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDragAreaMarginBegin*(self: SplitContainer; margin: int32): void =
  expandMethodBind(className SplitContainer, "set_drag_area_margin_begin", 1286410249)
  methodbind.ptrcall(self, [getPtr margin])

proc getDragAreaMarginBegin*(self: SplitContainer): int32 =
  expandMethodBind(className SplitContainer, "get_drag_area_margin_begin", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setDragAreaMarginEnd*(self: SplitContainer; margin: int32): void =
  expandMethodBind(className SplitContainer, "set_drag_area_margin_end", 1286410249)
  methodbind.ptrcall(self, [getPtr margin])

proc getDragAreaMarginEnd*(self: SplitContainer): int32 =
  expandMethodBind(className SplitContainer, "get_drag_area_margin_end", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setDragAreaOffset*(self: SplitContainer; offset: int32): void =
  expandMethodBind(className SplitContainer, "set_drag_area_offset", 1286410249)
  methodbind.ptrcall(self, [getPtr offset])

proc getDragAreaOffset*(self: SplitContainer): int32 =
  expandMethodBind(className SplitContainer, "get_drag_area_offset", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setDragAreaHighlightInEditor*(self: SplitContainer; dragAreaHighlightInEditor: bool): void =
  expandMethodBind(className SplitContainer, "set_drag_area_highlight_in_editor", 2586408642)
  methodbind.ptrcall(self, [getPtr dragAreaHighlightInEditor])

proc isDragAreaHighlightInEditorEnabled*(self: SplitContainer): bool =
  expandMethodBind(className SplitContainer, "is_drag_area_highlight_in_editor_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getDragAreaControl*(self: SplitContainer): Control =
  expandMethodBind(className SplitContainer, "get_drag_area_control", 829782337)
  var ret: encoded Control
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Control)

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

template dragAreaMarginBegin*(self: SplitContainer): untyped = self.getDragAreaMarginBegin()
template `dragAreaMarginBegin=`*(self: SplitContainer; value) = self.setDragAreaMarginBegin(value)

template dragAreaMarginEnd*(self: SplitContainer): untyped = self.getDragAreaMarginEnd()
template `dragAreaMarginEnd=`*(self: SplitContainer; value) = self.setDragAreaMarginEnd(value)

template dragAreaOffset*(self: SplitContainer): untyped = self.getDragAreaOffset()
template `dragAreaOffset=`*(self: SplitContainer; value) = self.setDragAreaOffset(value)

template dragAreaHighlightInEditor*(self: SplitContainer): untyped = self.isDragAreaHighlightInEditorEnabled()
template `dragAreaHighlightInEditor=`*(self: SplitContainer; value) = self.setDragAreaHighlightInEditor(value)
