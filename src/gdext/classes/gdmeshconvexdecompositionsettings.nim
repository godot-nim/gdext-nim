{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(MeshConvexDecompositionSettings, RefCounted)

proc setMaxConcavity*(self: MeshConvexDecompositionSettings; maxConcavity: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "set_max_concavity", 373806689)
  methodbind.ptrcall(self, [getPtr maxConcavity], void)

proc getMaxConcavity*(self: MeshConvexDecompositionSettings): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "get_max_concavity", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSymmetryPlanesClippingBias*(self: MeshConvexDecompositionSettings; symmetryPlanesClippingBias: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "set_symmetry_planes_clipping_bias", 373806689)
  methodbind.ptrcall(self, [getPtr symmetryPlanesClippingBias], void)

proc getSymmetryPlanesClippingBias*(self: MeshConvexDecompositionSettings): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "get_symmetry_planes_clipping_bias", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRevolutionAxesClippingBias*(self: MeshConvexDecompositionSettings; revolutionAxesClippingBias: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "set_revolution_axes_clipping_bias", 373806689)
  methodbind.ptrcall(self, [getPtr revolutionAxesClippingBias], void)

proc getRevolutionAxesClippingBias*(self: MeshConvexDecompositionSettings): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "get_revolution_axes_clipping_bias", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMinVolumePerConvexHull*(self: MeshConvexDecompositionSettings; minVolumePerConvexHull: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "set_min_volume_per_convex_hull", 373806689)
  methodbind.ptrcall(self, [getPtr minVolumePerConvexHull], void)

proc getMinVolumePerConvexHull*(self: MeshConvexDecompositionSettings): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "get_min_volume_per_convex_hull", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setResolution*(self: MeshConvexDecompositionSettings; minVolumePerConvexHull: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "set_resolution", 1286410249)
  methodbind.ptrcall(self, [getPtr minVolumePerConvexHull], void)

proc getResolution*(self: MeshConvexDecompositionSettings): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "get_resolution", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setMaxNumVerticesPerConvexHull*(self: MeshConvexDecompositionSettings; maxNumVerticesPerConvexHull: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "set_max_num_vertices_per_convex_hull", 1286410249)
  methodbind.ptrcall(self, [getPtr maxNumVerticesPerConvexHull], void)

proc getMaxNumVerticesPerConvexHull*(self: MeshConvexDecompositionSettings): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "get_max_num_vertices_per_convex_hull", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setPlaneDownsampling*(self: MeshConvexDecompositionSettings; planeDownsampling: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "set_plane_downsampling", 1286410249)
  methodbind.ptrcall(self, [getPtr planeDownsampling], void)

proc getPlaneDownsampling*(self: MeshConvexDecompositionSettings): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "get_plane_downsampling", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setConvexHullDownsampling*(self: MeshConvexDecompositionSettings; convexHullDownsampling: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "set_convex_hull_downsampling", 1286410249)
  methodbind.ptrcall(self, [getPtr convexHullDownsampling], void)

proc getConvexHullDownsampling*(self: MeshConvexDecompositionSettings): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "get_convex_hull_downsampling", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setNormalizeMesh*(self: MeshConvexDecompositionSettings; normalizeMesh: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "set_normalize_mesh", 2586408642)
  methodbind.ptrcall(self, [getPtr normalizeMesh], void)

proc getNormalizeMesh*(self: MeshConvexDecompositionSettings): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "get_normalize_mesh", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMode*(self: MeshConvexDecompositionSettings; mode: MeshConvexDecompositionSettings_Mode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "set_mode", 1668072869)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getMode*(self: MeshConvexDecompositionSettings): MeshConvexDecompositionSettings_Mode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "get_mode", 23479454)
  methodbind.ptrcall(self, [], MeshConvexDecompositionSettings_Mode)

proc setConvexHullApproximation*(self: MeshConvexDecompositionSettings; convexHullApproximation: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "set_convex_hull_approximation", 2586408642)
  methodbind.ptrcall(self, [getPtr convexHullApproximation], void)

proc getConvexHullApproximation*(self: MeshConvexDecompositionSettings): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "get_convex_hull_approximation", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMaxConvexHulls*(self: MeshConvexDecompositionSettings; maxConvexHulls: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "set_max_convex_hulls", 1286410249)
  methodbind.ptrcall(self, [getPtr maxConvexHulls], void)

proc getMaxConvexHulls*(self: MeshConvexDecompositionSettings): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "get_max_convex_hulls", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setProjectHullVertices*(self: MeshConvexDecompositionSettings; projectHullVertices: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "set_project_hull_vertices", 2586408642)
  methodbind.ptrcall(self, [getPtr projectHullVertices], void)

proc getProjectHullVertices*(self: MeshConvexDecompositionSettings): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshConvexDecompositionSettings, "get_project_hull_vertices", 36873697)
  methodbind.ptrcall(self, [], bool)

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
