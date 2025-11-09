{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

expandOnClassImported(BoxShape3D, Shape3D)

proc setSize*(self: BoxShape3D; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoxShape3D, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: BoxShape3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoxShape3D, "get_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

template size*(self: BoxShape3D): untyped = self.getSize()
template `size=`*(self: BoxShape3D; value) = self.setSize(value)
