{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

expandOnClassImported(GraphEdit, Control)

method isInInputHotzone*(self: GraphEdit; inNode: Object; inPort: int32; mousePosition: Vector2): bool {.base.} = (discard)
proc registerVirtual_isInInputHotzone*[T: GraphEdit](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_in_input_hotzone"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GraphEdit](p_instance).isInInputHotzone(p_args[0].decode(Object), p_args[1].decode(int32), p_args[2].decode(Vector2)).encode(r_ret)

method isInOutputHotzone*(self: GraphEdit; inNode: Object; inPort: int32; mousePosition: Vector2): bool {.base.} = (discard)
proc registerVirtual_isInOutputHotzone*[T: GraphEdit](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_in_output_hotzone"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GraphEdit](p_instance).isInOutputHotzone(p_args[0].decode(Object), p_args[1].decode(int32), p_args[2].decode(Vector2)).encode(r_ret)

method getConnectionLine*(self: GraphEdit; fromNode: Vector2; toNode: Vector2): PackedVector2Array {.base.} =
  expandMethodBind(className GraphEdit, "get_connection_line", 3932192302)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [getPtr fromNode, getPtr toNode], addr ret)
  (addr ret).decode_result(PackedVector2Array)
proc registerVirtual_getConnectionLine*[T: GraphEdit](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_connection_line"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GraphEdit](p_instance).getConnectionLine(p_args[0].decode(Vector2), p_args[1].decode(Vector2)).encode(r_ret)

method isNodeHoverValid*(self: GraphEdit; fromNode: StringName; fromPort: int32; toNode: StringName; toPort: int32): bool {.base.} = (discard)
proc registerVirtual_isNodeHoverValid*[T: GraphEdit](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_node_hover_valid"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GraphEdit](p_instance).isNodeHoverValid(p_args[0].decode(StringName), p_args[1].decode(int32), p_args[2].decode(StringName), p_args[3].decode(int32)).encode(r_ret)

proc connectNode*(self: GraphEdit; fromNode: StringName; fromPort: int32; toNode: StringName; toPort: int32; keepAlive: bool = false): Error =
  expandMethodBind(className GraphEdit, "connect_node", 1376144231)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort, getPtr keepAlive], addr ret)
  (addr ret).decode_result(Error)

proc isNodeConnected*(self: GraphEdit; fromNode: StringName; fromPort: int32; toNode: StringName; toPort: int32): bool =
  expandMethodBind(className GraphEdit, "is_node_connected", 4216241294)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort], addr ret)
  (addr ret).decode_result(bool)

proc disconnectNode*(self: GraphEdit; fromNode: StringName; fromPort: int32; toNode: StringName; toPort: int32): void =
  expandMethodBind(className GraphEdit, "disconnect_node", 1933654315)
  methodbind.ptrcall(self, [getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort])

proc setConnectionActivity*(self: GraphEdit; fromNode: StringName; fromPort: int32; toNode: StringName; toPort: int32; amount: Float): void =
  expandMethodBind(className GraphEdit, "set_connection_activity", 1141899943)
  methodbind.ptrcall(self, [getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort, getPtr amount])

proc setConnections*(self: GraphEdit; connections: Array[Dictionary]): void =
  expandMethodBind(className GraphEdit, "set_connections", 381264803)
  nilCheck connections
  methodbind.ptrcall(self, [getPtr connections])

proc getConnectionList*(self: GraphEdit): Array[Dictionary] =
  expandMethodBind(className GraphEdit, "get_connection_list", 3995934104)
  var ret: encoded Array[Dictionary]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array[Dictionary])

proc getConnectionCount*(self: GraphEdit; fromNode: StringName; fromPort: int32): int32 =
  expandMethodBind(className GraphEdit, "get_connection_count", 861718734)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr fromNode, getPtr fromPort], addr ret)
  (addr ret).decode_result(int32)

proc getClosestConnectionAtPoint*(self: GraphEdit; point: Vector2; maxDistance: Float = 4.0): Dictionary =
  expandMethodBind(className GraphEdit, "get_closest_connection_at_point", 453879819)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr point, getPtr maxDistance], addr ret)
  (addr ret).decode_result(Dictionary)

