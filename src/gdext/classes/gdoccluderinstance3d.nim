{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

proc setBakeMask*(self: OccluderInstance3D; mask: uint32): void =
  expandMethodBind(className OccluderInstance3D, "set_bake_mask", 1286410249)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBakeMask*(self: OccluderInstance3D): uint32 =
  expandMethodBind(className OccluderInstance3D, "get_bake_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setBakeMaskValue*(self: OccluderInstance3D; layerNumber: int32; value: bool): void =
  expandMethodBind(className OccluderInstance3D, "set_bake_mask_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBakeMaskValue*(self: OccluderInstance3D; layerNumber: int32): bool =
  expandMethodBind(className OccluderInstance3D, "get_bake_mask_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setBakeSimplificationDistance*(self: OccluderInstance3D; simplificationDistance: Float): void =
  expandMethodBind(className OccluderInstance3D, "set_bake_simplification_distance", 373806689)
  var `?param` = [getPtr simplificationDistance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBakeSimplificationDistance*(self: OccluderInstance3D): Float =
  expandMethodBind(className OccluderInstance3D, "get_bake_simplification_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setOccluder*(self: OccluderInstance3D; occluder: gdref Occluder3D): void =
  expandMethodBind(className OccluderInstance3D, "set_occluder", 1664878165)
  var `?param` = [getPtr occluder]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOccluder*(self: OccluderInstance3D): gdref Occluder3D =
  expandMethodBind(className OccluderInstance3D, "get_occluder", 1696836198)
  var ret: encoded gdref Occluder3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Occluder3D)

template occluder*(self: OccluderInstance3D): untyped = self.getOccluder()
template `occluder=`*(self: OccluderInstance3D; value) = self.setOccluder(value)

template bakeMask*(self: OccluderInstance3D): untyped = self.getBakeMask()
template `bakeMask=`*(self: OccluderInstance3D; value) = self.setBakeMask(value)

template bakeSimplificationDistance*(self: OccluderInstance3D): untyped = self.getBakeSimplificationDistance()
template `bakeSimplificationDistance=`*(self: OccluderInstance3D; value) = self.setBakeSimplificationDistance(value)

const OccluderInstance3D_vmap =
  VisualInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OccluderInstance3D]): Table[string, string] = OccluderInstance3D_vmap