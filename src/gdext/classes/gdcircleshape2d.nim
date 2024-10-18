{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

proc setRadius*(self: CircleShape2D; radius: Float): void =
  expandMethodBind(className CircleShape2D, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: CircleShape2D): Float =
  expandMethodBind(className CircleShape2D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template radius*(self: CircleShape2D): untyped = self.getRadius()
template `radius=`*(self: CircleShape2D; value) = self.setRadius(value)

const CircleShape2D_vmap =
  Shape2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CircleShape2D]): Table[string, string] = CircleShape2D_vmap