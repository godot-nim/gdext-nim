{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(OpenXRFutureResult, RefCounted)

proc getStatus*(self: OpenXRFutureResult): OpenXRFutureResult_ResultStatus =
  expandMethodBind(className OpenXRFutureResult, "get_status", 2023607463)
  var ret: encoded OpenXRFutureResult_ResultStatus
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRFutureResult_ResultStatus)

proc getFuture*(self: OpenXRFutureResult): uint64 =
  expandMethodBind(className OpenXRFutureResult, "get_future", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc cancelFuture*(self: OpenXRFutureResult): void =
  expandMethodBind(className OpenXRFutureResult, "cancel_future", 3218959716)
  methodbind.ptrcall(self, [])

proc setResultValue*(self: OpenXRFutureResult; retvalValue: Variant): void =
  expandMethodBind(className OpenXRFutureResult, "set_result_value", 1114965689)
  methodbind.ptrcall(self, [getPtr retvalValue])

proc getResultValue*(self: OpenXRFutureResult): Variant =
  expandMethodBind(className OpenXRFutureResult, "get_result_value", 1214101251)
  var ret: encoded Variant
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Variant)
