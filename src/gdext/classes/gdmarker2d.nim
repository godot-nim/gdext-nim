{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setGizmoExtents*(self: Marker2D; extents: Float): void =
  expandMethodBind(className Marker2D, "set_gizmo_extents", 373806689)
  var `?param` = [getPtr extents]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGizmoExtents*(self: Marker2D): Float =
  expandMethodBind(className Marker2D, "get_gizmo_extents", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template gizmoExtents*(self: Marker2D): untyped = self.getGizmoExtents()
template `gizmoExtents=`*(self: Marker2D; value) = self.setGizmoExtents(value)

const Marker2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Marker2D]): Table[string, string] = Marker2D_vmap