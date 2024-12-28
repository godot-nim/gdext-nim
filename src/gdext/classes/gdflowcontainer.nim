{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

proc getLineCount*(self: FlowContainer): int32 =
  expandMethodBind(className FlowContainer, "get_line_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setAlignment*(self: FlowContainer; alignment: FlowContainer_AlignmentMode): void =
  expandMethodBind(className FlowContainer, "set_alignment", 575250951)
  methodbind.ptrcall(self, [getPtr alignment])

proc getAlignment*(self: FlowContainer): FlowContainer_AlignmentMode =
  expandMethodBind(className FlowContainer, "get_alignment", 3749743559)
  var ret: encoded FlowContainer_AlignmentMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(FlowContainer_AlignmentMode)

proc setLastWrapAlignment*(self: FlowContainer; lastWrapAlignment: FlowContainer_LastWrapAlignmentMode): void =
  expandMethodBind(className FlowContainer, "set_last_wrap_alignment", 2899697495)
  methodbind.ptrcall(self, [getPtr lastWrapAlignment])

proc getLastWrapAlignment*(self: FlowContainer): FlowContainer_LastWrapAlignmentMode =
  expandMethodBind(className FlowContainer, "get_last_wrap_alignment", 3743456014)
  var ret: encoded FlowContainer_LastWrapAlignmentMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(FlowContainer_LastWrapAlignmentMode)

proc setVertical*(self: FlowContainer; vertical: bool): void =
  expandMethodBind(className FlowContainer, "set_vertical", 2586408642)
  methodbind.ptrcall(self, [getPtr vertical])

proc isVertical*(self: FlowContainer): bool =
  expandMethodBind(className FlowContainer, "is_vertical", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setReverseFill*(self: FlowContainer; reverseFill: bool): void =
  expandMethodBind(className FlowContainer, "set_reverse_fill", 2586408642)
  methodbind.ptrcall(self, [getPtr reverseFill])

proc isReverseFill*(self: FlowContainer): bool =
  expandMethodBind(className FlowContainer, "is_reverse_fill", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template alignment*(self: FlowContainer): untyped = self.getAlignment()
template `alignment=`*(self: FlowContainer; value) = self.setAlignment(value)

template lastWrapAlignment*(self: FlowContainer): untyped = self.getLastWrapAlignment()
template `lastWrapAlignment=`*(self: FlowContainer; value) = self.setLastWrapAlignment(value)

template vertical*(self: FlowContainer): untyped = self.isVertical()
template `vertical=`*(self: FlowContainer; value) = self.setVertical(value)

template reverseFill*(self: FlowContainer): untyped = self.isReverseFill()
template `reverseFill=`*(self: FlowContainer; value) = self.setReverseFill(value)

const FlowContainer_vmap =
  Container.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[FlowContainer]): Table[string, string] = FlowContainer_vmap