{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

expandOnClassImported(SeparationRayShape2D, Shape2D)

proc setLength*(self: SeparationRayShape2D; length: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SeparationRayShape2D, "set_length", 373806689)
  methodbind.ptrcall(self, [getPtr length], void)

proc getLength*(self: SeparationRayShape2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SeparationRayShape2D, "get_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSlideOnSlope*(self: SeparationRayShape2D; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SeparationRayShape2D, "set_slide_on_slope", 2586408642)
  methodbind.ptrcall(self, [getPtr active], void)

proc getSlideOnSlope*(self: SeparationRayShape2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SeparationRayShape2D, "get_slide_on_slope", 36873697)
  methodbind.ptrcall(self, [], bool)

template length*(self: SeparationRayShape2D): untyped = self.getLength()
template `length=`*(self: SeparationRayShape2D; value) = self.setLength(value)

template slideOnSlope*(self: SeparationRayShape2D): untyped = self.getSlideOnSlope()
template `slideOnSlope=`*(self: SeparationRayShape2D; value) = self.setSlideOnSlope(value)
