{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc allocate*(self: VoxelGIData; toCellXform: Transform3D; aabb: AABB; octreeSize: Vector3; octreeCells: PackedByteArray; dataCells: PackedByteArray; distanceField: PackedByteArray; levelCounts: PackedInt32Array): void =
  expandMethodBind(className VoxelGIData, "allocate", 4041601946)
  var `?param` = [getPtr toCellXform, getPtr aabb, getPtr octreeSize, getPtr octreeCells, getPtr dataCells, getPtr distanceField, getPtr levelCounts]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBounds*(self: VoxelGIData): AABB =
  expandMethodBind(className VoxelGIData, "get_bounds", 1068685055)
  var ret: encoded AABB
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AABB)

proc getOctreeSize*(self: VoxelGIData): Vector3 =
  expandMethodBind(className VoxelGIData, "get_octree_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getToCellXform*(self: VoxelGIData): Transform3D =
  expandMethodBind(className VoxelGIData, "get_to_cell_xform", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc getOctreeCells*(self: VoxelGIData): PackedByteArray =
  expandMethodBind(className VoxelGIData, "get_octree_cells", 2362200018)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

proc getDataCells*(self: VoxelGIData): PackedByteArray =
  expandMethodBind(className VoxelGIData, "get_data_cells", 2362200018)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

proc getLevelCounts*(self: VoxelGIData): PackedInt32Array =
  expandMethodBind(className VoxelGIData, "get_level_counts", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setDynamicRange*(self: VoxelGIData; dynamicRange: Float): void =
  expandMethodBind(className VoxelGIData, "set_dynamic_range", 373806689)
  var `?param` = [getPtr dynamicRange]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDynamicRange*(self: VoxelGIData): Float =
  expandMethodBind(className VoxelGIData, "get_dynamic_range", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEnergy*(self: VoxelGIData; energy: Float): void =
  expandMethodBind(className VoxelGIData, "set_energy", 373806689)
  var `?param` = [getPtr energy]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnergy*(self: VoxelGIData): Float =
  expandMethodBind(className VoxelGIData, "get_energy", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setBias*(self: VoxelGIData; bias: Float): void =
  expandMethodBind(className VoxelGIData, "set_bias", 373806689)
  var `?param` = [getPtr bias]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBias*(self: VoxelGIData): Float =
  expandMethodBind(className VoxelGIData, "get_bias", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setNormalBias*(self: VoxelGIData; bias: Float): void =
  expandMethodBind(className VoxelGIData, "set_normal_bias", 373806689)
  var `?param` = [getPtr bias]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNormalBias*(self: VoxelGIData): Float =
  expandMethodBind(className VoxelGIData, "get_normal_bias", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setPropagation*(self: VoxelGIData; propagation: Float): void =
  expandMethodBind(className VoxelGIData, "set_propagation", 373806689)
  var `?param` = [getPtr propagation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPropagation*(self: VoxelGIData): Float =
  expandMethodBind(className VoxelGIData, "get_propagation", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setInterior*(self: VoxelGIData; interior: bool): void =
  expandMethodBind(className VoxelGIData, "set_interior", 2586408642)
  var `?param` = [getPtr interior]
  methodbind.ptrcall(self, addr `?param`[0])

proc isInterior*(self: VoxelGIData): bool =
  expandMethodBind(className VoxelGIData, "is_interior", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUseTwoBounces*(self: VoxelGIData; enable: bool): void =
  expandMethodBind(className VoxelGIData, "set_use_two_bounces", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingTwoBounces*(self: VoxelGIData): bool =
  expandMethodBind(className VoxelGIData, "is_using_two_bounces", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

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

const VoxelGIData_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VoxelGIData]): Table[string, string] = VoxelGIData_vmap