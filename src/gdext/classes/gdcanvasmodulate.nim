{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setColor*(self: CanvasModulate; color: Color): void =
  expandMethodBind(className CanvasModulate, "set_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getColor*(self: CanvasModulate): Color =
  expandMethodBind(className CanvasModulate, "get_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

template color*(self: CanvasModulate): untyped = self.getColor()
template `color=`*(self: CanvasModulate; value) = self.setColor(value)

const CanvasModulate_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CanvasModulate]): Table[string, string] = CanvasModulate_vmap