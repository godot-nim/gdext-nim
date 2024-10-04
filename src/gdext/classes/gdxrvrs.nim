{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc getVrsMinRadius*(self: Xrvrs): Float =
  expandMethodBind(className Xrvrs, "get_vrs_min_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVrsMinRadius*(self: Xrvrs; radius: Float): void =
  expandMethodBind(className Xrvrs, "set_vrs_min_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVrsStrength*(self: Xrvrs): Float =
  expandMethodBind(className Xrvrs, "get_vrs_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVrsStrength*(self: Xrvrs; strength: Float): void =
  expandMethodBind(className Xrvrs, "set_vrs_strength", 373806689)
  var `?param` = [getPtr strength]
  methodbind.ptrcall(self, addr `?param`[0])

proc makeVrsTexture*(self: Xrvrs; targetSize: Vector2; eyeFoci: PackedVector2Array): Rid =
  expandMethodBind(className Xrvrs, "make_vrs_texture", 3647044786)
  var `?param` = [getPtr targetSize, getPtr eyeFoci]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

template vrsMinRadius*(self: Xrvrs): untyped = self.getVrsMinRadius()
template `vrsMinRadius=`*(self: Xrvrs; value) = self.setVrsMinRadius(value)

template vrsStrength*(self: Xrvrs): untyped = self.getVrsStrength()
template `vrsStrength=`*(self: Xrvrs; value) = self.setVrsStrength(value)

const Xrvrs_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Xrvrs]): Table[string, string] = Xrvrs_vmap