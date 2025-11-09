{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(LightOccluder2D, Node2D)

proc setOccluderPolygon*(self: LightOccluder2D; polygon: gdref OccluderPolygon2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightOccluder2D, "set_occluder_polygon", 3258315893)
  methodbind.ptrcall(self, [getPtr polygon], void)

proc getOccluderPolygon*(self: LightOccluder2D): gdref OccluderPolygon2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightOccluder2D, "get_occluder_polygon", 3962317075)
  methodbind.ptrcall(self, [], gdref OccluderPolygon2D)

proc setOccluderLightMask*(self: LightOccluder2D; mask: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightOccluder2D, "set_occluder_light_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getOccluderLightMask*(self: LightOccluder2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightOccluder2D, "get_occluder_light_mask", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setAsSdfCollision*(self: LightOccluder2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightOccluder2D, "set_as_sdf_collision", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isSetAsSdfCollision*(self: LightOccluder2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightOccluder2D, "is_set_as_sdf_collision", 36873697)
  methodbind.ptrcall(self, [], bool)

template occluder*(self: LightOccluder2D): untyped = self.getOccluderPolygon()
template `occluder=`*(self: LightOccluder2D; value) = self.setOccluderPolygon(value)

template sdfCollision*(self: LightOccluder2D): untyped = self.isSetAsSdfCollision()
template `sdfCollision=`*(self: LightOccluder2D; value) = self.setAsSdfCollision(value)

template occluderLightMask*(self: LightOccluder2D): untyped = self.getOccluderLightMask()
template `occluderLightMask=`*(self: LightOccluder2D; value) = self.setOccluderLightMask(value)
