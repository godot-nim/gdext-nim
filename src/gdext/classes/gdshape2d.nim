{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Shape2D, Resource)

proc setCustomSolverBias*(self: Shape2D; bias: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shape2D, "set_custom_solver_bias", 373806689)
  methodbind.ptrcall(self, [getPtr bias], void)

proc getCustomSolverBias*(self: Shape2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shape2D, "get_custom_solver_bias", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc collide*(self: Shape2D; localXform: Transform2D; withShape: gdref Shape2D; shapeXform: Transform2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shape2D, "collide", 3709843132)
  methodbind.ptrcall(self, [getPtr localXform, getPtr withShape, getPtr shapeXform], bool)

proc collideWithMotion*(self: Shape2D; localXform: Transform2D; localMotion: Vector2; withShape: gdref Shape2D; shapeXform: Transform2D; shapeMotion: Vector2): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shape2D, "collide_with_motion", 2869556801)
  methodbind.ptrcall(self, [getPtr localXform, getPtr localMotion, getPtr withShape, getPtr shapeXform, getPtr shapeMotion], bool)

proc collideAndGetContacts*(self: Shape2D; localXform: Transform2D; withShape: gdref Shape2D; shapeXform: Transform2D): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shape2D, "collide_and_get_contacts", 3056932662)
  methodbind.ptrcall(self, [getPtr localXform, getPtr withShape, getPtr shapeXform], PackedVector2Array)

proc collideWithMotionAndGetContacts*(self: Shape2D; localXform: Transform2D; localMotion: Vector2; withShape: gdref Shape2D; shapeXform: Transform2D; shapeMotion: Vector2): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shape2D, "collide_with_motion_and_get_contacts", 3620351573)
  methodbind.ptrcall(self, [getPtr localXform, getPtr localMotion, getPtr withShape, getPtr shapeXform, getPtr shapeMotion], PackedVector2Array)

proc draw*(self: Shape2D; canvasItem: RID; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shape2D, "draw", 2948539648)
  methodbind.ptrcall(self, [getPtr canvasItem, getPtr color], void)

proc getRect*(self: Shape2D): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shape2D, "get_rect", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

template customSolverBias*(self: Shape2D): untyped = self.getCustomSolverBias()
template `customSolverBias=`*(self: Shape2D; value) = self.setCustomSolverBias(value)
