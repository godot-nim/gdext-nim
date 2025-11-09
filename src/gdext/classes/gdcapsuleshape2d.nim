{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

expandOnClassImported(CapsuleShape2D, Shape2D)

proc setRadius*(self: CapsuleShape2D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleShape2D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: CapsuleShape2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleShape2D, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHeight*(self: CapsuleShape2D; height: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleShape2D, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height], void)

proc getHeight*(self: CapsuleShape2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleShape2D, "get_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMidHeight*(self: CapsuleShape2D; midHeight: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleShape2D, "set_mid_height", 373806689)
  methodbind.ptrcall(self, [getPtr midHeight], void)

proc getMidHeight*(self: CapsuleShape2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleShape2D, "get_mid_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

template radius*(self: CapsuleShape2D): untyped = self.getRadius()
template `radius=`*(self: CapsuleShape2D; value) = self.setRadius(value)

template height*(self: CapsuleShape2D): untyped = self.getHeight()
template `height=`*(self: CapsuleShape2D; value) = self.setHeight(value)

template midHeight*(self: CapsuleShape2D): untyped = self.getMidHeight()
template `midHeight=`*(self: CapsuleShape2D; value) = self.setMidHeight(value)
