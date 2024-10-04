{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc setVertices*(self: NavigationPolygon; vertices: PackedVector2Array): void =
  expandMethodBind(className NavigationPolygon, "set_vertices", 1509147220)
  var `?param` = [getPtr vertices]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVertices*(self: NavigationPolygon): PackedVector2Array =
  expandMethodBind(className NavigationPolygon, "get_vertices", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc addPolygon*(self: NavigationPolygon; polygon: PackedInt32Array): void =
  expandMethodBind(className NavigationPolygon, "add_polygon", 3614634198)
  var `?param` = [getPtr polygon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPolygonCount*(self: NavigationPolygon): int32 =
  expandMethodBind(className NavigationPolygon, "get_polygon_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getPolygon*(self: NavigationPolygon; idx: int32): PackedInt32Array =
  expandMethodBind(className NavigationPolygon, "get_polygon", 3668444399)
  var `?param` = [getPtr idx]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc clearPolygons*(self: NavigationPolygon): void =
  expandMethodBind(className NavigationPolygon, "clear_polygons", 3218959716)
  methodbind.ptrcall(self, nil)

proc getNavigationMesh*(self: NavigationPolygon): gdref NavigationMesh =
  expandMethodBind(className NavigationPolygon, "get_navigation_mesh", 330232164)
  var ret: encoded gdref NavigationMesh
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref NavigationMesh)

proc addOutline*(self: NavigationPolygon; outline: PackedVector2Array): void =
  expandMethodBind(className NavigationPolygon, "add_outline", 1509147220)
  var `?param` = [getPtr outline]
  methodbind.ptrcall(self, addr `?param`[0])

proc addOutlineAtIndex*(self: NavigationPolygon; outline: PackedVector2Array; index: int32): void =
  expandMethodBind(className NavigationPolygon, "add_outline_at_index", 1569738947)
  var `?param` = [getPtr outline, getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOutlineCount*(self: NavigationPolygon): int32 =
  expandMethodBind(className NavigationPolygon, "get_outline_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setOutline*(self: NavigationPolygon; idx: int32; outline: PackedVector2Array): void =
  expandMethodBind(className NavigationPolygon, "set_outline", 1201971903)
  var `?param` = [getPtr idx, getPtr outline]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOutline*(self: NavigationPolygon; idx: int32): PackedVector2Array =
  expandMethodBind(className NavigationPolygon, "get_outline", 3946907486)
  var `?param` = [getPtr idx]
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc removeOutline*(self: NavigationPolygon; idx: int32): void =
  expandMethodBind(className NavigationPolygon, "remove_outline", 1286410249)
  var `?param` = [getPtr idx]
  methodbind.ptrcall(self, addr `?param`[0])

proc clearOutlines*(self: NavigationPolygon): void =
  expandMethodBind(className NavigationPolygon, "clear_outlines", 3218959716)
  methodbind.ptrcall(self, nil)

proc makePolygonsFromOutlines*(self: NavigationPolygon): void =
  expandMethodBind(className NavigationPolygon, "make_polygons_from_outlines", 3218959716)
  methodbind.ptrcall(self, nil)

proc setCellSize*(self: NavigationPolygon; cellSize: Float): void =
  expandMethodBind(className NavigationPolygon, "set_cell_size", 373806689)
  var `?param` = [getPtr cellSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCellSize*(self: NavigationPolygon): Float =
  expandMethodBind(className NavigationPolygon, "get_cell_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setBorderSize*(self: NavigationPolygon; borderSize: Float): void =
  expandMethodBind(className NavigationPolygon, "set_border_size", 373806689)
  var `?param` = [getPtr borderSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBorderSize*(self: NavigationPolygon): Float =
  expandMethodBind(className NavigationPolygon, "get_border_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setParsedGeometryType*(self: NavigationPolygon; geometryType: NavigationPolygon_ParsedGeometryType): void =
  expandMethodBind(className NavigationPolygon, "set_parsed_geometry_type", 2507971764)
  var `?param` = [getPtr geometryType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParsedGeometryType*(self: NavigationPolygon): NavigationPolygon_ParsedGeometryType =
  expandMethodBind(className NavigationPolygon, "get_parsed_geometry_type", 1073219508)
  var ret: encoded NavigationPolygon_ParsedGeometryType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NavigationPolygon_ParsedGeometryType)

proc setParsedCollisionMask*(self: NavigationPolygon; mask: uint32): void =
  expandMethodBind(className NavigationPolygon, "set_parsed_collision_mask", 1286410249)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParsedCollisionMask*(self: NavigationPolygon): uint32 =
  expandMethodBind(className NavigationPolygon, "get_parsed_collision_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setParsedCollisionMaskValue*(self: NavigationPolygon; layerNumber: int32; value: bool): void =
  expandMethodBind(className NavigationPolygon, "set_parsed_collision_mask_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParsedCollisionMaskValue*(self: NavigationPolygon; layerNumber: int32): bool =
  expandMethodBind(className NavigationPolygon, "get_parsed_collision_mask_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setSourceGeometryMode*(self: NavigationPolygon; geometryMode: NavigationPolygon_SourceGeometryMode): void =
  expandMethodBind(className NavigationPolygon, "set_source_geometry_mode", 4002316705)
  var `?param` = [getPtr geometryMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSourceGeometryMode*(self: NavigationPolygon): NavigationPolygon_SourceGeometryMode =
  expandMethodBind(className NavigationPolygon, "get_source_geometry_mode", 459686762)
  var ret: encoded NavigationPolygon_SourceGeometryMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NavigationPolygon_SourceGeometryMode)

proc setSourceGeometryGroupName*(self: NavigationPolygon; groupName: StringName): void =
  expandMethodBind(className NavigationPolygon, "set_source_geometry_group_name", 3304788590)
  var `?param` = [getPtr groupName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSourceGeometryGroupName*(self: NavigationPolygon): StringName =
  expandMethodBind(className NavigationPolygon, "get_source_geometry_group_name", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setAgentRadius*(self: NavigationPolygon; agentRadius: Float): void =
  expandMethodBind(className NavigationPolygon, "set_agent_radius", 373806689)
  var `?param` = [getPtr agentRadius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAgentRadius*(self: NavigationPolygon): Float =
  expandMethodBind(className NavigationPolygon, "get_agent_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setBakingRect*(self: NavigationPolygon; rect: Rect2): void =
  expandMethodBind(className NavigationPolygon, "set_baking_rect", 2046264180)
  var `?param` = [getPtr rect]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBakingRect*(self: NavigationPolygon): Rect2 =
  expandMethodBind(className NavigationPolygon, "get_baking_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2)

proc setBakingRectOffset*(self: NavigationPolygon; rectOffset: Vector2): void =
  expandMethodBind(className NavigationPolygon, "set_baking_rect_offset", 743155724)
  var `?param` = [getPtr rectOffset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBakingRectOffset*(self: NavigationPolygon): Vector2 =
  expandMethodBind(className NavigationPolygon, "get_baking_rect_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc clear*(self: NavigationPolygon): void =
  expandMethodBind(className NavigationPolygon, "clear", 3218959716)
  methodbind.ptrcall(self, nil)

template vertices*(self: NavigationPolygon): untyped = self.getVertices()
template `vertices=`*(self: NavigationPolygon; value) = self.setVertices(value)

template polygons*(self: NavigationPolygon): untyped = self.getPolygons()
template `polygons=`*(self: NavigationPolygon; value) = self.setPolygons(value)

template outlines*(self: NavigationPolygon): untyped = self.getOutlines()
template `outlines=`*(self: NavigationPolygon; value) = self.setOutlines(value)

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

const NavigationPolygon_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationPolygon]): Table[string, string] = NavigationPolygon_vmap