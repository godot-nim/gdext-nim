{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdoccluder3d; export gdoccluder3d

proc setRadius*(self: SphereOccluder3D; radius: Float): void =
  expandMethodBind(className SphereOccluder3D, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: SphereOccluder3D): Float =
  expandMethodBind(className SphereOccluder3D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template radius*(self: SphereOccluder3D): untyped = self.getRadius()
template `radius=`*(self: SphereOccluder3D; value) = self.setRadius(value)

const SphereOccluder3D_vmap =
  Occluder3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SphereOccluder3D]): Table[string, string] = SphereOccluder3D_vmap