{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setSamplePartitionType*(self: NavigationMesh; samplePartitionType: NavigationMesh_SamplePartitionType): void =
  expandMethodBind(className NavigationMesh, "set_sample_partition_type", 2472437533)
  var `?param` = [getPtr samplePartitionType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSamplePartitionType*(self: NavigationMesh): NavigationMesh_SamplePartitionType =
  expandMethodBind(className NavigationMesh, "get_sample_partition_type", 833513918)
  var ret: encoded NavigationMesh_SamplePartitionType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NavigationMesh_SamplePartitionType)

proc setParsedGeometryType*(self: NavigationMesh; geometryType: NavigationMesh_ParsedGeometryType): void =
  expandMethodBind(className NavigationMesh, "set_parsed_geometry_type", 3064713163)
  var `?param` = [getPtr geometryType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParsedGeometryType*(self: NavigationMesh): NavigationMesh_ParsedGeometryType =
  expandMethodBind(className NavigationMesh, "get_parsed_geometry_type", 3928011953)
  var ret: encoded NavigationMesh_ParsedGeometryType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NavigationMesh_ParsedGeometryType)

proc setCollisionMask*(self: NavigationMesh; mask: uint32): void =
  expandMethodBind(className NavigationMesh, "set_collision_mask", 1286410249)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMask*(self: NavigationMesh): uint32 =
  expandMethodBind(className NavigationMesh, "get_collision_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setCollisionMaskValue*(self: NavigationMesh; layerNumber: int32; value: bool): void =
  expandMethodBind(className NavigationMesh, "set_collision_mask_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMaskValue*(self: NavigationMesh; layerNumber: int32): bool =
  expandMethodBind(className NavigationMesh, "get_collision_mask_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setSourceGeometryMode*(self: NavigationMesh; mask: NavigationMesh_SourceGeometryMode): void =
  expandMethodBind(className NavigationMesh, "set_source_geometry_mode", 2700825194)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSourceGeometryMode*(self: NavigationMesh): NavigationMesh_SourceGeometryMode =
  expandMethodBind(className NavigationMesh, "get_source_geometry_mode", 2770484141)
  var ret: encoded NavigationMesh_SourceGeometryMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NavigationMesh_SourceGeometryMode)

proc setSourceGroupName*(self: NavigationMesh; mask: StringName): void =
  expandMethodBind(className NavigationMesh, "set_source_group_name", 3304788590)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSourceGroupName*(self: NavigationMesh): StringName =
  expandMethodBind(className NavigationMesh, "get_source_group_name", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setCellSize*(self: NavigationMesh; cellSize: Float): void =
  expandMethodBind(className NavigationMesh, "set_cell_size", 373806689)
  var `?param` = [getPtr cellSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCellSize*(self: NavigationMesh): Float =
  expandMethodBind(className NavigationMesh, "get_cell_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setCellHeight*(self: NavigationMesh; cellHeight: Float): void =
  expandMethodBind(className NavigationMesh, "set_cell_height", 373806689)
  var `?param` = [getPtr cellHeight]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCellHeight*(self: NavigationMesh): Float =
  expandMethodBind(className NavigationMesh, "get_cell_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setBorderSize*(self: NavigationMesh; borderSize: Float): void =
  expandMethodBind(className NavigationMesh, "set_border_size", 373806689)
  var `?param` = [getPtr borderSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBorderSize*(self: NavigationMesh): Float =
  expandMethodBind(className NavigationMesh, "get_border_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAgentHeight*(self: NavigationMesh; agentHeight: Float): void =
  expandMethodBind(className NavigationMesh, "set_agent_height", 373806689)
  var `?param` = [getPtr agentHeight]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAgentHeight*(self: NavigationMesh): Float =
  expandMethodBind(className NavigationMesh, "get_agent_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAgentRadius*(self: NavigationMesh; agentRadius: Float): void =
  expandMethodBind(className NavigationMesh, "set_agent_radius", 373806689)
  var `?param` = [getPtr agentRadius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAgentRadius*(self: NavigationMesh): Float =
  expandMethodBind(className NavigationMesh, "get_agent_radius", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAgentMaxClimb*(self: NavigationMesh; agentMaxClimb: Float): void =
  expandMethodBind(className NavigationMesh, "set_agent_max_climb", 373806689)
  var `?param` = [getPtr agentMaxClimb]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAgentMaxClimb*(self: NavigationMesh): Float =
  expandMethodBind(className NavigationMesh, "get_agent_max_climb", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAgentMaxSlope*(self: NavigationMesh; agentMaxSlope: Float): void =
  expandMethodBind(className NavigationMesh, "set_agent_max_slope", 373806689)
  var `?param` = [getPtr agentMaxSlope]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAgentMaxSlope*(self: NavigationMesh): Float =
  expandMethodBind(className NavigationMesh, "get_agent_max_slope", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRegionMinSize*(self: NavigationMesh; regionMinSize: Float): void =
  expandMethodBind(className NavigationMesh, "set_region_min_size", 373806689)
  var `?param` = [getPtr regionMinSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRegionMinSize*(self: NavigationMesh): Float =
  expandMethodBind(className NavigationMesh, "get_region_min_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRegionMergeSize*(self: NavigationMesh; regionMergeSize: Float): void =
  expandMethodBind(className NavigationMesh, "set_region_merge_size", 373806689)
  var `?param` = [getPtr regionMergeSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRegionMergeSize*(self: NavigationMesh): Float =
  expandMethodBind(className NavigationMesh, "get_region_merge_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEdgeMaxLength*(self: NavigationMesh; edgeMaxLength: Float): void =
  expandMethodBind(className NavigationMesh, "set_edge_max_length", 373806689)
  var `?param` = [getPtr edgeMaxLength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEdgeMaxLength*(self: NavigationMesh): Float =
  expandMethodBind(className NavigationMesh, "get_edge_max_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEdgeMaxError*(self: NavigationMesh; edgeMaxError: Float): void =
  expandMethodBind(className NavigationMesh, "set_edge_max_error", 373806689)
  var `?param` = [getPtr edgeMaxError]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEdgeMaxError*(self: NavigationMesh): Float =
  expandMethodBind(className NavigationMesh, "get_edge_max_error", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVerticesPerPolygon*(self: NavigationMesh; verticesPerPolygon: Float): void =
  expandMethodBind(className NavigationMesh, "set_vertices_per_polygon", 373806689)
  var `?param` = [getPtr verticesPerPolygon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVerticesPerPolygon*(self: NavigationMesh): Float =
  expandMethodBind(className NavigationMesh, "get_vertices_per_polygon", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDetailSampleDistance*(self: NavigationMesh; detailSampleDist: Float): void =
  expandMethodBind(className NavigationMesh, "set_detail_sample_distance", 373806689)
  var `?param` = [getPtr detailSampleDist]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDetailSampleDistance*(self: NavigationMesh): Float =
  expandMethodBind(className NavigationMesh, "get_detail_sample_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDetailSampleMaxError*(self: NavigationMesh; detailSampleMaxError: Float): void =
  expandMethodBind(className NavigationMesh, "set_detail_sample_max_error", 373806689)
  var `?param` = [getPtr detailSampleMaxError]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDetailSampleMaxError*(self: NavigationMesh): Float =
  expandMethodBind(className NavigationMesh, "get_detail_sample_max_error", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFilterLowHangingObstacles*(self: NavigationMesh; filterLowHangingObstacles: bool): void =
  expandMethodBind(className NavigationMesh, "set_filter_low_hanging_obstacles", 2586408642)
  var `?param` = [getPtr filterLowHangingObstacles]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFilterLowHangingObstacles*(self: NavigationMesh): bool =
  expandMethodBind(className NavigationMesh, "get_filter_low_hanging_obstacles", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFilterLedgeSpans*(self: NavigationMesh; filterLedgeSpans: bool): void =
  expandMethodBind(className NavigationMesh, "set_filter_ledge_spans", 2586408642)
  var `?param` = [getPtr filterLedgeSpans]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFilterLedgeSpans*(self: NavigationMesh): bool =
  expandMethodBind(className NavigationMesh, "get_filter_ledge_spans", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFilterWalkableLowHeightSpans*(self: NavigationMesh; filterWalkableLowHeightSpans: bool): void =
  expandMethodBind(className NavigationMesh, "set_filter_walkable_low_height_spans", 2586408642)
  var `?param` = [getPtr filterWalkableLowHeightSpans]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFilterWalkableLowHeightSpans*(self: NavigationMesh): bool =
  expandMethodBind(className NavigationMesh, "get_filter_walkable_low_height_spans", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFilterBakingAabb*(self: NavigationMesh; bakingAabb: Aabb): void =
  expandMethodBind(className NavigationMesh, "set_filter_baking_aabb", 259215842)
  var `?param` = [getPtr bakingAabb]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFilterBakingAabb*(self: NavigationMesh): Aabb =
  expandMethodBind(className NavigationMesh, "get_filter_baking_aabb", 1068685055)
  var ret: encoded Aabb
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Aabb)

proc setFilterBakingAabbOffset*(self: NavigationMesh; bakingAabbOffset: Vector3): void =
  expandMethodBind(className NavigationMesh, "set_filter_baking_aabb_offset", 3460891852)
  var `?param` = [getPtr bakingAabbOffset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFilterBakingAabbOffset*(self: NavigationMesh): Vector3 =
  expandMethodBind(className NavigationMesh, "get_filter_baking_aabb_offset", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setVertices*(self: NavigationMesh; vertices: PackedVector3Array): void =
  expandMethodBind(className NavigationMesh, "set_vertices", 334873810)
  var `?param` = [getPtr vertices]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVertices*(self: NavigationMesh): PackedVector3Array =
  expandMethodBind(className NavigationMesh, "get_vertices", 497664490)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc addPolygon*(self: NavigationMesh; polygon: PackedInt32Array): void =
  expandMethodBind(className NavigationMesh, "add_polygon", 3614634198)
  var `?param` = [getPtr polygon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPolygonCount*(self: NavigationMesh): int32 =
  expandMethodBind(className NavigationMesh, "get_polygon_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getPolygon*(self: NavigationMesh; idx: int32): PackedInt32Array =
  expandMethodBind(className NavigationMesh, "get_polygon", 3668444399)
  var `?param` = [getPtr idx]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc clearPolygons*(self: NavigationMesh): void =
  expandMethodBind(className NavigationMesh, "clear_polygons", 3218959716)
  methodbind.ptrcall(self, nil)

proc createFromMesh*(self: NavigationMesh; mesh: gdref Mesh): void =
  expandMethodBind(className NavigationMesh, "create_from_mesh", 194775623)
  var `?param` = [getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc clear*(self: NavigationMesh): void =
  expandMethodBind(className NavigationMesh, "clear", 3218959716)
  methodbind.ptrcall(self, nil)

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

const NavigationMesh_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationMesh]): Table[string, string] = NavigationMesh_vmap