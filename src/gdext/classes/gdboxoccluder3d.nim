{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdoccluder3d; export gdoccluder3d

expandOnClassImported(BoxOccluder3D, Occluder3D)

proc setSize*(self: BoxOccluder3D; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoxOccluder3D, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: BoxOccluder3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoxOccluder3D, "get_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

template size*(self: BoxOccluder3D): untyped = self.getSize()
template `size=`*(self: BoxOccluder3D; value) = self.setSize(value)
