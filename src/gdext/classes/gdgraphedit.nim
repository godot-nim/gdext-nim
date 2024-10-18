{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

method isInInputHotzone*(self: GraphEdit; inNode: Object; inPort: int32; mousePosition: Vector2): bool {.base.} = (discard)
proc isInInputHotzone(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GraphEdit](p_instance).isInInputHotzone(p_args[0].decode(Object), p_args[1].decode(int32), p_args[2].decode(Vector2)).encode(r_ret)
template isInInputHotzone_bind*(_: typedesc[GraphEdit]): ClassCallVirtual = isInInputHotzone

method isInOutputHotzone*(self: GraphEdit; inNode: Object; inPort: int32; mousePosition: Vector2): bool {.base.} = (discard)
proc isInOutputHotzone(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GraphEdit](p_instance).isInOutputHotzone(p_args[0].decode(Object), p_args[1].decode(int32), p_args[2].decode(Vector2)).encode(r_ret)
template isInOutputHotzone_bind*(_: typedesc[GraphEdit]): ClassCallVirtual = isInOutputHotzone

method getConnectionLine*(self: GraphEdit; fromPosition: Vector2; toPosition: Vector2): PackedVector2Array {.base.} = (discard)
proc getConnectionLine(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GraphEdit](p_instance).getConnectionLine(p_args[0].decode(Vector2), p_args[1].decode(Vector2)).encode(r_ret)
template getConnectionLine_bind*(_: typedesc[GraphEdit]): ClassCallVirtual = getConnectionLine

method isNodeHoverValid*(self: GraphEdit; fromNode: StringName; fromPort: int32; toNode: StringName; toPort: int32): bool {.base.} = (discard)
proc isNodeHoverValid(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GraphEdit](p_instance).isNodeHoverValid(p_args[0].decode(StringName), p_args[1].decode(int32), p_args[2].decode(StringName), p_args[3].decode(int32)).encode(r_ret)
template isNodeHoverValid_bind*(_: typedesc[GraphEdit]): ClassCallVirtual = isNodeHoverValid

proc connectNode*(self: GraphEdit; fromNode: StringName; fromPort: int32; toNode: StringName; toPort: int32): Error =
  expandMethodBind(className GraphEdit, "connect_node", 195065850)
  var `?param` = [getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc isNodeConnected*(self: GraphEdit; fromNode: StringName; fromPort: int32; toNode: StringName; toPort: int32): bool =
  expandMethodBind(className GraphEdit, "is_node_connected", 4216241294)
  var `?param` = [getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc disconnectNode*(self: GraphEdit; fromNode: StringName; fromPort: int32; toNode: StringName; toPort: int32): void =
  expandMethodBind(className GraphEdit, "disconnect_node", 1933654315)
  var `?param` = [getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort]
  methodbind.ptrcall(self, addr `?param`[0])

proc setConnectionActivity*(self: GraphEdit; fromNode: StringName; fromPort: int32; toNode: StringName; toPort: int32; amount: Float): void =
  expandMethodBind(className GraphEdit, "set_connection_activity", 1141899943)
  var `?param` = [getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort, getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConnectionList*(self: GraphEdit): TypedArray[Dictionary] =
  expandMethodBind(className GraphEdit, "get_connection_list", 3995934104)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc getClosestConnectionAtPoint*(self: GraphEdit; point: Vector2; maxDistance: Float = 4.0): Dictionary =
  expandMethodBind(className GraphEdit, "get_closest_connection_at_point", 453879819)
  var `?param` = [getPtr point, getPtr maxDistance]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc getConnectionsIntersectingWithRect*(self: GraphEdit; rect: Rect2): TypedArray[Dictionary] =
  expandMethodBind(className GraphEdit, "get_connections_intersecting_with_rect", 2709748719)
  var `?param` = [getPtr rect]
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc clearConnections*(self: GraphEdit): void =
  expandMethodBind(className GraphEdit, "clear_connections", 3218959716)
  methodbind.ptrcall(self, nil)

proc forceConnectionDragEnd*(self: GraphEdit): void =
  expandMethodBind(className GraphEdit, "force_connection_drag_end", 3218959716)
  methodbind.ptrcall(self, nil)

proc getScrollOffset*(self: GraphEdit): Vector2 =
  expandMethodBind(className GraphEdit, "get_scroll_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setScrollOffset*(self: GraphEdit; offset: Vector2): void =
  expandMethodBind(className GraphEdit, "set_scroll_offset", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc addValidRightDisconnectType*(self: GraphEdit; `type`: int32): void =
  expandMethodBind(className GraphEdit, "add_valid_right_disconnect_type", 1286410249)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeValidRightDisconnectType*(self: GraphEdit; `type`: int32): void =
  expandMethodBind(className GraphEdit, "remove_valid_right_disconnect_type", 1286410249)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc addValidLeftDisconnectType*(self: GraphEdit; `type`: int32): void =
  expandMethodBind(className GraphEdit, "add_valid_left_disconnect_type", 1286410249)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeValidLeftDisconnectType*(self: GraphEdit; `type`: int32): void =
  expandMethodBind(className GraphEdit, "remove_valid_left_disconnect_type", 1286410249)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc addValidConnectionType*(self: GraphEdit; fromType: int32; toType: int32): void =
  expandMethodBind(className GraphEdit, "add_valid_connection_type", 3937882851)
  var `?param` = [getPtr fromType, getPtr toType]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeValidConnectionType*(self: GraphEdit; fromType: int32; toType: int32): void =
  expandMethodBind(className GraphEdit, "remove_valid_connection_type", 3937882851)
  var `?param` = [getPtr fromType, getPtr toType]
  methodbind.ptrcall(self, addr `?param`[0])

proc isValidConnectionType*(self: GraphEdit; fromType: int32; toType: int32): bool =
  expandMethodBind(className GraphEdit, "is_valid_connection_type", 2522259332)
  var `?param` = [getPtr fromType, getPtr toType]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getConnectionLine*(self: GraphEdit; fromNode: Vector2; toNode: Vector2): PackedVector2Array =
  expandMethodBind(className GraphEdit, "get_connection_line", 3932192302)
  var `?param` = [getPtr fromNode, getPtr toNode]
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc attachGraphElementToFrame*(self: GraphEdit; element: StringName; frame: StringName): void =
  expandMethodBind(className GraphEdit, "attach_graph_element_to_frame", 3740211285)
  var `?param` = [getPtr element, getPtr frame]
  methodbind.ptrcall(self, addr `?param`[0])

proc detachGraphElementFromFrame*(self: GraphEdit; element: StringName): void =
  expandMethodBind(className GraphEdit, "detach_graph_element_from_frame", 3304788590)
  var `?param` = [getPtr element]
  methodbind.ptrcall(self, addr `?param`[0])

proc getElementFrame*(self: GraphEdit; element: StringName): GraphFrame =
  expandMethodBind(className GraphEdit, "get_element_frame", 988084372)
  var `?param` = [getPtr element]
  var ret: encoded GraphFrame
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(GraphFrame)

proc getAttachedNodesOfFrame*(self: GraphEdit; frame: StringName): TypedArray[StringName] =
  expandMethodBind(className GraphEdit, "get_attached_nodes_of_frame", 689397652)
  var `?param` = [getPtr frame]
  var ret: encoded TypedArray[StringName]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[StringName])

proc setPanningScheme*(self: GraphEdit; scheme: GraphEdit_PanningScheme): void =
  expandMethodBind(className GraphEdit, "set_panning_scheme", 18893313)
  var `?param` = [getPtr scheme]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPanningScheme*(self: GraphEdit): GraphEdit_PanningScheme =
  expandMethodBind(className GraphEdit, "get_panning_scheme", 549924446)
  var ret: encoded GraphEdit_PanningScheme
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(GraphEdit_PanningScheme)

proc setZoom*(self: GraphEdit; zoom: Float): void =
  expandMethodBind(className GraphEdit, "set_zoom", 373806689)
  var `?param` = [getPtr zoom]
  methodbind.ptrcall(self, addr `?param`[0])

proc getZoom*(self: GraphEdit): Float =
  expandMethodBind(className GraphEdit, "get_zoom", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setZoomMin*(self: GraphEdit; zoomMin: Float): void =
  expandMethodBind(className GraphEdit, "set_zoom_min", 373806689)
  var `?param` = [getPtr zoomMin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getZoomMin*(self: GraphEdit): Float =
  expandMethodBind(className GraphEdit, "get_zoom_min", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setZoomMax*(self: GraphEdit; zoomMax: Float): void =
  expandMethodBind(className GraphEdit, "set_zoom_max", 373806689)
  var `?param` = [getPtr zoomMax]
  methodbind.ptrcall(self, addr `?param`[0])

proc getZoomMax*(self: GraphEdit): Float =
  expandMethodBind(className GraphEdit, "get_zoom_max", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setZoomStep*(self: GraphEdit; zoomStep: Float): void =
  expandMethodBind(className GraphEdit, "set_zoom_step", 373806689)
  var `?param` = [getPtr zoomStep]
  methodbind.ptrcall(self, addr `?param`[0])

proc getZoomStep*(self: GraphEdit): Float =
  expandMethodBind(className GraphEdit, "get_zoom_step", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setShowGrid*(self: GraphEdit; enable: bool): void =
  expandMethodBind(className GraphEdit, "set_show_grid", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isShowingGrid*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_showing_grid", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setGridPattern*(self: GraphEdit; pattern: GraphEdit_GridPattern): void =
  expandMethodBind(className GraphEdit, "set_grid_pattern", 1074098205)
  var `?param` = [getPtr pattern]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGridPattern*(self: GraphEdit): GraphEdit_GridPattern =
  expandMethodBind(className GraphEdit, "get_grid_pattern", 1286127528)
  var ret: encoded GraphEdit_GridPattern
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(GraphEdit_GridPattern)

proc setSnappingEnabled*(self: GraphEdit; enable: bool): void =
  expandMethodBind(className GraphEdit, "set_snapping_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSnappingEnabled*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_snapping_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSnappingDistance*(self: GraphEdit; pixels: int32): void =
  expandMethodBind(className GraphEdit, "set_snapping_distance", 1286410249)
  var `?param` = [getPtr pixels]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSnappingDistance*(self: GraphEdit): int32 =
  expandMethodBind(className GraphEdit, "get_snapping_distance", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setConnectionLinesCurvature*(self: GraphEdit; curvature: Float): void =
  expandMethodBind(className GraphEdit, "set_connection_lines_curvature", 373806689)
  var `?param` = [getPtr curvature]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConnectionLinesCurvature*(self: GraphEdit): Float =
  expandMethodBind(className GraphEdit, "get_connection_lines_curvature", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setConnectionLinesThickness*(self: GraphEdit; pixels: Float): void =
  expandMethodBind(className GraphEdit, "set_connection_lines_thickness", 373806689)
  var `?param` = [getPtr pixels]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConnectionLinesThickness*(self: GraphEdit): Float =
  expandMethodBind(className GraphEdit, "get_connection_lines_thickness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setConnectionLinesAntialiased*(self: GraphEdit; pixels: bool): void =
  expandMethodBind(className GraphEdit, "set_connection_lines_antialiased", 2586408642)
  var `?param` = [getPtr pixels]
  methodbind.ptrcall(self, addr `?param`[0])

proc isConnectionLinesAntialiased*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_connection_lines_antialiased", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMinimapSize*(self: GraphEdit; size: Vector2): void =
  expandMethodBind(className GraphEdit, "set_minimap_size", 743155724)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMinimapSize*(self: GraphEdit): Vector2 =
  expandMethodBind(className GraphEdit, "get_minimap_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setMinimapOpacity*(self: GraphEdit; opacity: Float): void =
  expandMethodBind(className GraphEdit, "set_minimap_opacity", 373806689)
  var `?param` = [getPtr opacity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMinimapOpacity*(self: GraphEdit): Float =
  expandMethodBind(className GraphEdit, "get_minimap_opacity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMinimapEnabled*(self: GraphEdit; enable: bool): void =
  expandMethodBind(className GraphEdit, "set_minimap_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isMinimapEnabled*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_minimap_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setShowMenu*(self: GraphEdit; hidden: bool): void =
  expandMethodBind(className GraphEdit, "set_show_menu", 2586408642)
  var `?param` = [getPtr hidden]
  methodbind.ptrcall(self, addr `?param`[0])

proc isShowingMenu*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_showing_menu", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setShowZoomLabel*(self: GraphEdit; enable: bool): void =
  expandMethodBind(className GraphEdit, "set_show_zoom_label", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isShowingZoomLabel*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_showing_zoom_label", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setShowGridButtons*(self: GraphEdit; hidden: bool): void =
  expandMethodBind(className GraphEdit, "set_show_grid_buttons", 2586408642)
  var `?param` = [getPtr hidden]
  methodbind.ptrcall(self, addr `?param`[0])

proc isShowingGridButtons*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_showing_grid_buttons", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setShowZoomButtons*(self: GraphEdit; hidden: bool): void =
  expandMethodBind(className GraphEdit, "set_show_zoom_buttons", 2586408642)
  var `?param` = [getPtr hidden]
  methodbind.ptrcall(self, addr `?param`[0])

proc isShowingZoomButtons*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_showing_zoom_buttons", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setShowMinimapButton*(self: GraphEdit; hidden: bool): void =
  expandMethodBind(className GraphEdit, "set_show_minimap_button", 2586408642)
  var `?param` = [getPtr hidden]
  methodbind.ptrcall(self, addr `?param`[0])

proc isShowingMinimapButton*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_showing_minimap_button", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setShowArrangeButton*(self: GraphEdit; hidden: bool): void =
  expandMethodBind(className GraphEdit, "set_show_arrange_button", 2586408642)
  var `?param` = [getPtr hidden]
  methodbind.ptrcall(self, addr `?param`[0])

proc isShowingArrangeButton*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_showing_arrange_button", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setRightDisconnects*(self: GraphEdit; enable: bool): void =
  expandMethodBind(className GraphEdit, "set_right_disconnects", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isRightDisconnectsEnabled*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_right_disconnects_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getMenuHbox*(self: GraphEdit): HBoxContainer =
  expandMethodBind(className GraphEdit, "get_menu_hbox", 3590609951)
  var ret: encoded HBoxContainer
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(HBoxContainer)

proc arrangeNodes*(self: GraphEdit): void =
  expandMethodBind(className GraphEdit, "arrange_nodes", 3218959716)
  methodbind.ptrcall(self, nil)

proc setSelected*(self: GraphEdit; node: Node): void =
  expandMethodBind(className GraphEdit, "set_selected", 1078189570)
  var `?param` = [getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

template scrollOffset*(self: GraphEdit): untyped = self.getScrollOffset()
template `scrollOffset=`*(self: GraphEdit; value) = self.setScrollOffset(value)

template showGrid*(self: GraphEdit): untyped = self.isShowingGrid()
template `showGrid=`*(self: GraphEdit; value) = self.setShowGrid(value)

template gridPattern*(self: GraphEdit): untyped = self.getGridPattern()
template `gridPattern=`*(self: GraphEdit; value) = self.setGridPattern(value)

template snappingEnabled*(self: GraphEdit): untyped = self.isSnappingEnabled()
template `snappingEnabled=`*(self: GraphEdit; value) = self.setSnappingEnabled(value)

template snappingDistance*(self: GraphEdit): untyped = self.getSnappingDistance()
template `snappingDistance=`*(self: GraphEdit; value) = self.setSnappingDistance(value)

template panningScheme*(self: GraphEdit): untyped = self.getPanningScheme()
template `panningScheme=`*(self: GraphEdit; value) = self.setPanningScheme(value)

template rightDisconnects*(self: GraphEdit): untyped = self.isRightDisconnectsEnabled()
template `rightDisconnects=`*(self: GraphEdit; value) = self.setRightDisconnects(value)

template connectionLinesCurvature*(self: GraphEdit): untyped = self.getConnectionLinesCurvature()
template `connectionLinesCurvature=`*(self: GraphEdit; value) = self.setConnectionLinesCurvature(value)

template connectionLinesThickness*(self: GraphEdit): untyped = self.getConnectionLinesThickness()
template `connectionLinesThickness=`*(self: GraphEdit; value) = self.setConnectionLinesThickness(value)

template connectionLinesAntialiased*(self: GraphEdit): untyped = self.isConnectionLinesAntialiased()
template `connectionLinesAntialiased=`*(self: GraphEdit; value) = self.setConnectionLinesAntialiased(value)

template zoom*(self: GraphEdit): untyped = self.getZoom()
template `zoom=`*(self: GraphEdit; value) = self.setZoom(value)

template zoomMin*(self: GraphEdit): untyped = self.getZoomMin()
template `zoomMin=`*(self: GraphEdit; value) = self.setZoomMin(value)

template zoomMax*(self: GraphEdit): untyped = self.getZoomMax()
template `zoomMax=`*(self: GraphEdit; value) = self.setZoomMax(value)

template zoomStep*(self: GraphEdit): untyped = self.getZoomStep()
template `zoomStep=`*(self: GraphEdit; value) = self.setZoomStep(value)

template minimapEnabled*(self: GraphEdit): untyped = self.isMinimapEnabled()
template `minimapEnabled=`*(self: GraphEdit; value) = self.setMinimapEnabled(value)

template minimapSize*(self: GraphEdit): untyped = self.getMinimapSize()
template `minimapSize=`*(self: GraphEdit; value) = self.setMinimapSize(value)

template minimapOpacity*(self: GraphEdit): untyped = self.getMinimapOpacity()
template `minimapOpacity=`*(self: GraphEdit; value) = self.setMinimapOpacity(value)

template showMenu*(self: GraphEdit): untyped = self.isShowingMenu()
template `showMenu=`*(self: GraphEdit; value) = self.setShowMenu(value)

template showZoomLabel*(self: GraphEdit): untyped = self.isShowingZoomLabel()
template `showZoomLabel=`*(self: GraphEdit; value) = self.setShowZoomLabel(value)

template showZoomButtons*(self: GraphEdit): untyped = self.isShowingZoomButtons()
template `showZoomButtons=`*(self: GraphEdit; value) = self.setShowZoomButtons(value)

template showGridButtons*(self: GraphEdit): untyped = self.isShowingGridButtons()
template `showGridButtons=`*(self: GraphEdit; value) = self.setShowGridButtons(value)

template showMinimapButton*(self: GraphEdit): untyped = self.isShowingMinimapButton()
template `showMinimapButton=`*(self: GraphEdit; value) = self.setShowMinimapButton(value)

template showArrangeButton*(self: GraphEdit): untyped = self.isShowingArrangeButton()
template `showArrangeButton=`*(self: GraphEdit; value) = self.setShowArrangeButton(value)

const GraphEdit_vmap =
  Control.vmap.concat toTable {
    "isininputhotzone" : "_is_in_input_hotzone",
    "isinoutputhotzone" : "_is_in_output_hotzone",
    "getconnectionline" : "_get_connection_line",
    "isnodehovervalid" : "_is_node_hover_valid",
    }
template vmap*(_: typedesc[GraphEdit]): Table[string, string] = GraphEdit_vmap

proc connectionRequest*(self: GraphEdit; fromNode: Variant; fromPort: Variant; toNode: Variant; toPort: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("connection_request")
  let args = [fromNode, fromPort, toNode, toPort]
  self.emitSignal(signalname, args)

proc disconnectionRequest*(self: GraphEdit; fromNode: Variant; fromPort: Variant; toNode: Variant; toPort: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("disconnection_request")
  let args = [fromNode, fromPort, toNode, toPort]
  self.emitSignal(signalname, args)

proc connectionToEmpty*(self: GraphEdit; fromNode: Variant; fromPort: Variant; releasePosition: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("connection_to_empty")
  let args = [fromNode, fromPort, releasePosition]
  self.emitSignal(signalname, args)

proc connectionFromEmpty*(self: GraphEdit; toNode: Variant; toPort: Variant; releasePosition: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("connection_from_empty")
  let args = [toNode, toPort, releasePosition]
  self.emitSignal(signalname, args)

proc connectionDragStarted*(self: GraphEdit; fromNode: Variant; fromPort: Variant; isOutput: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("connection_drag_started")
  let args = [fromNode, fromPort, isOutput]
  self.emitSignal(signalname, args)

proc connectionDragEnded*(self: GraphEdit): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("connection_drag_ended")
  self.emitSignal(signalname)

proc copyNodesRequest*(self: GraphEdit): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("copy_nodes_request")
  self.emitSignal(signalname)

proc pasteNodesRequest*(self: GraphEdit): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("paste_nodes_request")
  self.emitSignal(signalname)

proc duplicateNodesRequest*(self: GraphEdit): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("duplicate_nodes_request")
  self.emitSignal(signalname)

proc deleteNodesRequest*(self: GraphEdit; nodes: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("delete_nodes_request")
  let args = [nodes]
  self.emitSignal(signalname, args)

proc nodeSelected*(self: GraphEdit; node: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("node_selected")
  let args = [node]
  self.emitSignal(signalname, args)

proc nodeDeselected*(self: GraphEdit; node: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("node_deselected")
  let args = [node]
  self.emitSignal(signalname, args)

proc frameRectChanged*(self: GraphEdit; frame: Variant; newRect: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("frame_rect_changed")
  let args = [frame, newRect]
  self.emitSignal(signalname, args)

proc popupRequest*(self: GraphEdit; atPosition: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("popup_request")
  let args = [atPosition]
  self.emitSignal(signalname, args)

proc beginNodeMove*(self: GraphEdit): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("begin_node_move")
  self.emitSignal(signalname)

proc endNodeMove*(self: GraphEdit): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("end_node_move")
  self.emitSignal(signalname)

proc graphElementsLinkedToFrameRequest*(self: GraphEdit; elements: Variant; frame: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("graph_elements_linked_to_frame_request")
  let args = [elements, frame]
  self.emitSignal(signalname, args)

proc scrollOffsetChanged*(self: GraphEdit; offset: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("scroll_offset_changed")
  let args = [offset]
  self.emitSignal(signalname, args)