{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdoccluder3d; export gdoccluder3d

expandOnClassImported(QuadOccluder3D, Occluder3D)

proc setSize*(self: QuadOccluder3D; size: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className QuadOccluder3D, "set_size", 743155724)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: QuadOccluder3D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className QuadOccluder3D, "get_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

template size*(self: QuadOccluder3D): untyped = self.getSize()
template `size=`*(self: QuadOccluder3D; value) = self.setSize(value)
