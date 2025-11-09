{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

expandOnClassImported(OccluderInstance3D, VisualInstance3D)

proc setBakeMask*(self: OccluderInstance3D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OccluderInstance3D, "set_bake_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getBakeMask*(self: OccluderInstance3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OccluderInstance3D, "get_bake_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setBakeMaskValue*(self: OccluderInstance3D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OccluderInstance3D, "set_bake_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getBakeMaskValue*(self: OccluderInstance3D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OccluderInstance3D, "get_bake_mask_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setBakeSimplificationDistance*(self: OccluderInstance3D; simplificationDistance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OccluderInstance3D, "set_bake_simplification_distance", 373806689)
  methodbind.ptrcall(self, [getPtr simplificationDistance], void)

proc getBakeSimplificationDistance*(self: OccluderInstance3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OccluderInstance3D, "get_bake_simplification_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setOccluder*(self: OccluderInstance3D; occluder: gdref Occluder3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OccluderInstance3D, "set_occluder", 1664878165)
  methodbind.ptrcall(self, [getPtr occluder], void)

proc getOccluder*(self: OccluderInstance3D): gdref Occluder3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OccluderInstance3D, "get_occluder", 1696836198)
  methodbind.ptrcall(self, [], gdref Occluder3D)

template occluder*(self: OccluderInstance3D): untyped = self.getOccluder()
template `occluder=`*(self: OccluderInstance3D; value) = self.setOccluder(value)

template bakeMask*(self: OccluderInstance3D): untyped = self.getBakeMask()
template `bakeMask=`*(self: OccluderInstance3D; value) = self.setBakeMask(value)

template bakeSimplificationDistance*(self: OccluderInstance3D): untyped = self.getBakeSimplificationDistance()
template `bakeSimplificationDistance=`*(self: OccluderInstance3D; value) = self.setBakeSimplificationDistance(value)
