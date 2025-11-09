{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

expandOnClassImported(SeparationRayShape3D, Shape3D)

proc setLength*(self: SeparationRayShape3D; length: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SeparationRayShape3D, "set_length", 373806689)
  methodbind.ptrcall(self, [getPtr length], void)

proc getLength*(self: SeparationRayShape3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SeparationRayShape3D, "get_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSlideOnSlope*(self: SeparationRayShape3D; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SeparationRayShape3D, "set_slide_on_slope", 2586408642)
  methodbind.ptrcall(self, [getPtr active], void)

proc getSlideOnSlope*(self: SeparationRayShape3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SeparationRayShape3D, "get_slide_on_slope", 36873697)
  methodbind.ptrcall(self, [], bool)

template length*(self: SeparationRayShape3D): untyped = self.getLength()
template `length=`*(self: SeparationRayShape3D; value) = self.setLength(value)

template slideOnSlope*(self: SeparationRayShape3D): untyped = self.getSlideOnSlope()
template `slideOnSlope=`*(self: SeparationRayShape3D; value) = self.setSlideOnSlope(value)
