{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(Camera2D, Node2D)

proc setOffset*(self: Camera2D; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getOffset*(self: Camera2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "get_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setAnchorMode*(self: Camera2D; anchorMode: Camera2D_AnchorMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_anchor_mode", 2050398218)
  methodbind.ptrcall(self, [getPtr anchorMode], void)

proc getAnchorMode*(self: Camera2D): Camera2D_AnchorMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "get_anchor_mode", 155978067)
  methodbind.ptrcall(self, [], Camera2D_AnchorMode)

proc setIgnoreRotation*(self: Camera2D; ignore: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_ignore_rotation", 2586408642)
  methodbind.ptrcall(self, [getPtr ignore], void)

proc isIgnoringRotation*(self: Camera2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "is_ignoring_rotation", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setProcessCallback*(self: Camera2D; mode: Camera2D_Camera2DProcessCallback): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_process_callback", 4201947462)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getProcessCallback*(self: Camera2D): Camera2D_Camera2DProcessCallback =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "get_process_callback", 2325344499)
  methodbind.ptrcall(self, [], Camera2D_Camera2DProcessCallback)

proc setEnabled*(self: Camera2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isEnabled*(self: Camera2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "is_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc makeCurrent*(self: Camera2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "make_current", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isCurrent*(self: Camera2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "is_current", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLimitEnabled*(self: Camera2D; limitEnabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_limit_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr limitEnabled], void)

proc isLimitEnabled*(self: Camera2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "is_limit_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLimit*(self: Camera2D; margin: Side; limit: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_limit", 437707142)
  methodbind.ptrcall(self, [getPtr margin, getPtr limit], void)

proc getLimit*(self: Camera2D; margin: Side): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "get_limit", 1983885014)
  methodbind.ptrcall(self, [getPtr margin], int32)

proc setLimitSmoothingEnabled*(self: Camera2D; limitSmoothingEnabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_limit_smoothing_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr limitSmoothingEnabled], void)

proc isLimitSmoothingEnabled*(self: Camera2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "is_limit_smoothing_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDragVerticalEnabled*(self: Camera2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_drag_vertical_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isDragVerticalEnabled*(self: Camera2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "is_drag_vertical_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDragHorizontalEnabled*(self: Camera2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_drag_horizontal_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isDragHorizontalEnabled*(self: Camera2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "is_drag_horizontal_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDragVerticalOffset*(self: Camera2D; offset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_drag_vertical_offset", 373806689)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getDragVerticalOffset*(self: Camera2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "get_drag_vertical_offset", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDragHorizontalOffset*(self: Camera2D; offset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_drag_horizontal_offset", 373806689)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getDragHorizontalOffset*(self: Camera2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "get_drag_horizontal_offset", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDragMargin*(self: Camera2D; margin: Side; dragMargin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_drag_margin", 4290182280)
  methodbind.ptrcall(self, [getPtr margin, getPtr dragMargin], void)

proc getDragMargin*(self: Camera2D; margin: Side): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "get_drag_margin", 2869120046)
  methodbind.ptrcall(self, [getPtr margin], Float)

proc getTargetPosition*(self: Camera2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "get_target_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getScreenCenterPosition*(self: Camera2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "get_screen_center_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getScreenRotation*(self: Camera2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "get_screen_rotation", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setZoom*(self: Camera2D; zoom: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_zoom", 743155724)
  methodbind.ptrcall(self, [getPtr zoom], void)

proc getZoom*(self: Camera2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "get_zoom", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setCustomViewport*(self: Camera2D; viewport: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_custom_viewport", 1078189570)
  methodbind.ptrcall(self, [getPtr viewport], void)

proc getCustomViewport*(self: Camera2D): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "get_custom_viewport", 3160264692)
  methodbind.ptrcall(self, [], Node)

proc setPositionSmoothingSpeed*(self: Camera2D; positionSmoothingSpeed: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_position_smoothing_speed", 373806689)
  methodbind.ptrcall(self, [getPtr positionSmoothingSpeed], void)

proc getPositionSmoothingSpeed*(self: Camera2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "get_position_smoothing_speed", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPositionSmoothingEnabled*(self: Camera2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_position_smoothing_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isPositionSmoothingEnabled*(self: Camera2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "is_position_smoothing_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setRotationSmoothingEnabled*(self: Camera2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_rotation_smoothing_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isRotationSmoothingEnabled*(self: Camera2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "is_rotation_smoothing_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setRotationSmoothingSpeed*(self: Camera2D; speed: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_rotation_smoothing_speed", 373806689)
  methodbind.ptrcall(self, [getPtr speed], void)

proc getRotationSmoothingSpeed*(self: Camera2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "get_rotation_smoothing_speed", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc forceUpdateScroll*(self: Camera2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "force_update_scroll", 3218959716)
  methodbind.ptrcall(self, [], void)

proc resetSmoothing*(self: Camera2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "reset_smoothing", 3218959716)
  methodbind.ptrcall(self, [], void)

proc align*(self: Camera2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "align", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setScreenDrawingEnabled*(self: Camera2D; screenDrawingEnabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_screen_drawing_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr screenDrawingEnabled], void)

proc isScreenDrawingEnabled*(self: Camera2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "is_screen_drawing_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLimitDrawingEnabled*(self: Camera2D; limitDrawingEnabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_limit_drawing_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr limitDrawingEnabled], void)

proc isLimitDrawingEnabled*(self: Camera2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "is_limit_drawing_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMarginDrawingEnabled*(self: Camera2D; marginDrawingEnabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "set_margin_drawing_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr marginDrawingEnabled], void)

proc isMarginDrawingEnabled*(self: Camera2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Camera2D, "is_margin_drawing_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

template offset*(self: Camera2D): untyped = self.getOffset()
template `offset=`*(self: Camera2D; value) = self.setOffset(value)

template anchorMode*(self: Camera2D): untyped = self.getAnchorMode()
template `anchorMode=`*(self: Camera2D; value) = self.setAnchorMode(value)

template ignoreRotation*(self: Camera2D): untyped = self.isIgnoringRotation()
template `ignoreRotation=`*(self: Camera2D; value) = self.setIgnoreRotation(value)

template enabled*(self: Camera2D): untyped = self.isEnabled()
template `enabled=`*(self: Camera2D; value) = self.setEnabled(value)

template zoom*(self: Camera2D): untyped = self.getZoom()
template `zoom=`*(self: Camera2D; value) = self.setZoom(value)

template customViewport*(self: Camera2D): untyped = self.getCustomViewport()
template `customViewport=`*(self: Camera2D; value) = self.setCustomViewport(value)

template processCallback*(self: Camera2D): untyped = self.getProcessCallback()
template `processCallback=`*(self: Camera2D; value) = self.setProcessCallback(value)

template limitEnabled*(self: Camera2D): untyped = self.isLimitEnabled()
template `limitEnabled=`*(self: Camera2D; value) = self.setLimitEnabled(value)

template limitLeft*(self: Camera2D): untyped = self.getLimit(Side(0))
template `limitLeft=`*(self: Camera2D; value) = self.setLimit(Side(0), value)

template limitTop*(self: Camera2D): untyped = self.getLimit(Side(1))
template `limitTop=`*(self: Camera2D; value) = self.setLimit(Side(1), value)

template limitRight*(self: Camera2D): untyped = self.getLimit(Side(2))
template `limitRight=`*(self: Camera2D; value) = self.setLimit(Side(2), value)

template limitBottom*(self: Camera2D): untyped = self.getLimit(Side(3))
template `limitBottom=`*(self: Camera2D; value) = self.setLimit(Side(3), value)

template limitSmoothed*(self: Camera2D): untyped = self.isLimitSmoothingEnabled()
template `limitSmoothed=`*(self: Camera2D; value) = self.setLimitSmoothingEnabled(value)

template positionSmoothingEnabled*(self: Camera2D): untyped = self.isPositionSmoothingEnabled()
template `positionSmoothingEnabled=`*(self: Camera2D; value) = self.setPositionSmoothingEnabled(value)

template positionSmoothingSpeed*(self: Camera2D): untyped = self.getPositionSmoothingSpeed()
template `positionSmoothingSpeed=`*(self: Camera2D; value) = self.setPositionSmoothingSpeed(value)

template rotationSmoothingEnabled*(self: Camera2D): untyped = self.isRotationSmoothingEnabled()
template `rotationSmoothingEnabled=`*(self: Camera2D; value) = self.setRotationSmoothingEnabled(value)

template rotationSmoothingSpeed*(self: Camera2D): untyped = self.getRotationSmoothingSpeed()
template `rotationSmoothingSpeed=`*(self: Camera2D; value) = self.setRotationSmoothingSpeed(value)

template dragHorizontalEnabled*(self: Camera2D): untyped = self.isDragHorizontalEnabled()
template `dragHorizontalEnabled=`*(self: Camera2D; value) = self.setDragHorizontalEnabled(value)

template dragVerticalEnabled*(self: Camera2D): untyped = self.isDragVerticalEnabled()
template `dragVerticalEnabled=`*(self: Camera2D; value) = self.setDragVerticalEnabled(value)

template dragHorizontalOffset*(self: Camera2D): untyped = self.getDragHorizontalOffset()
template `dragHorizontalOffset=`*(self: Camera2D; value) = self.setDragHorizontalOffset(value)

template dragVerticalOffset*(self: Camera2D): untyped = self.getDragVerticalOffset()
template `dragVerticalOffset=`*(self: Camera2D; value) = self.setDragVerticalOffset(value)

template dragLeftMargin*(self: Camera2D): untyped = self.getDragMargin(Side(0))
template `dragLeftMargin=`*(self: Camera2D; value) = self.setDragMargin(Side(0), value)

template dragTopMargin*(self: Camera2D): untyped = self.getDragMargin(Side(1))
template `dragTopMargin=`*(self: Camera2D; value) = self.setDragMargin(Side(1), value)

template dragRightMargin*(self: Camera2D): untyped = self.getDragMargin(Side(2))
template `dragRightMargin=`*(self: Camera2D; value) = self.setDragMargin(Side(2), value)

template dragBottomMargin*(self: Camera2D): untyped = self.getDragMargin(Side(3))
template `dragBottomMargin=`*(self: Camera2D; value) = self.setDragMargin(Side(3), value)

template editorDrawScreen*(self: Camera2D): untyped = self.isScreenDrawingEnabled()
template `editorDrawScreen=`*(self: Camera2D; value) = self.setScreenDrawingEnabled(value)

template editorDrawLimits*(self: Camera2D): untyped = self.isLimitDrawingEnabled()
template `editorDrawLimits=`*(self: Camera2D; value) = self.setLimitDrawingEnabled(value)

template editorDrawDragMargin*(self: Camera2D): untyped = self.isMarginDrawingEnabled()
template `editorDrawDragMargin=`*(self: Camera2D; value) = self.setMarginDrawingEnabled(value)
