{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(JSONRPC, Object)

proc setMethod*(self: JSONRPC; name: String; callback: Callable): void =
  expandMethodBind(className JSONRPC, "set_method", 2137474292)
  methodbind.ptrcall(self, [getPtr name, getPtr callback])

proc processAction*(self: JSONRPC; action: Variant; recurse: bool = false): Variant =
  expandMethodBind(className JSONRPC, "process_action", 2963479484)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr action, getPtr recurse], addr ret)
  (addr ret).decode_result(Variant)

proc processString*(self: JSONRPC; action: String): String =
  expandMethodBind(className JSONRPC, "process_string", 1703090593)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr action], addr ret)
  (addr ret).decode_result(String)

proc makeRequest*(self: JSONRPC; `method`: String; params: Variant; id: Variant): Dictionary[Variant, Variant] =
  expandMethodBind(className JSONRPC, "make_request", 3423508980)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr `method`, getPtr params, getPtr id], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc makeResponse*(self: JSONRPC; retval: Variant; id: Variant): Dictionary[Variant, Variant] =
  expandMethodBind(className JSONRPC, "make_response", 5053918)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr retval, getPtr id], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc makeNotification*(self: JSONRPC; `method`: String; params: Variant): Dictionary[Variant, Variant] =
  expandMethodBind(className JSONRPC, "make_notification", 2949127017)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr `method`, getPtr params], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc makeResponseError*(self: JSONRPC; code: int32; message: String; id: Variant = default(Variant)): Dictionary[Variant, Variant] =
  expandMethodBind(className JSONRPC, "make_response_error", 928596297)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr code, getPtr message, getPtr id], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])
