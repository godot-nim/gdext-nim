{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(Marker3D, Node3D)

proc setGizmoExtents*(self: Marker3D; extents: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Marker3D, "set_gizmo_extents", 373806689)
  methodbind.ptrcall(self, [getPtr extents], void)

proc getGizmoExtents*(self: Marker3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Marker3D, "get_gizmo_extents", 1740695150)
  methodbind.ptrcall(self, [], Float)

template gizmoExtents*(self: Marker3D): untyped = self.getGizmoExtents()
template `gizmoExtents=`*(self: Marker3D; value) = self.setGizmoExtents(value)
