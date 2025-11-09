{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(JSONRPC, Object)

proc setMethod*(self: JSONRPC; name: String; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JSONRPC, "set_method", 2137474292)
  methodbind.ptrcall(self, [getPtr name, getPtr callback], void)

proc processAction*(self: JSONRPC; action: Variant; recurse: bool = false): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JSONRPC, "process_action", 2963479484)
  methodbind.ptrcall(self, [getPtr action, getPtr recurse], Variant)

proc processString*(self: JSONRPC; action: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JSONRPC, "process_string", 1703090593)
  methodbind.ptrcall(self, [getPtr action], String)

proc makeRequest*(self: JSONRPC; `method`: String; params: Variant; id: Variant): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JSONRPC, "make_request", 3423508980)
  methodbind.ptrcall(self, [getPtr `method`, getPtr params, getPtr id], Dictionary)

proc makeResponse*(self: JSONRPC; retval: Variant; id: Variant): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JSONRPC, "make_response", 5053918)
  methodbind.ptrcall(self, [getPtr retval, getPtr id], Dictionary)

proc makeNotification*(self: JSONRPC; `method`: String; params: Variant): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JSONRPC, "make_notification", 2949127017)
  methodbind.ptrcall(self, [getPtr `method`, getPtr params], Dictionary)

proc makeResponseError*(self: JSONRPC; code: int32; message: String; id: Variant = default(Variant)): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JSONRPC, "make_response_error", 928596297)
  methodbind.ptrcall(self, [getPtr code, getPtr message, getPtr id], Dictionary)
