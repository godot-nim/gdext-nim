{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstylebox; export gdstylebox

expandOnClassImported(StyleBoxLine, StyleBox)

proc setColor*(self: StyleBoxLine; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxLine, "set_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getColor*(self: StyleBoxLine): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxLine, "get_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setThickness*(self: StyleBoxLine; thickness: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxLine, "set_thickness", 1286410249)
  methodbind.ptrcall(self, [getPtr thickness], void)

proc getThickness*(self: StyleBoxLine): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxLine, "get_thickness", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setGrowBegin*(self: StyleBoxLine; offset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxLine, "set_grow_begin", 373806689)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getGrowBegin*(self: StyleBoxLine): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxLine, "get_grow_begin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setGrowEnd*(self: StyleBoxLine; offset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxLine, "set_grow_end", 373806689)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getGrowEnd*(self: StyleBoxLine): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxLine, "get_grow_end", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVertical*(self: StyleBoxLine; vertical: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxLine, "set_vertical", 2586408642)
  methodbind.ptrcall(self, [getPtr vertical], void)

proc isVertical*(self: StyleBoxLine): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxLine, "is_vertical", 36873697)
  methodbind.ptrcall(self, [], bool)

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
