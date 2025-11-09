{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(IP, Object)

const ResolverMaxQueries* = 256
const ResolverInvalidId* = -1

proc resolveHostname*(self: IP; host: String; ipType: IP_Type = typeAny): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className IP, "resolve_hostname", 4283295457)
  methodbind.ptrcall(self, [getPtr host, getPtr ipType], String)

proc resolveHostnameAddresses*(self: IP; host: String; ipType: IP_Type = typeAny): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className IP, "resolve_hostname_addresses", 773767525)
  methodbind.ptrcall(self, [getPtr host, getPtr ipType], PackedStringArray)

proc resolveHostnameQueueItem*(self: IP; host: String; ipType: IP_Type = typeAny): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className IP, "resolve_hostname_queue_item", 1749894742)
  methodbind.ptrcall(self, [getPtr host, getPtr ipType], int32)

proc getResolveItemStatus*(self: IP; id: int32): IP_ResolverStatus =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className IP, "get_resolve_item_status", 3812250196)
  methodbind.ptrcall(self, [getPtr id], IP_ResolverStatus)

proc getResolveItemAddress*(self: IP; id: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className IP, "get_resolve_item_address", 844755477)
  methodbind.ptrcall(self, [getPtr id], String)

proc getResolveItemAddresses*(self: IP; id: int32): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className IP, "get_resolve_item_addresses", 663333327)
  methodbind.ptrcall(self, [getPtr id], Array)

proc eraseResolveItem*(self: IP; id: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className IP, "erase_resolve_item", 1286410249)
  methodbind.ptrcall(self, [getPtr id], void)

proc getLocalAddresses*(self: IP): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className IP, "get_local_addresses", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getLocalInterfaces*(self: IP): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className IP, "get_local_interfaces", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Dictionary])

proc clearCache*(self: IP; hostname: String = newGdString()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className IP, "clear_cache", 3005725572)
  methodbind.ptrcall(self, [getPtr hostname], void)
