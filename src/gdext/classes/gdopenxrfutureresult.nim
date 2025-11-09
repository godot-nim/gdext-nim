{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(OpenXRFutureResult, RefCounted)

proc getStatus*(self: OpenXRFutureResult): OpenXRFutureResult_ResultStatus =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRFutureResult, "get_status", 2023607463)
  methodbind.ptrcall(self, [], OpenXRFutureResult_ResultStatus)

proc getFuture*(self: OpenXRFutureResult): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRFutureResult, "get_future", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc cancelFuture*(self: OpenXRFutureResult): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRFutureResult, "cancel_future", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setResultValue*(self: OpenXRFutureResult; retvalValue: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRFutureResult, "set_result_value", 1114965689)
  methodbind.ptrcall(self, [getPtr retvalValue], void)

proc getResultValue*(self: OpenXRFutureResult): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRFutureResult, "get_result_value", 1214101251)
  methodbind.ptrcall(self, [], Variant)
