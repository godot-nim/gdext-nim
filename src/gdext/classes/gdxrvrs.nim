{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getVrsMinRadius*(self: XRVRS): Float =
  expandMethodBind(className XRVRS, "get_vrs_min_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVrsMinRadius*(self: XRVRS; radius: Float): void =
  expandMethodBind(className XRVRS, "set_vrs_min_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVrsStrength*(self: XRVRS): Float =
  expandMethodBind(className XRVRS, "get_vrs_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVrsStrength*(self: XRVRS; strength: Float): void =
  expandMethodBind(className XRVRS, "set_vrs_strength", 373806689)
  var `?param` = [getPtr strength]
  methodbind.ptrcall(self, addr `?param`[0])

proc makeVrsTexture*(self: XRVRS; targetSize: Vector2; eyeFoci: PackedVector2Array): RID =
  expandMethodBind(className XRVRS, "make_vrs_texture", 3647044786)
  var `?param` = [getPtr targetSize, getPtr eyeFoci]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

template vrsMinRadius*(self: XRVRS): untyped = self.getVrsMinRadius()
template `vrsMinRadius=`*(self: XRVRS; value) = self.setVrsMinRadius(value)

template vrsStrength*(self: XRVRS): untyped = self.getVrsStrength()
template `vrsStrength=`*(self: XRVRS; value) = self.setVrsStrength(value)

const XRVRS_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XRVRS]): Table[string, string] = XRVRS_vmap