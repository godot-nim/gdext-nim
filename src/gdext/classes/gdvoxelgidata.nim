{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc allocate*(self: VoxelGiData; toCellXform: Transform3D; aabb: Aabb; octreeSize: Vector3; octreeCells: PackedByteArray; dataCells: PackedByteArray; distanceField: PackedByteArray; levelCounts: PackedInt32Array): void =
  expandMethodBind(className VoxelGiData, "allocate", 4041601946)
  var `?param` = [getPtr toCellXform, getPtr aabb, getPtr octreeSize, getPtr octreeCells, getPtr dataCells, getPtr distanceField, getPtr levelCounts]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBounds*(self: VoxelGiData): Aabb =
  expandMethodBind(className VoxelGiData, "get_bounds", 1068685055)
  var ret: encoded Aabb
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Aabb)

proc getOctreeSize*(self: VoxelGiData): Vector3 =
  expandMethodBind(className VoxelGiData, "get_octree_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getToCellXform*(self: VoxelGiData): Transform3D =
  expandMethodBind(className VoxelGiData, "get_to_cell_xform", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc getOctreeCells*(self: VoxelGiData): PackedByteArray =
  expandMethodBind(className VoxelGiData, "get_octree_cells", 2362200018)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

proc getDataCells*(self: VoxelGiData): PackedByteArray =
  expandMethodBind(className VoxelGiData, "get_data_cells", 2362200018)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

proc getLevelCounts*(self: VoxelGiData): PackedInt32Array =
  expandMethodBind(className VoxelGiData, "get_level_counts", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setDynamicRange*(self: VoxelGiData; dynamicRange: Float): void =
  expandMethodBind(className VoxelGiData, "set_dynamic_range", 373806689)
  var `?param` = [getPtr dynamicRange]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDynamicRange*(self: VoxelGiData): Float =
  expandMethodBind(className VoxelGiData, "get_dynamic_range", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEnergy*(self: VoxelGiData; energy: Float): void =
  expandMethodBind(className VoxelGiData, "set_energy", 373806689)
  var `?param` = [getPtr energy]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnergy*(self: VoxelGiData): Float =
  expandMethodBind(className VoxelGiData, "get_energy", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setBias*(self: VoxelGiData; bias: Float): void =
  expandMethodBind(className VoxelGiData, "set_bias", 373806689)
  var `?param` = [getPtr bias]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBias*(self: VoxelGiData): Float =
  expandMethodBind(className VoxelGiData, "get_bias", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setNormalBias*(self: VoxelGiData; bias: Float): void =
  expandMethodBind(className VoxelGiData, "set_normal_bias", 373806689)
  var `?param` = [getPtr bias]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNormalBias*(self: VoxelGiData): Float =
  expandMethodBind(className VoxelGiData, "get_normal_bias", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setPropagation*(self: VoxelGiData; propagation: Float): void =
  expandMethodBind(className VoxelGiData, "set_propagation", 373806689)
  var `?param` = [getPtr propagation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPropagation*(self: VoxelGiData): Float =
  expandMethodBind(className VoxelGiData, "get_propagation", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setInterior*(self: VoxelGiData; interior: bool): void =
  expandMethodBind(className VoxelGiData, "set_interior", 2586408642)
  var `?param` = [getPtr interior]
  methodbind.ptrcall(self, addr `?param`[0])

proc isInterior*(self: VoxelGiData): bool =
  expandMethodBind(className VoxelGiData, "is_interior", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUseTwoBounces*(self: VoxelGiData; enable: bool): void =
  expandMethodBind(className VoxelGiData, "set_use_two_bounces", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingTwoBounces*(self: VoxelGiData): bool =
  expandMethodBind(className VoxelGiData, "is_using_two_bounces", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template dynamicRange*(self: VoxelGiData): untyped = self.getDynamicRange()
template `dynamicRange=`*(self: VoxelGiData; value) = self.setDynamicRange(value)

template energy*(self: VoxelGiData): untyped = self.getEnergy()
template `energy=`*(self: VoxelGiData; value) = self.setEnergy(value)

template bias*(self: VoxelGiData): untyped = self.getBias()
template `bias=`*(self: VoxelGiData; value) = self.setBias(value)

template normalBias*(self: VoxelGiData): untyped = self.getNormalBias()
template `normalBias=`*(self: VoxelGiData; value) = self.setNormalBias(value)

template propagation*(self: VoxelGiData): untyped = self.getPropagation()
template `propagation=`*(self: VoxelGiData; value) = self.setPropagation(value)

template useTwoBounces*(self: VoxelGiData): untyped = self.isUsingTwoBounces()
template `useTwoBounces=`*(self: VoxelGiData; value) = self.setUseTwoBounces(value)

template interior*(self: VoxelGiData): untyped = self.isInterior()
template `interior=`*(self: VoxelGiData; value) = self.setInterior(value)

const VoxelGiData_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VoxelGiData]): Table[string, string] = VoxelGiData_vmap