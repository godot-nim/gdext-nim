{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrange; export gdrange

expandOnClassImported(Slider, Range)

proc setTicks*(self: Slider; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Slider, "set_ticks", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getTicks*(self: Slider): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Slider, "get_ticks", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getTicksOnBorders*(self: Slider): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Slider, "get_ticks_on_borders", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTicksOnBorders*(self: Slider; ticksOnBorder: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Slider, "set_ticks_on_borders", 2586408642)
  methodbind.ptrcall(self, [getPtr ticksOnBorder], void)

proc getTicksPosition*(self: Slider): Slider_TickPosition =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Slider, "get_ticks_position", 3567635531)
  methodbind.ptrcall(self, [], Slider_TickPosition)

proc setTicksPosition*(self: Slider; ticksOnBorder: Slider_TickPosition): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Slider, "set_ticks_position", 2952822224)
  methodbind.ptrcall(self, [getPtr ticksOnBorder], void)

proc setEditable*(self: Slider; editable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Slider, "set_editable", 2586408642)
  methodbind.ptrcall(self, [getPtr editable], void)

proc isEditable*(self: Slider): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Slider, "is_editable", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setScrollable*(self: Slider; scrollable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Slider, "set_scrollable", 2586408642)
  methodbind.ptrcall(self, [getPtr scrollable], void)

proc isScrollable*(self: Slider): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Slider, "is_scrollable", 36873697)
  methodbind.ptrcall(self, [], bool)

template editable*(self: Slider): untyped = self.isEditable()
template `editable=`*(self: Slider; value) = self.setEditable(value)

template scrollable*(self: Slider): untyped = self.isScrollable()
template `scrollable=`*(self: Slider; value) = self.setScrollable(value)

template tickCount*(self: Slider): untyped = self.getTicks()
template `tickCount=`*(self: Slider; value) = self.setTicks(value)

template ticksOnBorders*(self: Slider): untyped = self.getTicksOnBorders()
template `ticksOnBorders=`*(self: Slider; value) = self.setTicksOnBorders(value)

template ticksPosition*(self: Slider): untyped = self.getTicksPosition()
template `ticksPosition=`*(self: Slider; value) = self.setTicksPosition(value)
