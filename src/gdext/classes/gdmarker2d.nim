{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(Marker2D, Node2D)

proc setGizmoExtents*(self: Marker2D; extents: Float): void =
  expandMethodBind(className Marker2D, "set_gizmo_extents", 373806689)
  methodbind.ptrcall(self, [getPtr extents])

proc getGizmoExtents*(self: Marker2D): Float =
  expandMethodBind(className Marker2D, "get_gizmo_extents", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template gizmoExtents*(self: Marker2D): untyped = self.getGizmoExtents()
template `gizmoExtents=`*(self: Marker2D; value) = self.setGizmoExtents(value)
