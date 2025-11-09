{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(Marker2D, Node2D)

proc setGizmoExtents*(self: Marker2D; extents: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Marker2D, "set_gizmo_extents", 373806689)
  methodbind.ptrcall(self, [getPtr extents], void)

proc getGizmoExtents*(self: Marker2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Marker2D, "get_gizmo_extents", 1740695150)
  methodbind.ptrcall(self, [], Float)

template gizmoExtents*(self: Marker2D): untyped = self.getGizmoExtents()
template `gizmoExtents=`*(self: Marker2D; value) = self.setGizmoExtents(value)
