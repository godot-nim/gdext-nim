{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrextensionwrapper; export gdopenxrextensionwrapper

expandOnClassImported(OpenXRFutureExtension, OpenXRExtensionWrapper)

proc isActive*(self: OpenXRFutureExtension): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRFutureExtension, "is_active", 36873697)
  methodbind.ptrcall(self, [], bool)

proc registerFuture*(self: OpenXRFutureExtension; future: uint64; onSuccess: Callable = callable()): gdref OpenXRFutureResult =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRFutureExtension, "register_future", 1038012256)
  methodbind.ptrcall(self, [getPtr future, getPtr onSuccess], gdref OpenXRFutureResult)

proc cancelFuture*(self: OpenXRFutureExtension; future: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRFutureExtension, "cancel_future", 1286410249)
  methodbind.ptrcall(self, [getPtr future], void)
