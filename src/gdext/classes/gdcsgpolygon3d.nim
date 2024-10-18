{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcsgprimitive3d; export gdcsgprimitive3d

proc setPolygon*(self: CsgPolygon3D; polygon: PackedVector2Array): void =
  expandMethodBind(className CsgPolygon3D, "set_polygon", 1509147220)
  var `?param` = [getPtr polygon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPolygon*(self: CsgPolygon3D): PackedVector2Array =
  expandMethodBind(className CsgPolygon3D, "get_polygon", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc setMode*(self: CsgPolygon3D; mode: CsgPolygon3D_Mode): void =
  expandMethodBind(className CsgPolygon3D, "set_mode", 3158377035)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMode*(self: CsgPolygon3D): CsgPolygon3D_Mode =
  expandMethodBind(className CsgPolygon3D, "get_mode", 1201612222)
  var ret: encoded CsgPolygon3D_Mode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CsgPolygon3D_Mode)

proc setDepth*(self: CsgPolygon3D; depth: Float): void =
  expandMethodBind(className CsgPolygon3D, "set_depth", 373806689)
  var `?param` = [getPtr depth]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDepth*(self: CsgPolygon3D): Float =
  expandMethodBind(className CsgPolygon3D, "get_depth", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSpinDegrees*(self: CsgPolygon3D; degrees: Float): void =
  expandMethodBind(className CsgPolygon3D, "set_spin_degrees", 373806689)
  var `?param` = [getPtr degrees]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpinDegrees*(self: CsgPolygon3D): Float =
  expandMethodBind(className CsgPolygon3D, "get_spin_degrees", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSpinSides*(self: CsgPolygon3D; spinSides: int32): void =
  expandMethodBind(className CsgPolygon3D, "set_spin_sides", 1286410249)
  var `?param` = [getPtr spinSides]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpinSides*(self: CsgPolygon3D): int32 =
  expandMethodBind(className CsgPolygon3D, "get_spin_sides", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setPathNode*(self: CsgPolygon3D; path: NodePath): void =
  expandMethodBind(className CsgPolygon3D, "set_path_node", 1348162250)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathNode*(self: CsgPolygon3D): NodePath =
  expandMethodBind(className CsgPolygon3D, "get_path_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setPathIntervalType*(self: CsgPolygon3D; intervalType: CsgPolygon3D_PathIntervalType): void =
  expandMethodBind(className CsgPolygon3D, "set_path_interval_type", 3744240707)
  var `?param` = [getPtr intervalType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathIntervalType*(self: CsgPolygon3D): CsgPolygon3D_PathIntervalType =
  expandMethodBind(className CsgPolygon3D, "get_path_interval_type", 3434618397)
  var ret: encoded CsgPolygon3D_PathIntervalType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CsgPolygon3D_PathIntervalType)

proc setPathInterval*(self: CsgPolygon3D; interval: Float): void =
  expandMethodBind(className CsgPolygon3D, "set_path_interval", 373806689)
  var `?param` = [getPtr interval]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathInterval*(self: CsgPolygon3D): Float =
  expandMethodBind(className CsgPolygon3D, "get_path_interval", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setPathSimplifyAngle*(self: CsgPolygon3D; degrees: Float): void =
  expandMethodBind(className CsgPolygon3D, "set_path_simplify_angle", 373806689)
  var `?param` = [getPtr degrees]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathSimplifyAngle*(self: CsgPolygon3D): Float =
  expandMethodBind(className CsgPolygon3D, "get_path_simplify_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setPathRotation*(self: CsgPolygon3D; pathRotation: CsgPolygon3D_PathRotation): void =
  expandMethodBind(className CsgPolygon3D, "set_path_rotation", 1412947288)
  var `?param` = [getPtr pathRotation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathRotation*(self: CsgPolygon3D): CsgPolygon3D_PathRotation =
  expandMethodBind(className CsgPolygon3D, "get_path_rotation", 647219346)
  var ret: encoded CsgPolygon3D_PathRotation
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CsgPolygon3D_PathRotation)

proc setPathLocal*(self: CsgPolygon3D; enable: bool): void =
  expandMethodBind(className CsgPolygon3D, "set_path_local", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPathLocal*(self: CsgPolygon3D): bool =
  expandMethodBind(className CsgPolygon3D, "is_path_local", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPathContinuousU*(self: CsgPolygon3D; enable: bool): void =
  expandMethodBind(className CsgPolygon3D, "set_path_continuous_u", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPathContinuousU*(self: CsgPolygon3D): bool =
  expandMethodBind(className CsgPolygon3D, "is_path_continuous_u", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPathUDistance*(self: CsgPolygon3D; distance: Float): void =
  expandMethodBind(className CsgPolygon3D, "set_path_u_distance", 373806689)
  var `?param` = [getPtr distance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathUDistance*(self: CsgPolygon3D): Float =
  expandMethodBind(className CsgPolygon3D, "get_path_u_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setPathJoined*(self: CsgPolygon3D; enable: bool): void =
  expandMethodBind(className CsgPolygon3D, "set_path_joined", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPathJoined*(self: CsgPolygon3D): bool =
  expandMethodBind(className CsgPolygon3D, "is_path_joined", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMaterial*(self: CsgPolygon3D; material: gdref Material): void =
  expandMethodBind(className CsgPolygon3D, "set_material", 2757459619)
  var `?param` = [getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaterial*(self: CsgPolygon3D): gdref Material =
  expandMethodBind(className CsgPolygon3D, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Material)

proc setSmoothFaces*(self: CsgPolygon3D; smoothFaces: bool): void =
  expandMethodBind(className CsgPolygon3D, "set_smooth_faces", 2586408642)
  var `?param` = [getPtr smoothFaces]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSmoothFaces*(self: CsgPolygon3D): bool =
  expandMethodBind(className CsgPolygon3D, "get_smooth_faces", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template polygon*(self: CsgPolygon3D): untyped = self.getPolygon()
template `polygon=`*(self: CsgPolygon3D; value) = self.setPolygon(value)

template mode*(self: CsgPolygon3D): untyped = self.getMode()
template `mode=`*(self: CsgPolygon3D; value) = self.setMode(value)

template depth*(self: CsgPolygon3D): untyped = self.getDepth()
template `depth=`*(self: CsgPolygon3D; value) = self.setDepth(value)

template spinDegrees*(self: CsgPolygon3D): untyped = self.getSpinDegrees()
template `spinDegrees=`*(self: CsgPolygon3D; value) = self.setSpinDegrees(value)

template spinSides*(self: CsgPolygon3D): untyped = self.getSpinSides()
template `spinSides=`*(self: CsgPolygon3D; value) = self.setSpinSides(value)

template pathNode*(self: CsgPolygon3D): untyped = self.getPathNode()
template `pathNode=`*(self: CsgPolygon3D; value) = self.setPathNode(value)

template pathIntervalType*(self: CsgPolygon3D): untyped = self.getPathIntervalType()
template `pathIntervalType=`*(self: CsgPolygon3D; value) = self.setPathIntervalType(value)

template pathInterval*(self: CsgPolygon3D): untyped = self.getPathInterval()
template `pathInterval=`*(self: CsgPolygon3D; value) = self.setPathInterval(value)

template pathSimplifyAngle*(self: CsgPolygon3D): untyped = self.getPathSimplifyAngle()
template `pathSimplifyAngle=`*(self: CsgPolygon3D; value) = self.setPathSimplifyAngle(value)

template pathRotation*(self: CsgPolygon3D): untyped = self.getPathRotation()
template `pathRotation=`*(self: CsgPolygon3D; value) = self.setPathRotation(value)

template pathLocal*(self: CsgPolygon3D): untyped = self.isPathLocal()
template `pathLocal=`*(self: CsgPolygon3D; value) = self.setPathLocal(value)

template pathContinuousU*(self: CsgPolygon3D): untyped = self.isPathContinuousU()
template `pathContinuousU=`*(self: CsgPolygon3D; value) = self.setPathContinuousU(value)

template pathUDistance*(self: CsgPolygon3D): untyped = self.getPathUDistance()
template `pathUDistance=`*(self: CsgPolygon3D; value) = self.setPathUDistance(value)

template pathJoined*(self: CsgPolygon3D): untyped = self.isPathJoined()
template `pathJoined=`*(self: CsgPolygon3D; value) = self.setPathJoined(value)

template smoothFaces*(self: CsgPolygon3D): untyped = self.getSmoothFaces()
template `smoothFaces=`*(self: CsgPolygon3D; value) = self.setSmoothFaces(value)

template material*(self: CsgPolygon3D): untyped = self.getMaterial()
template `material=`*(self: CsgPolygon3D; value) = self.setMaterial(value)

const CsgPolygon3D_vmap =
  CsgPrimitive3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CsgPolygon3D]): Table[string, string] = CsgPolygon3D_vmap