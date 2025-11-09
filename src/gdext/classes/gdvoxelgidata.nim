{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(VoxelGIData, Resource)

proc allocate*(self: VoxelGIData; toCellXform: Transform3D; aabb: AABB; octreeSize: Vector3; octreeCells: PackedByteArray; dataCells: PackedByteArray; distanceField: PackedByteArray; levelCounts: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "allocate", 4041601946)
  methodbind.ptrcall(self, [getPtr toCellXform, getPtr aabb, getPtr octreeSize, getPtr octreeCells, getPtr dataCells, getPtr distanceField, getPtr levelCounts], void)

proc getBounds*(self: VoxelGIData): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "get_bounds", 1068685055)
  methodbind.ptrcall(self, [], AABB)

proc getOctreeSize*(self: VoxelGIData): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "get_octree_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getToCellXform*(self: VoxelGIData): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "get_to_cell_xform", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

proc getOctreeCells*(self: VoxelGIData): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "get_octree_cells", 2362200018)
  methodbind.ptrcall(self, [], PackedByteArray)

proc getDataCells*(self: VoxelGIData): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "get_data_cells", 2362200018)
  methodbind.ptrcall(self, [], PackedByteArray)

proc getLevelCounts*(self: VoxelGIData): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "get_level_counts", 1930428628)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setDynamicRange*(self: VoxelGIData; dynamicRange: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "set_dynamic_range", 373806689)
  methodbind.ptrcall(self, [getPtr dynamicRange], void)

proc getDynamicRange*(self: VoxelGIData): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "get_dynamic_range", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setEnergy*(self: VoxelGIData; energy: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "set_energy", 373806689)
  methodbind.ptrcall(self, [getPtr energy], void)

proc getEnergy*(self: VoxelGIData): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "get_energy", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setBias*(self: VoxelGIData; bias: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "set_bias", 373806689)
  methodbind.ptrcall(self, [getPtr bias], void)

proc getBias*(self: VoxelGIData): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "get_bias", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setNormalBias*(self: VoxelGIData; bias: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "set_normal_bias", 373806689)
  methodbind.ptrcall(self, [getPtr bias], void)

proc getNormalBias*(self: VoxelGIData): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "get_normal_bias", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPropagation*(self: VoxelGIData; propagation: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "set_propagation", 373806689)
  methodbind.ptrcall(self, [getPtr propagation], void)

proc getPropagation*(self: VoxelGIData): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "get_propagation", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setInterior*(self: VoxelGIData; interior: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "set_interior", 2586408642)
  methodbind.ptrcall(self, [getPtr interior], void)

proc isInterior*(self: VoxelGIData): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "is_interior", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUseTwoBounces*(self: VoxelGIData; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "set_use_two_bounces", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingTwoBounces*(self: VoxelGIData): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VoxelGIData, "is_using_two_bounces", 36873697)
  methodbind.ptrcall(self, [], bool)

template dynamicRange*(self: VoxelGIData): untyped = self.getDynamicRange()
template `dynamicRange=`*(self: VoxelGIData; value) = self.setDynamicRange(value)

template energy*(self: VoxelGIData): untyped = self.getEnergy()
template `energy=`*(self: VoxelGIData; value) = self.setEnergy(value)

template bias*(self: VoxelGIData): untyped = self.getBias()
template `bias=`*(self: VoxelGIData; value) = self.setBias(value)

template normalBias*(self: VoxelGIData): untyped = self.getNormalBias()
template `normalBias=`*(self: VoxelGIData; value) = self.setNormalBias(value)

template propagation*(self: VoxelGIData): untyped = self.getPropagation()
template `propagation=`*(self: VoxelGIData; value) = self.setPropagation(value)

template useTwoBounces*(self: VoxelGIData): untyped = self.isUsingTwoBounces()
template `useTwoBounces=`*(self: VoxelGIData; value) = self.setUseTwoBounces(value)

template interior*(self: VoxelGIData): untyped = self.isInterior()
template `interior=`*(self: VoxelGIData; value) = self.setInterior(value)
