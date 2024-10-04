{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

proc setColor*(self: ColorRect; color: Color): void =
  expandMethodBind(className ColorRect, "set_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColor*(self: ColorRect): Color =
  expandMethodBind(className ColorRect, "get_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

template color*(self: ColorRect): untyped = self.getColor()
template `color=`*(self: ColorRect; value) = self.setColor(value)

const ColorRect_vmap =
  Control.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ColorRect]): Table[string, string] = ColorRect_vmap