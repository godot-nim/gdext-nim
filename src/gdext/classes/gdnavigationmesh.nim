{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(NavigationMesh, Resource)

proc setSamplePartitionType*(self: NavigationMesh; samplePartitionType: NavigationMesh_SamplePartitionType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_sample_partition_type", 2472437533)
  methodbind.ptrcall(self, [getPtr samplePartitionType], void)

proc getSamplePartitionType*(self: NavigationMesh): NavigationMesh_SamplePartitionType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_sample_partition_type", 833513918)
  methodbind.ptrcall(self, [], NavigationMesh_SamplePartitionType)

proc setParsedGeometryType*(self: NavigationMesh; geometryType: NavigationMesh_ParsedGeometryType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_parsed_geometry_type", 3064713163)
  methodbind.ptrcall(self, [getPtr geometryType], void)

proc getParsedGeometryType*(self: NavigationMesh): NavigationMesh_ParsedGeometryType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_parsed_geometry_type", 3928011953)
  methodbind.ptrcall(self, [], NavigationMesh_ParsedGeometryType)

proc setCollisionMask*(self: NavigationMesh; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getCollisionMask*(self: NavigationMesh): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_collision_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setCollisionMaskValue*(self: NavigationMesh; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_collision_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getCollisionMaskValue*(self: NavigationMesh; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_collision_mask_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setSourceGeometryMode*(self: NavigationMesh; mask: NavigationMesh_SourceGeometryMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_source_geometry_mode", 2700825194)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getSourceGeometryMode*(self: NavigationMesh): NavigationMesh_SourceGeometryMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_source_geometry_mode", 2770484141)
  methodbind.ptrcall(self, [], NavigationMesh_SourceGeometryMode)

proc setSourceGroupName*(self: NavigationMesh; mask: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_source_group_name", 3304788590)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getSourceGroupName*(self: NavigationMesh): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_source_group_name", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setCellSize*(self: NavigationMesh; cellSize: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_cell_size", 373806689)
  methodbind.ptrcall(self, [getPtr cellSize], void)

proc getCellSize*(self: NavigationMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_cell_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setCellHeight*(self: NavigationMesh; cellHeight: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_cell_height", 373806689)
  methodbind.ptrcall(self, [getPtr cellHeight], void)

proc getCellHeight*(self: NavigationMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_cell_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setBorderSize*(self: NavigationMesh; borderSize: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_border_size", 373806689)
  methodbind.ptrcall(self, [getPtr borderSize], void)

proc getBorderSize*(self: NavigationMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_border_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAgentHeight*(self: NavigationMesh; agentHeight: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_agent_height", 373806689)
  methodbind.ptrcall(self, [getPtr agentHeight], void)

proc getAgentHeight*(self: NavigationMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_agent_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAgentRadius*(self: NavigationMesh; agentRadius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_agent_radius", 373806689)
  methodbind.ptrcall(self, [getPtr agentRadius], void)

proc getAgentRadius*(self: NavigationMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_agent_radius", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setAgentMaxClimb*(self: NavigationMesh; agentMaxClimb: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_agent_max_climb", 373806689)
  methodbind.ptrcall(self, [getPtr agentMaxClimb], void)

proc getAgentMaxClimb*(self: NavigationMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_agent_max_climb", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAgentMaxSlope*(self: NavigationMesh; agentMaxSlope: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_agent_max_slope", 373806689)
  methodbind.ptrcall(self, [getPtr agentMaxSlope], void)

proc getAgentMaxSlope*(self: NavigationMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_agent_max_slope", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRegionMinSize*(self: NavigationMesh; regionMinSize: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_region_min_size", 373806689)
  methodbind.ptrcall(self, [getPtr regionMinSize], void)

proc getRegionMinSize*(self: NavigationMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_region_min_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRegionMergeSize*(self: NavigationMesh; regionMergeSize: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_region_merge_size", 373806689)
  methodbind.ptrcall(self, [getPtr regionMergeSize], void)

proc getRegionMergeSize*(self: NavigationMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_region_merge_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setEdgeMaxLength*(self: NavigationMesh; edgeMaxLength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_edge_max_length", 373806689)
  methodbind.ptrcall(self, [getPtr edgeMaxLength], void)

proc getEdgeMaxLength*(self: NavigationMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_edge_max_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setEdgeMaxError*(self: NavigationMesh; edgeMaxError: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_edge_max_error", 373806689)
  methodbind.ptrcall(self, [getPtr edgeMaxError], void)

proc getEdgeMaxError*(self: NavigationMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_edge_max_error", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVerticesPerPolygon*(self: NavigationMesh; verticesPerPolygon: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_vertices_per_polygon", 373806689)
  methodbind.ptrcall(self, [getPtr verticesPerPolygon], void)

proc getVerticesPerPolygon*(self: NavigationMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_vertices_per_polygon", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDetailSampleDistance*(self: NavigationMesh; detailSampleDist: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_detail_sample_distance", 373806689)
  methodbind.ptrcall(self, [getPtr detailSampleDist], void)

proc getDetailSampleDistance*(self: NavigationMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_detail_sample_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDetailSampleMaxError*(self: NavigationMesh; detailSampleMaxError: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_detail_sample_max_error", 373806689)
  methodbind.ptrcall(self, [getPtr detailSampleMaxError], void)

proc getDetailSampleMaxError*(self: NavigationMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_detail_sample_max_error", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFilterLowHangingObstacles*(self: NavigationMesh; filterLowHangingObstacles: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_filter_low_hanging_obstacles", 2586408642)
  methodbind.ptrcall(self, [getPtr filterLowHangingObstacles], void)

proc getFilterLowHangingObstacles*(self: NavigationMesh): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_filter_low_hanging_obstacles", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFilterLedgeSpans*(self: NavigationMesh; filterLedgeSpans: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_filter_ledge_spans", 2586408642)
  methodbind.ptrcall(self, [getPtr filterLedgeSpans], void)

proc getFilterLedgeSpans*(self: NavigationMesh): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_filter_ledge_spans", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFilterWalkableLowHeightSpans*(self: NavigationMesh; filterWalkableLowHeightSpans: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_filter_walkable_low_height_spans", 2586408642)
  methodbind.ptrcall(self, [getPtr filterWalkableLowHeightSpans], void)

proc getFilterWalkableLowHeightSpans*(self: NavigationMesh): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_filter_walkable_low_height_spans", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFilterBakingAabb*(self: NavigationMesh; bakingAabb: AABB): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_filter_baking_aabb", 259215842)
  methodbind.ptrcall(self, [getPtr bakingAabb], void)

proc getFilterBakingAabb*(self: NavigationMesh): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_filter_baking_aabb", 1068685055)
  methodbind.ptrcall(self, [], AABB)

proc setFilterBakingAabbOffset*(self: NavigationMesh; bakingAabbOffset: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_filter_baking_aabb_offset", 3460891852)
  methodbind.ptrcall(self, [getPtr bakingAabbOffset], void)

proc getFilterBakingAabbOffset*(self: NavigationMesh): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_filter_baking_aabb_offset", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setVertices*(self: NavigationMesh; vertices: PackedVector3Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "set_vertices", 334873810)
  methodbind.ptrcall(self, [getPtr vertices], void)

proc getVertices*(self: NavigationMesh): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_vertices", 497664490)
  methodbind.ptrcall(self, [], PackedVector3Array)

proc addPolygon*(self: NavigationMesh; polygon: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "add_polygon", 3614634198)
  methodbind.ptrcall(self, [getPtr polygon], void)

proc getPolygonCount*(self: NavigationMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_polygon_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getPolygon*(self: NavigationMesh; idx: int32): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "get_polygon", 3668444399)
  methodbind.ptrcall(self, [getPtr idx], PackedInt32Array)

proc clearPolygons*(self: NavigationMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "clear_polygons", 3218959716)
  methodbind.ptrcall(self, [], void)

proc createFromMesh*(self: NavigationMesh; mesh: gdref Mesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "create_from_mesh", 194775623)
  methodbind.ptrcall(self, [getPtr mesh], void)

proc clear*(self: NavigationMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMesh, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

template vertices*(self: NavigationMesh): untyped = self.getVertices()
template `vertices=`*(self: NavigationMesh; value) = self.setVertices(value)

template polygons*(self: NavigationMesh): untyped = self.getPolygons()
template `polygons=`*(self: NavigationMesh; value) = self.setPolygons(value)

template samplePartitionType*(self: NavigationMesh): untyped = self.getSamplePartitionType()
template `samplePartitionType=`*(self: NavigationMesh; value) = self.setSamplePartitionType(value)

template geometryParsedGeometryType*(self: NavigationMesh): untyped = self.getParsedGeometryType()
template `geometryParsedGeometryType=`*(self: NavigationMesh; value) = self.setParsedGeometryType(value)

template geometryCollisionMask*(self: NavigationMesh): untyped = self.getCollisionMask()
template `geometryCollisionMask=`*(self: NavigationMesh; value) = self.setCollisionMask(value)

template geometrySourceGeometryMode*(self: NavigationMesh): untyped = self.getSourceGeometryMode()
template `geometrySourceGeometryMode=`*(self: NavigationMesh; value) = self.setSourceGeometryMode(value)

template geometrySourceGroupName*(self: NavigationMesh): untyped = self.getSourceGroupName()
template `geometrySourceGroupName=`*(self: NavigationMesh; value) = self.setSourceGroupName(value)

template cellSize*(self: NavigationMesh): untyped = self.getCellSize()
template `cellSize=`*(self: NavigationMesh; value) = self.setCellSize(value)

template cellHeight*(self: NavigationMesh): untyped = self.getCellHeight()
template `cellHeight=`*(self: NavigationMesh; value) = self.setCellHeight(value)

template borderSize*(self: NavigationMesh): untyped = self.getBorderSize()
template `borderSize=`*(self: NavigationMesh; value) = self.setBorderSize(value)

template agentHeight*(self: NavigationMesh): untyped = self.getAgentHeight()
template `agentHeight=`*(self: NavigationMesh; value) = self.setAgentHeight(value)

template agentRadius*(self: NavigationMesh): untyped = self.getAgentRadius()
template `agentRadius=`*(self: NavigationMesh; value) = self.setAgentRadius(value)

template agentMaxClimb*(self: NavigationMesh): untyped = self.getAgentMaxClimb()
template `agentMaxClimb=`*(self: NavigationMesh; value) = self.setAgentMaxClimb(value)

template agentMaxSlope*(self: NavigationMesh): untyped = self.getAgentMaxSlope()
template `agentMaxSlope=`*(self: NavigationMesh; value) = self.setAgentMaxSlope(value)

template regionMinSize*(self: NavigationMesh): untyped = self.getRegionMinSize()
template `regionMinSize=`*(self: NavigationMesh; value) = self.setRegionMinSize(value)

template regionMergeSize*(self: NavigationMesh): untyped = self.getRegionMergeSize()
template `regionMergeSize=`*(self: NavigationMesh; value) = self.setRegionMergeSize(value)

template edgeMaxLength*(self: NavigationMesh): untyped = self.getEdgeMaxLength()
template `edgeMaxLength=`*(self: NavigationMesh; value) = self.setEdgeMaxLength(value)

template edgeMaxError*(self: NavigationMesh): untyped = self.getEdgeMaxError()
template `edgeMaxError=`*(self: NavigationMesh; value) = self.setEdgeMaxError(value)

template verticesPerPolygon*(self: NavigationMesh): untyped = self.getVerticesPerPolygon()
template `verticesPerPolygon=`*(self: NavigationMesh; value) = self.setVerticesPerPolygon(value)

template detailSampleDistance*(self: NavigationMesh): untyped = self.getDetailSampleDistance()
template `detailSampleDistance=`*(self: NavigationMesh; value) = self.setDetailSampleDistance(value)

template detailSampleMaxError*(self: NavigationMesh): untyped = self.getDetailSampleMaxError()
template `detailSampleMaxError=`*(self: NavigationMesh; value) = self.setDetailSampleMaxError(value)

template filterLowHangingObstacles*(self: NavigationMesh): untyped = self.getFilterLowHangingObstacles()
template `filterLowHangingObstacles=`*(self: NavigationMesh; value) = self.setFilterLowHangingObstacles(value)

template filterLedgeSpans*(self: NavigationMesh): untyped = self.getFilterLedgeSpans()
template `filterLedgeSpans=`*(self: NavigationMesh; value) = self.setFilterLedgeSpans(value)

template filterWalkableLowHeightSpans*(self: NavigationMesh): untyped = self.getFilterWalkableLowHeightSpans()
template `filterWalkableLowHeightSpans=`*(self: NavigationMesh; value) = self.setFilterWalkableLowHeightSpans(value)

template filterBakingAabb*(self: NavigationMesh): untyped = self.getFilterBakingAabb()
template `filterBakingAabb=`*(self: NavigationMesh; value) = self.setFilterBakingAabb(value)

template filterBakingAabbOffset*(self: NavigationMesh): untyped = self.getFilterBakingAabbOffset()
template `filterBakingAabbOffset=`*(self: NavigationMesh; value) = self.setFilterBakingAabbOffset(value)
