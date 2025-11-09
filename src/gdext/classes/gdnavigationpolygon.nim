{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(NavigationPolygon, Resource)

proc setVertices*(self: NavigationPolygon; vertices: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "set_vertices", 1509147220)
  methodbind.ptrcall(self, [getPtr vertices], void)

proc getVertices*(self: NavigationPolygon): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "get_vertices", 2961356807)
  methodbind.ptrcall(self, [], PackedVector2Array)

proc addPolygon*(self: NavigationPolygon; polygon: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "add_polygon", 3614634198)
  methodbind.ptrcall(self, [getPtr polygon], void)

proc getPolygonCount*(self: NavigationPolygon): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "get_polygon_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getPolygon*(self: NavigationPolygon; idx: int32): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "get_polygon", 3668444399)
  methodbind.ptrcall(self, [getPtr idx], PackedInt32Array)

proc clearPolygons*(self: NavigationPolygon): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "clear_polygons", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getNavigationMesh*(self: NavigationPolygon): gdref NavigationMesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "get_navigation_mesh", 330232164)
  methodbind.ptrcall(self, [], gdref NavigationMesh)

proc addOutline*(self: NavigationPolygon; outline: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "add_outline", 1509147220)
  methodbind.ptrcall(self, [getPtr outline], void)

proc addOutlineAtIndex*(self: NavigationPolygon; outline: PackedVector2Array; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "add_outline_at_index", 1569738947)
  methodbind.ptrcall(self, [getPtr outline, getPtr index], void)

proc getOutlineCount*(self: NavigationPolygon): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "get_outline_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setOutline*(self: NavigationPolygon; idx: int32; outline: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "set_outline", 1201971903)
  methodbind.ptrcall(self, [getPtr idx, getPtr outline], void)

proc getOutline*(self: NavigationPolygon; idx: int32): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "get_outline", 3946907486)
  methodbind.ptrcall(self, [getPtr idx], PackedVector2Array)

proc removeOutline*(self: NavigationPolygon; idx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "remove_outline", 1286410249)
  methodbind.ptrcall(self, [getPtr idx], void)

proc clearOutlines*(self: NavigationPolygon): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "clear_outlines", 3218959716)
  methodbind.ptrcall(self, [], void)

proc makePolygonsFromOutlines*(self: NavigationPolygon): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "make_polygons_from_outlines", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setCellSize*(self: NavigationPolygon; cellSize: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "set_cell_size", 373806689)
  methodbind.ptrcall(self, [getPtr cellSize], void)

proc getCellSize*(self: NavigationPolygon): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "get_cell_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setBorderSize*(self: NavigationPolygon; borderSize: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "set_border_size", 373806689)
  methodbind.ptrcall(self, [getPtr borderSize], void)

proc getBorderSize*(self: NavigationPolygon): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "get_border_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSamplePartitionType*(self: NavigationPolygon; samplePartitionType: NavigationPolygon_SamplePartitionType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "set_sample_partition_type", 2441478482)
  methodbind.ptrcall(self, [getPtr samplePartitionType], void)

proc getSamplePartitionType*(self: NavigationPolygon): NavigationPolygon_SamplePartitionType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "get_sample_partition_type", 3887422851)
  methodbind.ptrcall(self, [], NavigationPolygon_SamplePartitionType)

proc setParsedGeometryType*(self: NavigationPolygon; geometryType: NavigationPolygon_ParsedGeometryType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "set_parsed_geometry_type", 2507971764)
  methodbind.ptrcall(self, [getPtr geometryType], void)

proc getParsedGeometryType*(self: NavigationPolygon): NavigationPolygon_ParsedGeometryType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "get_parsed_geometry_type", 1073219508)
  methodbind.ptrcall(self, [], NavigationPolygon_ParsedGeometryType)

