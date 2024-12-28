{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setMaxConcavity*(self: MeshConvexDecompositionSettings; maxConcavity: Float): void =
  expandMethodBind(className MeshConvexDecompositionSettings, "set_max_concavity", 373806689)
  methodbind.ptrcall(self, [getPtr maxConcavity])

proc getMaxConcavity*(self: MeshConvexDecompositionSettings): Float =
  expandMethodBind(className MeshConvexDecompositionSettings, "get_max_concavity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSymmetryPlanesClippingBias*(self: MeshConvexDecompositionSettings; symmetryPlanesClippingBias: Float): void =
  expandMethodBind(className MeshConvexDecompositionSettings, "set_symmetry_planes_clipping_bias", 373806689)
  methodbind.ptrcall(self, [getPtr symmetryPlanesClippingBias])

proc getSymmetryPlanesClippingBias*(self: MeshConvexDecompositionSettings): Float =
  expandMethodBind(className MeshConvexDecompositionSettings, "get_symmetry_planes_clipping_bias", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setRevolutionAxesClippingBias*(self: MeshConvexDecompositionSettings; revolutionAxesClippingBias: Float): void =
  expandMethodBind(className MeshConvexDecompositionSettings, "set_revolution_axes_clipping_bias", 373806689)
  methodbind.ptrcall(self, [getPtr revolutionAxesClippingBias])

proc getRevolutionAxesClippingBias*(self: MeshConvexDecompositionSettings): Float =
  expandMethodBind(className MeshConvexDecompositionSettings, "get_revolution_axes_clipping_bias", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setMinVolumePerConvexHull*(self: MeshConvexDecompositionSettings; minVolumePerConvexHull: Float): void =
  expandMethodBind(className MeshConvexDecompositionSettings, "set_min_volume_per_convex_hull", 373806689)
  methodbind.ptrcall(self, [getPtr minVolumePerConvexHull])

proc getMinVolumePerConvexHull*(self: MeshConvexDecompositionSettings): Float =
  expandMethodBind(className MeshConvexDecompositionSettings, "get_min_volume_per_convex_hull", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setResolution*(self: MeshConvexDecompositionSettings; minVolumePerConvexHull: uint32): void =
  expandMethodBind(className MeshConvexDecompositionSettings, "set_resolution", 1286410249)
  methodbind.ptrcall(self, [getPtr minVolumePerConvexHull])

proc getResolution*(self: MeshConvexDecompositionSettings): uint32 =
  expandMethodBind(className MeshConvexDecompositionSettings, "get_resolution", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setMaxNumVerticesPerConvexHull*(self: MeshConvexDecompositionSettings; maxNumVerticesPerConvexHull: uint32): void =
  expandMethodBind(className MeshConvexDecompositionSettings, "set_max_num_vertices_per_convex_hull", 1286410249)
  methodbind.ptrcall(self, [getPtr maxNumVerticesPerConvexHull])

proc getMaxNumVerticesPerConvexHull*(self: MeshConvexDecompositionSettings): uint32 =
  expandMethodBind(className MeshConvexDecompositionSettings, "get_max_num_vertices_per_convex_hull", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setPlaneDownsampling*(self: MeshConvexDecompositionSettings; planeDownsampling: uint32): void =
  expandMethodBind(className MeshConvexDecompositionSettings, "set_plane_downsampling", 1286410249)
  methodbind.ptrcall(self, [getPtr planeDownsampling])

proc getPlaneDownsampling*(self: MeshConvexDecompositionSettings): uint32 =
  expandMethodBind(className MeshConvexDecompositionSettings, "get_plane_downsampling", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setConvexHullDownsampling*(self: MeshConvexDecompositionSettings; convexHullDownsampling: uint32): void =
  expandMethodBind(className MeshConvexDecompositionSettings, "set_convex_hull_downsampling", 1286410249)
  methodbind.ptrcall(self, [getPtr convexHullDownsampling])

proc getConvexHullDownsampling*(self: MeshConvexDecompositionSettings): uint32 =
  expandMethodBind(className MeshConvexDecompositionSettings, "get_convex_hull_downsampling", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setNormalizeMesh*(self: MeshConvexDecompositionSettings; normalizeMesh: bool): void =
  expandMethodBind(className MeshConvexDecompositionSettings, "set_normalize_mesh", 2586408642)
  methodbind.ptrcall(self, [getPtr normalizeMesh])

proc getNormalizeMesh*(self: MeshConvexDecompositionSettings): bool =
  expandMethodBind(className MeshConvexDecompositionSettings, "get_normalize_mesh", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMode*(self: MeshConvexDecompositionSettings; mode: MeshConvexDecompositionSettings_Mode): void =
  expandMethodBind(className MeshConvexDecompositionSettings, "set_mode", 1668072869)
  methodbind.ptrcall(self, [getPtr mode])

proc getMode*(self: MeshConvexDecompositionSettings): MeshConvexDecompositionSettings_Mode =
  expandMethodBind(className MeshConvexDecompositionSettings, "get_mode", 23479454)
  var ret: encoded MeshConvexDecompositionSettings_Mode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(MeshConvexDecompositionSettings_Mode)

proc setConvexHullApproximation*(self: MeshConvexDecompositionSettings; convexHullApproximation: bool): void =
  expandMethodBind(className MeshConvexDecompositionSettings, "set_convex_hull_approximation", 2586408642)
  methodbind.ptrcall(self, [getPtr convexHullApproximation])

proc getConvexHullApproximation*(self: MeshConvexDecompositionSettings): bool =
  expandMethodBind(className MeshConvexDecompositionSettings, "get_convex_hull_approximation", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMaxConvexHulls*(self: MeshConvexDecompositionSettings; maxConvexHulls: uint32): void =
  expandMethodBind(className MeshConvexDecompositionSettings, "set_max_convex_hulls", 1286410249)
  methodbind.ptrcall(self, [getPtr maxConvexHulls])

proc getMaxConvexHulls*(self: MeshConvexDecompositionSettings): uint32 =
  expandMethodBind(className MeshConvexDecompositionSettings, "get_max_convex_hulls", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setProjectHullVertices*(self: MeshConvexDecompositionSettings; projectHullVertices: bool): void =
  expandMethodBind(className MeshConvexDecompositionSettings, "set_project_hull_vertices", 2586408642)
  methodbind.ptrcall(self, [getPtr projectHullVertices])

proc getProjectHullVertices*(self: MeshConvexDecompositionSettings): bool =
  expandMethodBind(className MeshConvexDecompositionSettings, "get_project_hull_vertices", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template maxConcavity*(self: MeshConvexDecompositionSettings): untyped = self.getMaxConcavity()
template `maxConcavity=`*(self: MeshConvexDecompositionSettings; value) = self.setMaxConcavity(value)

template symmetryPlanesClippingBias*(self: MeshConvexDecompositionSettings): untyped = self.getSymmetryPlanesClippingBias()
template `symmetryPlanesClippingBias=`*(self: MeshConvexDecompositionSettings; value) = self.setSymmetryPlanesClippingBias(value)

template revolutionAxesClippingBias*(self: MeshConvexDecompositionSettings): untyped = self.getRevolutionAxesClippingBias()
template `revolutionAxesClippingBias=`*(self: MeshConvexDecompositionSettings; value) = self.setRevolutionAxesClippingBias(value)

template minVolumePerConvexHull*(self: MeshConvexDecompositionSettings): untyped = self.getMinVolumePerConvexHull()
template `minVolumePerConvexHull=`*(self: MeshConvexDecompositionSettings; value) = self.setMinVolumePerConvexHull(value)

template resolution*(self: MeshConvexDecompositionSettings): untyped = self.getResolution()
template `resolution=`*(self: MeshConvexDecompositionSettings; value) = self.setResolution(value)

template maxNumVerticesPerConvexHull*(self: MeshConvexDecompositionSettings): untyped = self.getMaxNumVerticesPerConvexHull()
template `maxNumVerticesPerConvexHull=`*(self: MeshConvexDecompositionSettings; value) = self.setMaxNumVerticesPerConvexHull(value)

template planeDownsampling*(self: MeshConvexDecompositionSettings): untyped = self.getPlaneDownsampling()
template `planeDownsampling=`*(self: MeshConvexDecompositionSettings; value) = self.setPlaneDownsampling(value)

template convexHullDownsampling*(self: MeshConvexDecompositionSettings): untyped = self.getConvexHullDownsampling()
template `convexHullDownsampling=`*(self: MeshConvexDecompositionSettings; value) = self.setConvexHullDownsampling(value)

template normalizeMesh*(self: MeshConvexDecompositionSettings): untyped = self.getNormalizeMesh()
template `normalizeMesh=`*(self: MeshConvexDecompositionSettings; value) = self.setNormalizeMesh(value)

template mode*(self: MeshConvexDecompositionSettings): untyped = self.getMode()
template `mode=`*(self: MeshConvexDecompositionSettings; value) = self.setMode(value)

template convexHullApproximation*(self: MeshConvexDecompositionSettings): untyped = self.getConvexHullApproximation()
template `convexHullApproximation=`*(self: MeshConvexDecompositionSettings; value) = self.setConvexHullApproximation(value)

template maxConvexHulls*(self: MeshConvexDecompositionSettings): untyped = self.getMaxConvexHulls()
template `maxConvexHulls=`*(self: MeshConvexDecompositionSettings; value) = self.setMaxConvexHulls(value)

template projectHullVertices*(self: MeshConvexDecompositionSettings): untyped = self.getProjectHullVertices()
template `projectHullVertices=`*(self: MeshConvexDecompositionSettings; value) = self.setProjectHullVertices(value)

const MeshConvexDecompositionSettings_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MeshConvexDecompositionSettings]): Table[string, string] = MeshConvexDecompositionSettings_vmap