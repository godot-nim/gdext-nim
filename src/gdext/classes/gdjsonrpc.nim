{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc setScope*(self: Jsonrpc; scope: String; target: Object): void =
  expandMethodBind(className Jsonrpc, "set_scope", 2572618360)
  var `?param` = [getPtr scope, getPtr target]
  methodbind.ptrcall(self, addr `?param`[0])

proc processAction*(self: Jsonrpc; action: Variant; recurse: bool = false): Variant =
  expandMethodBind(className Jsonrpc, "process_action", 2963479484)
  var `?param` = [getPtr action, getPtr recurse]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc processString*(self: Jsonrpc; action: String): String =
  expandMethodBind(className Jsonrpc, "process_string", 1703090593)
  var `?param` = [getPtr action]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc makeRequest*(self: Jsonrpc; `method`: String; params: Variant; id: Variant): Dictionary =
  expandMethodBind(className Jsonrpc, "make_request", 3423508980)
  var `?param` = [getPtr `method`, getPtr params, getPtr id]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc makeResponse*(self: Jsonrpc; retval: Variant; id: Variant): Dictionary =
  expandMethodBind(className Jsonrpc, "make_response", 5053918)
  var `?param` = [getPtr retval, getPtr id]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc makeNotification*(self: Jsonrpc; `method`: String; params: Variant): Dictionary =
  expandMethodBind(className Jsonrpc, "make_notification", 2949127017)
  var `?param` = [getPtr `method`, getPtr params]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc makeResponseError*(self: Jsonrpc; code: int32; message: String; id: Variant = default(Variant)): Dictionary =
  expandMethodBind(className Jsonrpc, "make_response_error", 928596297)
  var `?param` = [getPtr code, getPtr message, getPtr id]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

const Jsonrpc_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Jsonrpc]): Table[string, string] = Jsonrpc_vmap