proc getConnectionListFromNode*(self: GraphEdit; node: StringName): Array[Dictionary] =
  expandMethodBind(className GraphEdit, "get_connection_list_from_node", 3147814860)
  var ret: encoded Array[Dictionary]
  methodbind.ptrcall(self, [getPtr node], addr ret)
  (addr ret).decode_result(Array[Dictionary])

proc getConnectionsIntersectingWithRect*(self: GraphEdit; rect: Rect2): Array[Dictionary] =
  expandMethodBind(className GraphEdit, "get_connections_intersecting_with_rect", 2709748719)
  var ret: encoded Array[Dictionary]
  methodbind.ptrcall(self, [getPtr rect], addr ret)
  (addr ret).decode_result(Array[Dictionary])

proc clearConnections*(self: GraphEdit): void =
  expandMethodBind(className GraphEdit, "clear_connections", 3218959716)
  methodbind.ptrcall(self, [])

proc forceConnectionDragEnd*(self: GraphEdit): void =
  expandMethodBind(className GraphEdit, "force_connection_drag_end", 3218959716)
  methodbind.ptrcall(self, [])

proc getScrollOffset*(self: GraphEdit): Vector2 =
  expandMethodBind(className GraphEdit, "get_scroll_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setScrollOffset*(self: GraphEdit; offset: Vector2): void =
  expandMethodBind(className GraphEdit, "set_scroll_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset])

proc addValidRightDisconnectType*(self: GraphEdit; `type`: int32): void =
  expandMethodBind(className GraphEdit, "add_valid_right_disconnect_type", 1286410249)
  methodbind.ptrcall(self, [getPtr `type`])

proc removeValidRightDisconnectType*(self: GraphEdit; `type`: int32): void =
  expandMethodBind(className GraphEdit, "remove_valid_right_disconnect_type", 1286410249)
  methodbind.ptrcall(self, [getPtr `type`])

proc addValidLeftDisconnectType*(self: GraphEdit; `type`: int32): void =
  expandMethodBind(className GraphEdit, "add_valid_left_disconnect_type", 1286410249)
  methodbind.ptrcall(self, [getPtr `type`])

proc removeValidLeftDisconnectType*(self: GraphEdit; `type`: int32): void =
  expandMethodBind(className GraphEdit, "remove_valid_left_disconnect_type", 1286410249)
  methodbind.ptrcall(self, [getPtr `type`])

proc addValidConnectionType*(self: GraphEdit; fromType: int32; toType: int32): void =
  expandMethodBind(className GraphEdit, "add_valid_connection_type", 3937882851)
  methodbind.ptrcall(self, [getPtr fromType, getPtr toType])

proc removeValidConnectionType*(self: GraphEdit; fromType: int32; toType: int32): void =
  expandMethodBind(className GraphEdit, "remove_valid_connection_type", 3937882851)
  methodbind.ptrcall(self, [getPtr fromType, getPtr toType])

proc isValidConnectionType*(self: GraphEdit; fromType: int32; toType: int32): bool =
  expandMethodBind(className GraphEdit, "is_valid_connection_type", 2522259332)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr fromType, getPtr toType], addr ret)
  (addr ret).decode_result(bool)

proc attachGraphElementToFrame*(self: GraphEdit; element: StringName; frame: StringName): void =
  expandMethodBind(className GraphEdit, "attach_graph_element_to_frame", 3740211285)
  methodbind.ptrcall(self, [getPtr element, getPtr frame])

proc detachGraphElementFromFrame*(self: GraphEdit; element: StringName): void =
  expandMethodBind(className GraphEdit, "detach_graph_element_from_frame", 3304788590)
  methodbind.ptrcall(self, [getPtr element])

proc getElementFrame*(self: GraphEdit; element: StringName): GraphFrame =
  expandMethodBind(className GraphEdit, "get_element_frame", 988084372)
  var ret: encoded GraphFrame
  methodbind.ptrcall(self, [getPtr element], addr ret)
  (addr ret).decode_result(GraphFrame)

proc getAttachedNodesOfFrame*(self: GraphEdit; frame: StringName): Array[StringName] =
  expandMethodBind(className GraphEdit, "get_attached_nodes_of_frame", 689397652)
  var ret: encoded Array[StringName]
  methodbind.ptrcall(self, [getPtr frame], addr ret)
  (addr ret).decode_result(Array[StringName])

proc setPanningScheme*(self: GraphEdit; scheme: GraphEdit_PanningScheme): void =
  expandMethodBind(className GraphEdit, "set_panning_scheme", 18893313)
  methodbind.ptrcall(self, [getPtr scheme])

