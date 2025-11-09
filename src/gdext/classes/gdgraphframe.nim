{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgraphelement; export gdgraphelement

expandOnClassImported(GraphFrame, GraphElement)

proc setTitle*(self: GraphFrame; title: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphFrame, "set_title", 83702148)
  methodbind.ptrcall(self, [getPtr title], void)

proc getTitle*(self: GraphFrame): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphFrame, "get_title", 201670096)
  methodbind.ptrcall(self, [], String)

proc getTitlebarHbox*(self: GraphFrame): HBoxContainer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphFrame, "get_titlebar_hbox", 3590609951)
  methodbind.ptrcall(self, [], HBoxContainer)

proc setAutoshrinkEnabled*(self: GraphFrame; shrink: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphFrame, "set_autoshrink_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr shrink], void)

proc isAutoshrinkEnabled*(self: GraphFrame): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphFrame, "is_autoshrink_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAutoshrinkMargin*(self: GraphFrame; autoshrinkMargin: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphFrame, "set_autoshrink_margin", 1286410249)
  methodbind.ptrcall(self, [getPtr autoshrinkMargin], void)

proc getAutoshrinkMargin*(self: GraphFrame): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphFrame, "get_autoshrink_margin", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setDragMargin*(self: GraphFrame; dragMargin: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphFrame, "set_drag_margin", 1286410249)
  methodbind.ptrcall(self, [getPtr dragMargin], void)

proc getDragMargin*(self: GraphFrame): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphFrame, "get_drag_margin", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setTintColorEnabled*(self: GraphFrame; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphFrame, "set_tint_color_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isTintColorEnabled*(self: GraphFrame): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphFrame, "is_tint_color_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTintColor*(self: GraphFrame; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphFrame, "set_tint_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getTintColor*(self: GraphFrame): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphFrame, "get_tint_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

template title*(self: GraphFrame): untyped = self.getTitle()
template `title=`*(self: GraphFrame; value) = self.setTitle(value)

template autoshrinkEnabled*(self: GraphFrame): untyped = self.isAutoshrinkEnabled()
template `autoshrinkEnabled=`*(self: GraphFrame; value) = self.setAutoshrinkEnabled(value)

template autoshrinkMargin*(self: GraphFrame): untyped = self.getAutoshrinkMargin()
template `autoshrinkMargin=`*(self: GraphFrame; value) = self.setAutoshrinkMargin(value)

template dragMargin*(self: GraphFrame): untyped = self.getDragMargin()
template `dragMargin=`*(self: GraphFrame; value) = self.setDragMargin(value)

template tintColorEnabled*(self: GraphFrame): untyped = self.isTintColorEnabled()
template `tintColorEnabled=`*(self: GraphFrame; value) = self.setTintColorEnabled(value)

template tintColor*(self: GraphFrame): untyped = self.getTintColor()
template `tintColor=`*(self: GraphFrame; value) = self.setTintColor(value)
