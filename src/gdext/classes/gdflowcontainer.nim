{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

expandOnClassImported(FlowContainer, Container)

proc getLineCount*(self: FlowContainer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FlowContainer, "get_line_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setAlignment*(self: FlowContainer; alignment: FlowContainer_AlignmentMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FlowContainer, "set_alignment", 575250951)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getAlignment*(self: FlowContainer): FlowContainer_AlignmentMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FlowContainer, "get_alignment", 3749743559)
  methodbind.ptrcall(self, [], FlowContainer_AlignmentMode)

proc setLastWrapAlignment*(self: FlowContainer; lastWrapAlignment: FlowContainer_LastWrapAlignmentMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FlowContainer, "set_last_wrap_alignment", 2899697495)
  methodbind.ptrcall(self, [getPtr lastWrapAlignment], void)

proc getLastWrapAlignment*(self: FlowContainer): FlowContainer_LastWrapAlignmentMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FlowContainer, "get_last_wrap_alignment", 3743456014)
  methodbind.ptrcall(self, [], FlowContainer_LastWrapAlignmentMode)

proc setVertical*(self: FlowContainer; vertical: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FlowContainer, "set_vertical", 2586408642)
  methodbind.ptrcall(self, [getPtr vertical], void)

proc isVertical*(self: FlowContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FlowContainer, "is_vertical", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setReverseFill*(self: FlowContainer; reverseFill: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FlowContainer, "set_reverse_fill", 2586408642)
  methodbind.ptrcall(self, [getPtr reverseFill], void)

proc isReverseFill*(self: FlowContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FlowContainer, "is_reverse_fill", 36873697)
  methodbind.ptrcall(self, [], bool)

template alignment*(self: FlowContainer): untyped = self.getAlignment()
template `alignment=`*(self: FlowContainer; value) = self.setAlignment(value)

template lastWrapAlignment*(self: FlowContainer): untyped = self.getLastWrapAlignment()
template `lastWrapAlignment=`*(self: FlowContainer; value) = self.setLastWrapAlignment(value)

template vertical*(self: FlowContainer): untyped = self.isVertical()
template `vertical=`*(self: FlowContainer; value) = self.setVertical(value)

template reverseFill*(self: FlowContainer): untyped = self.isReverseFill()
template `reverseFill=`*(self: FlowContainer; value) = self.setReverseFill(value)
