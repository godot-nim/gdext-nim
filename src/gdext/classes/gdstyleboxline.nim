{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdstylebox; export gdstylebox

proc setColor*(self: StyleBoxLine; color: Color): void =
  expandMethodBind(className StyleBoxLine, "set_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColor*(self: StyleBoxLine): Color =
  expandMethodBind(className StyleBoxLine, "get_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setThickness*(self: StyleBoxLine; thickness: int32): void =
  expandMethodBind(className StyleBoxLine, "set_thickness", 1286410249)
  var `?param` = [getPtr thickness]
  methodbind.ptrcall(self, addr `?param`[0])

proc getThickness*(self: StyleBoxLine): int32 =
  expandMethodBind(className StyleBoxLine, "get_thickness", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setGrowBegin*(self: StyleBoxLine; offset: Float): void =
  expandMethodBind(className StyleBoxLine, "set_grow_begin", 373806689)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGrowBegin*(self: StyleBoxLine): Float =
  expandMethodBind(className StyleBoxLine, "get_grow_begin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setGrowEnd*(self: StyleBoxLine; offset: Float): void =
  expandMethodBind(className StyleBoxLine, "set_grow_end", 373806689)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGrowEnd*(self: StyleBoxLine): Float =
  expandMethodBind(className StyleBoxLine, "get_grow_end", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVertical*(self: StyleBoxLine; vertical: bool): void =
  expandMethodBind(className StyleBoxLine, "set_vertical", 2586408642)
  var `?param` = [getPtr vertical]
  methodbind.ptrcall(self, addr `?param`[0])

proc isVertical*(self: StyleBoxLine): bool =
  expandMethodBind(className StyleBoxLine, "is_vertical", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template color*(self: StyleBoxLine): untyped = self.getColor()
template `color=`*(self: StyleBoxLine; value) = self.setColor(value)

template growBegin*(self: StyleBoxLine): untyped = self.getGrowBegin()
template `growBegin=`*(self: StyleBoxLine; value) = self.setGrowBegin(value)

template growEnd*(self: StyleBoxLine): untyped = self.getGrowEnd()
template `growEnd=`*(self: StyleBoxLine; value) = self.setGrowEnd(value)

template thickness*(self: StyleBoxLine): untyped = self.getThickness()
template `thickness=`*(self: StyleBoxLine; value) = self.setThickness(value)

template vertical*(self: StyleBoxLine): untyped = self.isVertical()
template `vertical=`*(self: StyleBoxLine; value) = self.setVertical(value)

const StyleBoxLine_vmap =
  StyleBox.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[StyleBoxLine]): Table[string, string] = StyleBoxLine_vmap