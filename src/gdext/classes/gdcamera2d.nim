{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setOffset*(self: Camera2D; offset: Vector2): void =
  expandMethodBind(className Camera2D, "set_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset])

proc getOffset*(self: Camera2D): Vector2 =
  expandMethodBind(className Camera2D, "get_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setAnchorMode*(self: Camera2D; anchorMode: Camera2D_AnchorMode): void =
  expandMethodBind(className Camera2D, "set_anchor_mode", 2050398218)
  methodbind.ptrcall(self, [getPtr anchorMode])

proc getAnchorMode*(self: Camera2D): Camera2D_AnchorMode =
  expandMethodBind(className Camera2D, "get_anchor_mode", 155978067)
  var ret: encoded Camera2D_AnchorMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Camera2D_AnchorMode)

proc setIgnoreRotation*(self: Camera2D; ignore: bool): void =
  expandMethodBind(className Camera2D, "set_ignore_rotation", 2586408642)
  methodbind.ptrcall(self, [getPtr ignore])

proc isIgnoringRotation*(self: Camera2D): bool =
  expandMethodBind(className Camera2D, "is_ignoring_rotation", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setProcessCallback*(self: Camera2D; mode: Camera2D_Camera2DProcessCallback): void =
  expandMethodBind(className Camera2D, "set_process_callback", 4201947462)
  methodbind.ptrcall(self, [getPtr mode])

proc getProcessCallback*(self: Camera2D): Camera2D_Camera2DProcessCallback =
  expandMethodBind(className Camera2D, "get_process_callback", 2325344499)
  var ret: encoded Camera2D_Camera2DProcessCallback
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Camera2D_Camera2DProcessCallback)

proc setEnabled*(self: Camera2D; enabled: bool): void =
  expandMethodBind(className Camera2D, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isEnabled*(self: Camera2D): bool =
  expandMethodBind(className Camera2D, "is_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc makeCurrent*(self: Camera2D): void =
  expandMethodBind(className Camera2D, "make_current", 3218959716)
  methodbind.ptrcall(self, [])

proc isCurrent*(self: Camera2D): bool =
  expandMethodBind(className Camera2D, "is_current", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setLimit*(self: Camera2D; margin: Side; limit: int32): void =
  expandMethodBind(className Camera2D, "set_limit", 437707142)
  methodbind.ptrcall(self, [getPtr margin, getPtr limit])

proc getLimit*(self: Camera2D; margin: Side): int32 =
  expandMethodBind(className Camera2D, "get_limit", 1983885014)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr margin], addr ret)
  (addr ret).decode_result(int32)

proc setLimitSmoothingEnabled*(self: Camera2D; limitSmoothingEnabled: bool): void =
  expandMethodBind(className Camera2D, "set_limit_smoothing_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr limitSmoothingEnabled])

proc isLimitSmoothingEnabled*(self: Camera2D): bool =
  expandMethodBind(className Camera2D, "is_limit_smoothing_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDragVerticalEnabled*(self: Camera2D; enabled: bool): void =
  expandMethodBind(className Camera2D, "set_drag_vertical_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isDragVerticalEnabled*(self: Camera2D): bool =
  expandMethodBind(className Camera2D, "is_drag_vertical_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDragHorizontalEnabled*(self: Camera2D; enabled: bool): void =
  expandMethodBind(className Camera2D, "set_drag_horizontal_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isDragHorizontalEnabled*(self: Camera2D): bool =
  expandMethodBind(className Camera2D, "is_drag_horizontal_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDragVerticalOffset*(self: Camera2D; offset: Float): void =
  expandMethodBind(className Camera2D, "set_drag_vertical_offset", 373806689)
  methodbind.ptrcall(self, [getPtr offset])

proc getDragVerticalOffset*(self: Camera2D): Float =
  expandMethodBind(className Camera2D, "get_drag_vertical_offset", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDragHorizontalOffset*(self: Camera2D; offset: Float): void =
  expandMethodBind(className Camera2D, "set_drag_horizontal_offset", 373806689)
  methodbind.ptrcall(self, [getPtr offset])

proc getDragHorizontalOffset*(self: Camera2D): Float =
  expandMethodBind(className Camera2D, "get_drag_horizontal_offset", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDragMargin*(self: Camera2D; margin: Side; dragMargin: Float): void =
  expandMethodBind(className Camera2D, "set_drag_margin", 4290182280)
  methodbind.ptrcall(self, [getPtr margin, getPtr dragMargin])

proc getDragMargin*(self: Camera2D; margin: Side): Float =
  expandMethodBind(className Camera2D, "get_drag_margin", 2869120046)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr margin], addr ret)
  (addr ret).decode_result(Float)

proc getTargetPosition*(self: Camera2D): Vector2 =
  expandMethodBind(className Camera2D, "get_target_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getScreenCenterPosition*(self: Camera2D): Vector2 =
  expandMethodBind(className Camera2D, "get_screen_center_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setZoom*(self: Camera2D; zoom: Vector2): void =
  expandMethodBind(className Camera2D, "set_zoom", 743155724)
  methodbind.ptrcall(self, [getPtr zoom])

proc getZoom*(self: Camera2D): Vector2 =
  expandMethodBind(className Camera2D, "get_zoom", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setCustomViewport*(self: Camera2D; viewport: Node): void =
  expandMethodBind(className Camera2D, "set_custom_viewport", 1078189570)
  methodbind.ptrcall(self, [getPtr viewport])

proc getCustomViewport*(self: Camera2D): Node =
  expandMethodBind(className Camera2D, "get_custom_viewport", 3160264692)
  var ret: encoded Node
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Node)

proc setPositionSmoothingSpeed*(self: Camera2D; positionSmoothingSpeed: Float): void =
  expandMethodBind(className Camera2D, "set_position_smoothing_speed", 373806689)
  methodbind.ptrcall(self, [getPtr positionSmoothingSpeed])

proc getPositionSmoothingSpeed*(self: Camera2D): Float =
  expandMethodBind(className Camera2D, "get_position_smoothing_speed", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPositionSmoothingEnabled*(self: Camera2D; positionSmoothingSpeed: bool): void =
  expandMethodBind(className Camera2D, "set_position_smoothing_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr positionSmoothingSpeed])

proc isPositionSmoothingEnabled*(self: Camera2D): bool =
  expandMethodBind(className Camera2D, "is_position_smoothing_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setRotationSmoothingEnabled*(self: Camera2D; enabled: bool): void =
  expandMethodBind(className Camera2D, "set_rotation_smoothing_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isRotationSmoothingEnabled*(self: Camera2D): bool =
  expandMethodBind(className Camera2D, "is_rotation_smoothing_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setRotationSmoothingSpeed*(self: Camera2D; speed: Float): void =
  expandMethodBind(className Camera2D, "set_rotation_smoothing_speed", 373806689)
  methodbind.ptrcall(self, [getPtr speed])

proc getRotationSmoothingSpeed*(self: Camera2D): Float =
  expandMethodBind(className Camera2D, "get_rotation_smoothing_speed", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc forceUpdateScroll*(self: Camera2D): void =
  expandMethodBind(className Camera2D, "force_update_scroll", 3218959716)
  methodbind.ptrcall(self, [])

proc resetSmoothing*(self: Camera2D): void =
  expandMethodBind(className Camera2D, "reset_smoothing", 3218959716)
  methodbind.ptrcall(self, [])

proc align*(self: Camera2D): void =
  expandMethodBind(className Camera2D, "align", 3218959716)
  methodbind.ptrcall(self, [])

proc setScreenDrawingEnabled*(self: Camera2D; screenDrawingEnabled: bool): void =
  expandMethodBind(className Camera2D, "set_screen_drawing_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr screenDrawingEnabled])

proc isScreenDrawingEnabled*(self: Camera2D): bool =
  expandMethodBind(className Camera2D, "is_screen_drawing_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setLimitDrawingEnabled*(self: Camera2D; limitDrawingEnabled: bool): void =
  expandMethodBind(className Camera2D, "set_limit_drawing_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr limitDrawingEnabled])

proc isLimitDrawingEnabled*(self: Camera2D): bool =
  expandMethodBind(className Camera2D, "is_limit_drawing_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMarginDrawingEnabled*(self: Camera2D; marginDrawingEnabled: bool): void =
  expandMethodBind(className Camera2D, "set_margin_drawing_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr marginDrawingEnabled])

proc isMarginDrawingEnabled*(self: Camera2D): bool =
  expandMethodBind(className Camera2D, "is_margin_drawing_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

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

const Camera2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Camera2D]): Table[string, string] = Camera2D_vmap