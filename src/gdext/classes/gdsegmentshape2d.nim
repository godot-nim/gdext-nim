{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

expandOnClassImported(SegmentShape2D, Shape2D)

proc setA*(self: SegmentShape2D; a: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SegmentShape2D, "set_a", 743155724)
  methodbind.ptrcall(self, [getPtr a], void)

proc getA*(self: SegmentShape2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SegmentShape2D, "get_a", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setB*(self: SegmentShape2D; b: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SegmentShape2D, "set_b", 743155724)
  methodbind.ptrcall(self, [getPtr b], void)

proc getB*(self: SegmentShape2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SegmentShape2D, "get_b", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

template a*(self: SegmentShape2D): untyped = self.getA()
template `a=`*(self: SegmentShape2D; value) = self.setA(value)

template b*(self: SegmentShape2D): untyped = self.getB()
template `b=`*(self: SegmentShape2D; value) = self.setB(value)
