{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc resolveHostname*(self: IP; host: String; ipType: IP_Type = typeAny): String =
  expandMethodBind(className IP, "resolve_hostname", 4283295457)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr host, getPtr ipType], addr ret)
  (addr ret).decode_result(String)

proc resolveHostnameAddresses*(self: IP; host: String; ipType: IP_Type = typeAny): PackedStringArray =
  expandMethodBind(className IP, "resolve_hostname_addresses", 773767525)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr host, getPtr ipType], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc resolveHostnameQueueItem*(self: IP; host: String; ipType: IP_Type = typeAny): int32 =
  expandMethodBind(className IP, "resolve_hostname_queue_item", 1749894742)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr host, getPtr ipType], addr ret)
  (addr ret).decode_result(int32)

proc getResolveItemStatus*(self: IP; id: int32): IP_ResolverStatus =
  expandMethodBind(className IP, "get_resolve_item_status", 3812250196)
  var ret: encoded IP_ResolverStatus
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(IP_ResolverStatus)

proc getResolveItemAddress*(self: IP; id: int32): String =
  expandMethodBind(className IP, "get_resolve_item_address", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(String)

proc getResolveItemAddresses*(self: IP; id: int32): Array =
  expandMethodBind(className IP, "get_resolve_item_addresses", 663333327)
  var ret: encoded Array
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(Array)

proc eraseResolveItem*(self: IP; id: int32): void =
  expandMethodBind(className IP, "erase_resolve_item", 1286410249)
  methodbind.ptrcall(self, [getPtr id])

proc getLocalAddresses*(self: IP): PackedStringArray =
  expandMethodBind(className IP, "get_local_addresses", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getLocalInterfaces*(self: IP): TypedArray[Dictionary] =
  expandMethodBind(className IP, "get_local_interfaces", 3995934104)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc clearCache*(self: IP; hostname: String = gdstring""): void =
  expandMethodBind(className IP, "clear_cache", 3005725572)
  methodbind.ptrcall(self, [getPtr hostname])

const IP_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[IP]): Table[string, string] = IP_vmap