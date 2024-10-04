{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

proc setSize*(self: RectangleShape2D; size: Vector2): void =
  expandMethodBind(className RectangleShape2D, "set_size", 743155724)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: RectangleShape2D): Vector2 =
  expandMethodBind(className RectangleShape2D, "get_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

template size*(self: RectangleShape2D): untyped = self.getSize()
template `size=`*(self: RectangleShape2D; value) = self.setSize(value)

const RectangleShape2D_vmap =
  Shape2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RectangleShape2D]): Table[string, string] = RectangleShape2D_vmap