proc getPanningScheme*(self: GraphEdit): GraphEdit_PanningScheme =
  expandMethodBind(className GraphEdit, "get_panning_scheme", 549924446)
  var ret: encoded GraphEdit_PanningScheme
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(GraphEdit_PanningScheme)

proc setZoom*(self: GraphEdit; zoom: Float): void =
  expandMethodBind(className GraphEdit, "set_zoom", 373806689)
  methodbind.ptrcall(self, [getPtr zoom])

proc getZoom*(self: GraphEdit): Float =
  expandMethodBind(className GraphEdit, "get_zoom", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setZoomMin*(self: GraphEdit; zoomMin: Float): void =
  expandMethodBind(className GraphEdit, "set_zoom_min", 373806689)
  methodbind.ptrcall(self, [getPtr zoomMin])

proc getZoomMin*(self: GraphEdit): Float =
  expandMethodBind(className GraphEdit, "get_zoom_min", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setZoomMax*(self: GraphEdit; zoomMax: Float): void =
  expandMethodBind(className GraphEdit, "set_zoom_max", 373806689)
  methodbind.ptrcall(self, [getPtr zoomMax])

proc getZoomMax*(self: GraphEdit): Float =
  expandMethodBind(className GraphEdit, "get_zoom_max", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setZoomStep*(self: GraphEdit; zoomStep: Float): void =
  expandMethodBind(className GraphEdit, "set_zoom_step", 373806689)
  methodbind.ptrcall(self, [getPtr zoomStep])

proc getZoomStep*(self: GraphEdit): Float =
  expandMethodBind(className GraphEdit, "get_zoom_step", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setShowGrid*(self: GraphEdit; enable: bool): void =
  expandMethodBind(className GraphEdit, "set_show_grid", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isShowingGrid*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_showing_grid", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setGridPattern*(self: GraphEdit; pattern: GraphEdit_GridPattern): void =
  expandMethodBind(className GraphEdit, "set_grid_pattern", 1074098205)
  methodbind.ptrcall(self, [getPtr pattern])

proc getGridPattern*(self: GraphEdit): GraphEdit_GridPattern =
  expandMethodBind(className GraphEdit, "get_grid_pattern", 1286127528)
  var ret: encoded GraphEdit_GridPattern
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(GraphEdit_GridPattern)

proc setSnappingEnabled*(self: GraphEdit; enable: bool): void =
  expandMethodBind(className GraphEdit, "set_snapping_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isSnappingEnabled*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_snapping_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setSnappingDistance*(self: GraphEdit; pixels: int32): void =
  expandMethodBind(className GraphEdit, "set_snapping_distance", 1286410249)
  methodbind.ptrcall(self, [getPtr pixels])

proc getSnappingDistance*(self: GraphEdit): int32 =
  expandMethodBind(className GraphEdit, "get_snapping_distance", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setConnectionLinesCurvature*(self: GraphEdit; curvature: Float): void =
  expandMethodBind(className GraphEdit, "set_connection_lines_curvature", 373806689)
  methodbind.ptrcall(self, [getPtr curvature])

proc getConnectionLinesCurvature*(self: GraphEdit): Float =
  expandMethodBind(className GraphEdit, "get_connection_lines_curvature", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setConnectionLinesThickness*(self: GraphEdit; pixels: Float): void =
  expandMethodBind(className GraphEdit, "set_connection_lines_thickness", 373806689)
  methodbind.ptrcall(self, [getPtr pixels])

proc getConnectionLinesThickness*(self: GraphEdit): Float =
  expandMethodBind(className GraphEdit, "get_connection_lines_thickness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setConnectionLinesAntialiased*(self: GraphEdit; pixels: bool): void =
  expandMethodBind(className GraphEdit, "set_connection_lines_antialiased", 2586408642)
  methodbind.ptrcall(self, [getPtr pixels])

proc isConnectionLinesAntialiased*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_connection_lines_antialiased", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMinimapSize*(self: GraphEdit; size: Vector2): void =
  expandMethodBind(className GraphEdit, "set_minimap_size", 743155724)
  methodbind.ptrcall(self, [getPtr size])

proc getMinimapSize*(self: GraphEdit): Vector2 =
  expandMethodBind(className GraphEdit, "get_minimap_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setMinimapOpacity*(self: GraphEdit; opacity: Float): void =
  expandMethodBind(className GraphEdit, "set_minimap_opacity", 373806689)
  methodbind.ptrcall(self, [getPtr opacity])

proc getMinimapOpacity*(self: GraphEdit): Float =
  expandMethodBind(className GraphEdit, "get_minimap_opacity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setMinimapEnabled*(self: GraphEdit; enable: bool): void =
  expandMethodBind(className GraphEdit, "set_minimap_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isMinimapEnabled*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_minimap_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setShowMenu*(self: GraphEdit; hidden: bool): void =
  expandMethodBind(className GraphEdit, "set_show_menu", 2586408642)
  methodbind.ptrcall(self, [getPtr hidden])

proc isShowingMenu*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_showing_menu", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setShowZoomLabel*(self: GraphEdit; enable: bool): void =
  expandMethodBind(className GraphEdit, "set_show_zoom_label", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isShowingZoomLabel*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_showing_zoom_label", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setShowGridButtons*(self: GraphEdit; hidden: bool): void =
  expandMethodBind(className GraphEdit, "set_show_grid_buttons", 2586408642)
  methodbind.ptrcall(self, [getPtr hidden])

proc isShowingGridButtons*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_showing_grid_buttons", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setShowZoomButtons*(self: GraphEdit; hidden: bool): void =
  expandMethodBind(className GraphEdit, "set_show_zoom_buttons", 2586408642)
  methodbind.ptrcall(self, [getPtr hidden])

proc isShowingZoomButtons*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_showing_zoom_buttons", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setShowMinimapButton*(self: GraphEdit; hidden: bool): void =
  expandMethodBind(className GraphEdit, "set_show_minimap_button", 2586408642)
  methodbind.ptrcall(self, [getPtr hidden])

proc isShowingMinimapButton*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_showing_minimap_button", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setShowArrangeButton*(self: GraphEdit; hidden: bool): void =
  expandMethodBind(className GraphEdit, "set_show_arrange_button", 2586408642)
  methodbind.ptrcall(self, [getPtr hidden])

proc isShowingArrangeButton*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_showing_arrange_button", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setRightDisconnects*(self: GraphEdit; enable: bool): void =
  expandMethodBind(className GraphEdit, "set_right_disconnects", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isRightDisconnectsEnabled*(self: GraphEdit): bool =
  expandMethodBind(className GraphEdit, "is_right_disconnects_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setTypeNames*(self: GraphEdit; typeNames: Dictionary): void =
  expandMethodBind(className GraphEdit, "set_type_names", 4155329257)
  nilCheck typeNames
  methodbind.ptrcall(self, [getPtr typeNames])

proc getTypeNames*(self: GraphEdit): Dictionary =
  expandMethodBind(className GraphEdit, "get_type_names", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary)

proc getMenuHbox*(self: GraphEdit): HBoxContainer =
  expandMethodBind(className GraphEdit, "get_menu_hbox", 3590609951)
  var ret: encoded HBoxContainer
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(HBoxContainer)

proc arrangeNodes*(self: GraphEdit): void =
  expandMethodBind(className GraphEdit, "arrange_nodes", 3218959716)
  methodbind.ptrcall(self, [])

proc setSelected*(self: GraphEdit; node: Node): void =
  expandMethodBind(className GraphEdit, "set_selected", 1078189570)
  methodbind.ptrcall(self, [getPtr node])

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

template typeNames*(self: GraphEdit): untyped = self.getTypeNames()
template `typeNames=`*(self: GraphEdit; value) = self.setTypeNames(value)

template connectionLinesCurvature*(self: GraphEdit): untyped = self.getConnectionLinesCurvature()
template `connectionLinesCurvature=`*(self: GraphEdit; value) = self.setConnectionLinesCurvature(value)

template connectionLinesThickness*(self: GraphEdit): untyped = self.getConnectionLinesThickness()
template `connectionLinesThickness=`*(self: GraphEdit; value) = self.setConnectionLinesThickness(value)

template connectionLinesAntialiased*(self: GraphEdit): untyped = self.isConnectionLinesAntialiased()
template `connectionLinesAntialiased=`*(self: GraphEdit; value) = self.setConnectionLinesAntialiased(value)

template connections*(self: GraphEdit): untyped = self.getConnectionList()
template `connections=`*(self: GraphEdit; value) = self.setConnections(value)

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