proc setParsedCollisionMask*(self: NavigationPolygon; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "set_parsed_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getParsedCollisionMask*(self: NavigationPolygon): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "get_parsed_collision_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setParsedCollisionMaskValue*(self: NavigationPolygon; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "set_parsed_collision_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getParsedCollisionMaskValue*(self: NavigationPolygon; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "get_parsed_collision_mask_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setSourceGeometryMode*(self: NavigationPolygon; geometryMode: NavigationPolygon_SourceGeometryMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "set_source_geometry_mode", 4002316705)
  methodbind.ptrcall(self, [getPtr geometryMode], void)

proc getSourceGeometryMode*(self: NavigationPolygon): NavigationPolygon_SourceGeometryMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "get_source_geometry_mode", 459686762)
  methodbind.ptrcall(self, [], NavigationPolygon_SourceGeometryMode)

proc setSourceGeometryGroupName*(self: NavigationPolygon; groupName: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "set_source_geometry_group_name", 3304788590)
  methodbind.ptrcall(self, [getPtr groupName], void)

proc getSourceGeometryGroupName*(self: NavigationPolygon): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "get_source_geometry_group_name", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setAgentRadius*(self: NavigationPolygon; agentRadius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "set_agent_radius", 373806689)
  methodbind.ptrcall(self, [getPtr agentRadius], void)

proc getAgentRadius*(self: NavigationPolygon): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "get_agent_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setBakingRect*(self: NavigationPolygon; rect: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "set_baking_rect", 2046264180)
  methodbind.ptrcall(self, [getPtr rect], void)

proc getBakingRect*(self: NavigationPolygon): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "get_baking_rect", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

proc setBakingRectOffset*(self: NavigationPolygon; rectOffset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "set_baking_rect_offset", 743155724)
  methodbind.ptrcall(self, [getPtr rectOffset], void)

proc getBakingRectOffset*(self: NavigationPolygon): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "get_baking_rect_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc clear*(self: NavigationPolygon): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPolygon, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

template vertices*(self: NavigationPolygon): untyped = self.getVertices()
template `vertices=`*(self: NavigationPolygon; value) = self.setVertices(value)

template polygons*(self: NavigationPolygon): untyped = self.getPolygons()
template `polygons=`*(self: NavigationPolygon; value) = self.setPolygons(value)

template outlines*(self: NavigationPolygon): untyped = self.getOutlines()
template `outlines=`*(self: NavigationPolygon; value) = self.setOutlines(value)

template samplePartitionType*(self: NavigationPolygon): untyped = self.getSamplePartitionType()
template `samplePartitionType=`*(self: NavigationPolygon; value) = self.setSamplePartitionType(value)

template parsedGeometryType*(self: NavigationPolygon): untyped = self.getParsedGeometryType()
template `parsedGeometryType=`*(self: NavigationPolygon; value) = self.setParsedGeometryType(value)

template parsedCollisionMask*(self: NavigationPolygon): untyped = self.getParsedCollisionMask()
template `parsedCollisionMask=`*(self: NavigationPolygon; value) = self.setParsedCollisionMask(value)

template sourceGeometryMode*(self: NavigationPolygon): untyped = self.getSourceGeometryMode()
template `sourceGeometryMode=`*(self: NavigationPolygon; value) = self.setSourceGeometryMode(value)

template sourceGeometryGroupName*(self: NavigationPolygon): untyped = self.getSourceGeometryGroupName()
template `sourceGeometryGroupName=`*(self: NavigationPolygon; value) = self.setSourceGeometryGroupName(value)

template cellSize*(self: NavigationPolygon): untyped = self.getCellSize()
template `cellSize=`*(self: NavigationPolygon; value) = self.setCellSize(value)

template borderSize*(self: NavigationPolygon): untyped = self.getBorderSize()
template `borderSize=`*(self: NavigationPolygon; value) = self.setBorderSize(value)

template agentRadius*(self: NavigationPolygon): untyped = self.getAgentRadius()
template `agentRadius=`*(self: NavigationPolygon; value) = self.setAgentRadius(value)

template bakingRect*(self: NavigationPolygon): untyped = self.getBakingRect()
template `bakingRect=`*(self: NavigationPolygon; value) = self.setBakingRect(value)

template bakingRectOffset*(self: NavigationPolygon): untyped = self.getBakingRectOffset()
template `bakingRectOffset=`*(self: NavigationPolygon; value) = self.setBakingRectOffset(value)
