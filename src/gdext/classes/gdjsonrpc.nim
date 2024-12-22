{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc setScope*(self: JSONRPC; scope: String; target: Object): void =
  expandMethodBind(className JSONRPC, "set_scope", 2572618360)
  var `?param` = [getPtr scope, getPtr target]
  methodbind.ptrcall(self, addr `?param`[0])

proc processAction*(self: JSONRPC; action: Variant; recurse: bool = false): Variant =
  expandMethodBind(className JSONRPC, "process_action", 2963479484)
  var `?param` = [getPtr action, getPtr recurse]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc processString*(self: JSONRPC; action: String): String =
  expandMethodBind(className JSONRPC, "process_string", 1703090593)
  var `?param` = [getPtr action]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc makeRequest*(self: JSONRPC; `method`: String; params: Variant; id: Variant): Dictionary =
  expandMethodBind(className JSONRPC, "make_request", 3423508980)
  var `?param` = [getPtr `method`, getPtr params, getPtr id]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc makeResponse*(self: JSONRPC; retval: Variant; id: Variant): Dictionary =
  expandMethodBind(className JSONRPC, "make_response", 5053918)
  var `?param` = [getPtr retval, getPtr id]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc makeNotification*(self: JSONRPC; `method`: String; params: Variant): Dictionary =
  expandMethodBind(className JSONRPC, "make_notification", 2949127017)
  var `?param` = [getPtr `method`, getPtr params]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc makeResponseError*(self: JSONRPC; code: int32; message: String; id: Variant = default(Variant)): Dictionary =
  expandMethodBind(className JSONRPC, "make_response_error", 928596297)
  var `?param` = [getPtr code, getPtr message, getPtr id]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

const JSONRPC_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[JSONRPC]): Table[string, string] = JSONRPC_vmap