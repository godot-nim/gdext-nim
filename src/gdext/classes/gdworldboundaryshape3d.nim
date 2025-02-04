{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

proc setPlane*(self: WorldBoundaryShape3D; plane: Plane): void =
  expandMethodBind(className WorldBoundaryShape3D, "set_plane", 3505987427)
  methodbind.ptrcall(self, [getPtr plane])

proc getPlane*(self: WorldBoundaryShape3D): Plane =
  expandMethodBind(className WorldBoundaryShape3D, "get_plane", 2753500971)
  var ret: encoded Plane
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Plane)

template plane*(self: WorldBoundaryShape3D): untyped = self.getPlane()
template `plane=`*(self: WorldBoundaryShape3D; value) = self.setPlane(value)

const WorldBoundaryShape3D_vmap =
  Shape3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[WorldBoundaryShape3D]): Table[string, string] = WorldBoundaryShape3D_vmap