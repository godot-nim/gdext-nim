{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrange; export gdrange

proc setTicks*(self: Slider; count: int32): void =
  expandMethodBind(className Slider, "set_ticks", 1286410249)
  var `?param` = [getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTicks*(self: Slider): int32 =
  expandMethodBind(className Slider, "get_ticks", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getTicksOnBorders*(self: Slider): bool =
  expandMethodBind(className Slider, "get_ticks_on_borders", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setTicksOnBorders*(self: Slider; ticksOnBorder: bool): void =
  expandMethodBind(className Slider, "set_ticks_on_borders", 2586408642)
  var `?param` = [getPtr ticksOnBorder]
  methodbind.ptrcall(self, addr `?param`[0])

proc setEditable*(self: Slider; editable: bool): void =
  expandMethodBind(className Slider, "set_editable", 2586408642)
  var `?param` = [getPtr editable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEditable*(self: Slider): bool =
  expandMethodBind(className Slider, "is_editable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setScrollable*(self: Slider; scrollable: bool): void =
  expandMethodBind(className Slider, "set_scrollable", 2586408642)
  var `?param` = [getPtr scrollable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isScrollable*(self: Slider): bool =
  expandMethodBind(className Slider, "is_scrollable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template editable*(self: Slider): untyped = self.isEditable()
template `editable=`*(self: Slider; value) = self.setEditable(value)

template scrollable*(self: Slider): untyped = self.isScrollable()
template `scrollable=`*(self: Slider; value) = self.setScrollable(value)

template tickCount*(self: Slider): untyped = self.getTicks()
template `tickCount=`*(self: Slider; value) = self.setTicks(value)

template ticksOnBorders*(self: Slider): untyped = self.getTicksOnBorders()
template `ticksOnBorders=`*(self: Slider; value) = self.setTicksOnBorders(value)

const Slider_vmap =
  Range.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Slider]): Table[string, string] = Slider_vmap

proc dragStarted*(self: Slider): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("drag_started")
  self.emitSignal(signalname)

proc dragEnded*(self: Slider; valueChanged: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("drag_ended")
  let args = [valueChanged]
  self.emitSignal(signalname, args)