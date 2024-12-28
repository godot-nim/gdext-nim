{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setOccluderPolygon*(self: LightOccluder2D; polygon: gdref OccluderPolygon2D): void =
  expandMethodBind(className LightOccluder2D, "set_occluder_polygon", 3258315893)
  methodbind.ptrcall(self, [getPtr polygon])

proc getOccluderPolygon*(self: LightOccluder2D): gdref OccluderPolygon2D =
  expandMethodBind(className LightOccluder2D, "get_occluder_polygon", 3962317075)
  var ret: encoded gdref OccluderPolygon2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref OccluderPolygon2D)

proc setOccluderLightMask*(self: LightOccluder2D; mask: int32): void =
  expandMethodBind(className LightOccluder2D, "set_occluder_light_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask])

proc getOccluderLightMask*(self: LightOccluder2D): int32 =
  expandMethodBind(className LightOccluder2D, "get_occluder_light_mask", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setAsSdfCollision*(self: LightOccluder2D; enable: bool): void =
  expandMethodBind(className LightOccluder2D, "set_as_sdf_collision", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isSetAsSdfCollision*(self: LightOccluder2D): bool =
  expandMethodBind(className LightOccluder2D, "is_set_as_sdf_collision", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template occluder*(self: LightOccluder2D): untyped = self.getOccluderPolygon()
template `occluder=`*(self: LightOccluder2D; value) = self.setOccluderPolygon(value)

template sdfCollision*(self: LightOccluder2D): untyped = self.isSetAsSdfCollision()
template `sdfCollision=`*(self: LightOccluder2D; value) = self.setAsSdfCollision(value)

template occluderLightMask*(self: LightOccluder2D): untyped = self.getOccluderLightMask()
template `occluderLightMask=`*(self: LightOccluder2D; value) = self.setOccluderLightMask(value)

const LightOccluder2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[LightOccluder2D]): Table[string, string] = LightOccluder2D_vmap