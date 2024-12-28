{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

proc setA*(self: SegmentShape2D; a: Vector2): void =
  expandMethodBind(className SegmentShape2D, "set_a", 743155724)
  methodbind.ptrcall(self, [getPtr a])

proc getA*(self: SegmentShape2D): Vector2 =
  expandMethodBind(className SegmentShape2D, "get_a", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setB*(self: SegmentShape2D; b: Vector2): void =
  expandMethodBind(className SegmentShape2D, "set_b", 743155724)
  methodbind.ptrcall(self, [getPtr b])

proc getB*(self: SegmentShape2D): Vector2 =
  expandMethodBind(className SegmentShape2D, "get_b", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

template a*(self: SegmentShape2D): untyped = self.getA()
template `a=`*(self: SegmentShape2D; value) = self.setA(value)

template b*(self: SegmentShape2D): untyped = self.getB()
template `b=`*(self: SegmentShape2D; value) = self.setB(value)

const SegmentShape2D_vmap =
  Shape2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SegmentShape2D]): Table[string, string] = SegmentShape2D_vmap