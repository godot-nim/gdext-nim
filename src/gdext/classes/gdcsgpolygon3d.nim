{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcsgprimitive3d; export gdcsgprimitive3d

proc setPolygon*(self: CSGPolygon3D; polygon: PackedVector2Array): void =
  expandMethodBind(className CSGPolygon3D, "set_polygon", 1509147220)
  methodbind.ptrcall(self, [getPtr polygon])

proc getPolygon*(self: CSGPolygon3D): PackedVector2Array =
  expandMethodBind(className CSGPolygon3D, "get_polygon", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc setMode*(self: CSGPolygon3D; mode: CSGPolygon3D_Mode): void =
  expandMethodBind(className CSGPolygon3D, "set_mode", 3158377035)
  methodbind.ptrcall(self, [getPtr mode])

proc getMode*(self: CSGPolygon3D): CSGPolygon3D_Mode =
  expandMethodBind(className CSGPolygon3D, "get_mode", 1201612222)
  var ret: encoded CSGPolygon3D_Mode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(CSGPolygon3D_Mode)

proc setDepth*(self: CSGPolygon3D; depth: Float): void =
  expandMethodBind(className CSGPolygon3D, "set_depth", 373806689)
  methodbind.ptrcall(self, [getPtr depth])

proc getDepth*(self: CSGPolygon3D): Float =
  expandMethodBind(className CSGPolygon3D, "get_depth", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSpinDegrees*(self: CSGPolygon3D; degrees: Float): void =
  expandMethodBind(className CSGPolygon3D, "set_spin_degrees", 373806689)
  methodbind.ptrcall(self, [getPtr degrees])

proc getSpinDegrees*(self: CSGPolygon3D): Float =
  expandMethodBind(className CSGPolygon3D, "get_spin_degrees", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSpinSides*(self: CSGPolygon3D; spinSides: int32): void =
  expandMethodBind(className CSGPolygon3D, "set_spin_sides", 1286410249)
  methodbind.ptrcall(self, [getPtr spinSides])

proc getSpinSides*(self: CSGPolygon3D): int32 =
  expandMethodBind(className CSGPolygon3D, "get_spin_sides", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setPathNode*(self: CSGPolygon3D; path: NodePath): void =
  expandMethodBind(className CSGPolygon3D, "set_path_node", 1348162250)
  methodbind.ptrcall(self, [getPtr path])

proc getPathNode*(self: CSGPolygon3D): NodePath =
  expandMethodBind(className CSGPolygon3D, "get_path_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc setPathIntervalType*(self: CSGPolygon3D; intervalType: CSGPolygon3D_PathIntervalType): void =
  expandMethodBind(className CSGPolygon3D, "set_path_interval_type", 3744240707)
  methodbind.ptrcall(self, [getPtr intervalType])

proc getPathIntervalType*(self: CSGPolygon3D): CSGPolygon3D_PathIntervalType =
  expandMethodBind(className CSGPolygon3D, "get_path_interval_type", 3434618397)
  var ret: encoded CSGPolygon3D_PathIntervalType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(CSGPolygon3D_PathIntervalType)

proc setPathInterval*(self: CSGPolygon3D; interval: Float): void =
  expandMethodBind(className CSGPolygon3D, "set_path_interval", 373806689)
  methodbind.ptrcall(self, [getPtr interval])

proc getPathInterval*(self: CSGPolygon3D): Float =
  expandMethodBind(className CSGPolygon3D, "get_path_interval", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPathSimplifyAngle*(self: CSGPolygon3D; degrees: Float): void =
  expandMethodBind(className CSGPolygon3D, "set_path_simplify_angle", 373806689)
  methodbind.ptrcall(self, [getPtr degrees])

proc getPathSimplifyAngle*(self: CSGPolygon3D): Float =
  expandMethodBind(className CSGPolygon3D, "get_path_simplify_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPathRotation*(self: CSGPolygon3D; pathRotation: CSGPolygon3D_PathRotation): void =
  expandMethodBind(className CSGPolygon3D, "set_path_rotation", 1412947288)
  methodbind.ptrcall(self, [getPtr pathRotation])

proc getPathRotation*(self: CSGPolygon3D): CSGPolygon3D_PathRotation =
  expandMethodBind(className CSGPolygon3D, "get_path_rotation", 647219346)
  var ret: encoded CSGPolygon3D_PathRotation
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(CSGPolygon3D_PathRotation)

proc setPathLocal*(self: CSGPolygon3D; enable: bool): void =
  expandMethodBind(className CSGPolygon3D, "set_path_local", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isPathLocal*(self: CSGPolygon3D): bool =
  expandMethodBind(className CSGPolygon3D, "is_path_local", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setPathContinuousU*(self: CSGPolygon3D; enable: bool): void =
  expandMethodBind(className CSGPolygon3D, "set_path_continuous_u", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isPathContinuousU*(self: CSGPolygon3D): bool =
  expandMethodBind(className CSGPolygon3D, "is_path_continuous_u", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setPathUDistance*(self: CSGPolygon3D; distance: Float): void =
  expandMethodBind(className CSGPolygon3D, "set_path_u_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance])

proc getPathUDistance*(self: CSGPolygon3D): Float =
  expandMethodBind(className CSGPolygon3D, "get_path_u_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPathJoined*(self: CSGPolygon3D; enable: bool): void =
  expandMethodBind(className CSGPolygon3D, "set_path_joined", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isPathJoined*(self: CSGPolygon3D): bool =
  expandMethodBind(className CSGPolygon3D, "is_path_joined", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMaterial*(self: CSGPolygon3D; material: gdref Material): void =
  expandMethodBind(className CSGPolygon3D, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material])

proc getMaterial*(self: CSGPolygon3D): gdref Material =
  expandMethodBind(className CSGPolygon3D, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Material)

proc setSmoothFaces*(self: CSGPolygon3D; smoothFaces: bool): void =
  expandMethodBind(className CSGPolygon3D, "set_smooth_faces", 2586408642)
  methodbind.ptrcall(self, [getPtr smoothFaces])

proc getSmoothFaces*(self: CSGPolygon3D): bool =
  expandMethodBind(className CSGPolygon3D, "get_smooth_faces", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template polygon*(self: CSGPolygon3D): untyped = self.getPolygon()
template `polygon=`*(self: CSGPolygon3D; value) = self.setPolygon(value)

template mode*(self: CSGPolygon3D): untyped = self.getMode()
template `mode=`*(self: CSGPolygon3D; value) = self.setMode(value)

template depth*(self: CSGPolygon3D): untyped = self.getDepth()
template `depth=`*(self: CSGPolygon3D; value) = self.setDepth(value)

template spinDegrees*(self: CSGPolygon3D): untyped = self.getSpinDegrees()
template `spinDegrees=`*(self: CSGPolygon3D; value) = self.setSpinDegrees(value)

template spinSides*(self: CSGPolygon3D): untyped = self.getSpinSides()
template `spinSides=`*(self: CSGPolygon3D; value) = self.setSpinSides(value)

template pathNode*(self: CSGPolygon3D): untyped = self.getPathNode()
template `pathNode=`*(self: CSGPolygon3D; value) = self.setPathNode(value)

template pathIntervalType*(self: CSGPolygon3D): untyped = self.getPathIntervalType()
template `pathIntervalType=`*(self: CSGPolygon3D; value) = self.setPathIntervalType(value)

template pathInterval*(self: CSGPolygon3D): untyped = self.getPathInterval()
template `pathInterval=`*(self: CSGPolygon3D; value) = self.setPathInterval(value)

template pathSimplifyAngle*(self: CSGPolygon3D): untyped = self.getPathSimplifyAngle()
template `pathSimplifyAngle=`*(self: CSGPolygon3D; value) = self.setPathSimplifyAngle(value)

template pathRotation*(self: CSGPolygon3D): untyped = self.getPathRotation()
template `pathRotation=`*(self: CSGPolygon3D; value) = self.setPathRotation(value)

template pathLocal*(self: CSGPolygon3D): untyped = self.isPathLocal()
template `pathLocal=`*(self: CSGPolygon3D; value) = self.setPathLocal(value)

template pathContinuousU*(self: CSGPolygon3D): untyped = self.isPathContinuousU()
template `pathContinuousU=`*(self: CSGPolygon3D; value) = self.setPathContinuousU(value)

template pathUDistance*(self: CSGPolygon3D): untyped = self.getPathUDistance()
template `pathUDistance=`*(self: CSGPolygon3D; value) = self.setPathUDistance(value)

template pathJoined*(self: CSGPolygon3D): untyped = self.isPathJoined()
template `pathJoined=`*(self: CSGPolygon3D; value) = self.setPathJoined(value)

template smoothFaces*(self: CSGPolygon3D): untyped = self.getSmoothFaces()
template `smoothFaces=`*(self: CSGPolygon3D; value) = self.setSmoothFaces(value)

template material*(self: CSGPolygon3D): untyped = self.getMaterial()
template `material=`*(self: CSGPolygon3D; value) = self.setMaterial(value)

const CSGPolygon3D_vmap =
  CSGPrimitive3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CSGPolygon3D]): Table[string, string] = CSGPolygon3D_vmap