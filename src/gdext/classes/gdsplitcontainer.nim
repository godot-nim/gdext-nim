{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

proc setSplitOffset*(self: SplitContainer; offset: int32): void =
  expandMethodBind(className SplitContainer, "set_split_offset", 1286410249)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSplitOffset*(self: SplitContainer): int32 =
  expandMethodBind(className SplitContainer, "get_split_offset", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc clampSplitOffset*(self: SplitContainer): void =
  expandMethodBind(className SplitContainer, "clamp_split_offset", 3218959716)
  methodbind.ptrcall(self, nil)

proc setCollapsed*(self: SplitContainer; collapsed: bool): void =
  expandMethodBind(className SplitContainer, "set_collapsed", 2586408642)
  var `?param` = [getPtr collapsed]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollapsed*(self: SplitContainer): bool =
  expandMethodBind(className SplitContainer, "is_collapsed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDraggerVisibility*(self: SplitContainer; mode: SplitContainer_DraggerVisibility): void =
  expandMethodBind(className SplitContainer, "set_dragger_visibility", 1168273952)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDraggerVisibility*(self: SplitContainer): SplitContainer_DraggerVisibility =
  expandMethodBind(className SplitContainer, "get_dragger_visibility", 967297479)
  var ret: encoded SplitContainer_DraggerVisibility
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(SplitContainer_DraggerVisibility)

proc setVertical*(self: SplitContainer; vertical: bool): void =
  expandMethodBind(className SplitContainer, "set_vertical", 2586408642)
  var `?param` = [getPtr vertical]
  methodbind.ptrcall(self, addr `?param`[0])

proc isVertical*(self: SplitContainer): bool =
  expandMethodBind(className SplitContainer, "is_vertical", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template splitOffset*(self: SplitContainer): untyped = self.getSplitOffset()
template `splitOffset=`*(self: SplitContainer; value) = self.setSplitOffset(value)

template collapsed*(self: SplitContainer): untyped = self.isCollapsed()
template `collapsed=`*(self: SplitContainer; value) = self.setCollapsed(value)

template draggerVisibility*(self: SplitContainer): untyped = self.getDraggerVisibility()
template `draggerVisibility=`*(self: SplitContainer; value) = self.setDraggerVisibility(value)

template vertical*(self: SplitContainer): untyped = self.isVertical()
template `vertical=`*(self: SplitContainer; value) = self.setVertical(value)

const SplitContainer_vmap =
  Container.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SplitContainer]): Table[string, string] = SplitContainer_vmap

proc dragged*(self: SplitContainer; offset: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("dragged")
  let args = [offset]
  self.emitSignal(signalname, args)