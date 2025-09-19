{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrextensionwrapper; export gdopenxrextensionwrapper

expandOnClassImported(OpenXRFutureExtension, OpenXRExtensionWrapper)

proc isActive*(self: OpenXRFutureExtension): bool =
  expandMethodBind(className OpenXRFutureExtension, "is_active", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc registerFuture*(self: OpenXRFutureExtension; future: uint64; onSuccess: Callable = callable()): gdref OpenXRFutureResult =
  expandMethodBind(className OpenXRFutureExtension, "register_future", 1038012256)
  var ret: encoded gdref OpenXRFutureResult
  methodbind.ptrcall(self, [getPtr future, getPtr onSuccess], addr ret)
  (addr ret).decode_result(gdref OpenXRFutureResult)

proc cancelFuture*(self: OpenXRFutureExtension; future: uint64): void =
  expandMethodBind(className OpenXRFutureExtension, "cancel_future", 1286410249)
  methodbind.ptrcall(self, [getPtr future])
