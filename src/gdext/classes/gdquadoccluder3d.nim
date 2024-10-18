{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdoccluder3d; export gdoccluder3d

proc setSize*(self: QuadOccluder3D; size: Vector2): void =
  expandMethodBind(className QuadOccluder3D, "set_size", 743155724)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: QuadOccluder3D): Vector2 =
  expandMethodBind(className QuadOccluder3D, "get_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

template size*(self: QuadOccluder3D): untyped = self.getSize()
template `size=`*(self: QuadOccluder3D; value) = self.setSize(value)

const QuadOccluder3D_vmap =
  Occluder3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[QuadOccluder3D]): Table[string, string] = QuadOccluder3D_vmap