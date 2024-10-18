{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

proc setRadius*(self: SphereShape3D; radius: Float): void =
  expandMethodBind(className SphereShape3D, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: SphereShape3D): Float =
  expandMethodBind(className SphereShape3D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template radius*(self: SphereShape3D): untyped = self.getRadius()
template `radius=`*(self: SphereShape3D; value) = self.setRadius(value)

const SphereShape3D_vmap =
  Shape3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SphereShape3D]): Table[string, string] = SphereShape3D_vmap