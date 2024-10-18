{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc resolveHostname*(self: Ip; host: String; ipType: Ip_Type = typeAny): String =
  expandMethodBind(className Ip, "resolve_hostname", 4283295457)
  var `?param` = [getPtr host, getPtr ipType]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc resolveHostnameAddresses*(self: Ip; host: String; ipType: Ip_Type = typeAny): PackedStringArray =
  expandMethodBind(className Ip, "resolve_hostname_addresses", 773767525)
  var `?param` = [getPtr host, getPtr ipType]
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc resolveHostnameQueueItem*(self: Ip; host: String; ipType: Ip_Type = typeAny): int32 =
  expandMethodBind(className Ip, "resolve_hostname_queue_item", 1749894742)
  var `?param` = [getPtr host, getPtr ipType]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getResolveItemStatus*(self: Ip; id: int32): Ip_ResolverStatus =
  expandMethodBind(className Ip, "get_resolve_item_status", 3812250196)
  var `?param` = [getPtr id]
  var ret: encoded Ip_ResolverStatus
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Ip_ResolverStatus)

proc getResolveItemAddress*(self: Ip; id: int32): String =
  expandMethodBind(className Ip, "get_resolve_item_address", 844755477)
  var `?param` = [getPtr id]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getResolveItemAddresses*(self: Ip; id: int32): Array =
  expandMethodBind(className Ip, "get_resolve_item_addresses", 663333327)
  var `?param` = [getPtr id]
  var ret: encoded Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Array)

proc eraseResolveItem*(self: Ip; id: int32): void =
  expandMethodBind(className Ip, "erase_resolve_item", 1286410249)
  var `?param` = [getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLocalAddresses*(self: Ip): PackedStringArray =
  expandMethodBind(className Ip, "get_local_addresses", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getLocalInterfaces*(self: Ip): TypedArray[Dictionary] =
  expandMethodBind(className Ip, "get_local_interfaces", 3995934104)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc clearCache*(self: Ip; hostname: String = gdstring""): void =
  expandMethodBind(className Ip, "clear_cache", 3005725572)
  var `?param` = [getPtr hostname]
  methodbind.ptrcall(self, addr `?param`[0])

const Ip_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Ip]): Table[string, string] = Ip_vmap