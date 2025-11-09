{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

expandOnClassImported(WorldBoundaryShape3D, Shape3D)

proc setPlane*(self: WorldBoundaryShape3D; plane: Plane): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorldBoundaryShape3D, "set_plane", 3505987427)
  methodbind.ptrcall(self, [getPtr plane], void)

proc getPlane*(self: WorldBoundaryShape3D): Plane =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorldBoundaryShape3D, "get_plane", 2753500971)
  methodbind.ptrcall(self, [], Plane)

template plane*(self: WorldBoundaryShape3D): untyped = self.getPlane()
template `plane=`*(self: WorldBoundaryShape3D; value) = self.setPlane(value)
