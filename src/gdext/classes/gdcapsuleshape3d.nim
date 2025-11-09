{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

expandOnClassImported(CapsuleShape3D, Shape3D)

proc setRadius*(self: CapsuleShape3D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleShape3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: CapsuleShape3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleShape3D, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHeight*(self: CapsuleShape3D; height: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleShape3D, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height], void)

proc getHeight*(self: CapsuleShape3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleShape3D, "get_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMidHeight*(self: CapsuleShape3D; midHeight: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleShape3D, "set_mid_height", 373806689)
  methodbind.ptrcall(self, [getPtr midHeight], void)

proc getMidHeight*(self: CapsuleShape3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleShape3D, "get_mid_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

template radius*(self: CapsuleShape3D): untyped = self.getRadius()
template `radius=`*(self: CapsuleShape3D; value) = self.setRadius(value)

template height*(self: CapsuleShape3D): untyped = self.getHeight()
template `height=`*(self: CapsuleShape3D; value) = self.setHeight(value)

template midHeight*(self: CapsuleShape3D): untyped = self.getMidHeight()
template `midHeight=`*(self: CapsuleShape3D; value) = self.setMidHeight(value)
