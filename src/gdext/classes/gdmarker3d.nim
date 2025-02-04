{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setGizmoExtents*(self: Marker3D; extents: Float): void =
  expandMethodBind(className Marker3D, "set_gizmo_extents", 373806689)
  methodbind.ptrcall(self, [getPtr extents])

proc getGizmoExtents*(self: Marker3D): Float =
  expandMethodBind(className Marker3D, "get_gizmo_extents", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template gizmoExtents*(self: Marker3D): untyped = self.getGizmoExtents()
template `gizmoExtents=`*(self: Marker3D; value) = self.setGizmoExtents(value)

const Marker3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Marker3D]): Table[string, string] = Marker3D_vmap