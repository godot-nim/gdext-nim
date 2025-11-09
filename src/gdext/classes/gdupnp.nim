{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(UPNP, RefCounted)

proc getDeviceCount*(self: UPNP): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNP, "get_device_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getDevice*(self: UPNP; index: int32): gdref UPNPDevice =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNP, "get_device", 2193290270)
  methodbind.ptrcall(self, [getPtr index], gdref UPNPDevice)

proc addDevice*(self: UPNP; device: gdref UPNPDevice): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNP, "add_device", 986715920)
  methodbind.ptrcall(self, [getPtr device], void)

proc setDevice*(self: UPNP; index: int32; device: gdref UPNPDevice): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNP, "set_device", 3015133723)
  methodbind.ptrcall(self, [getPtr index, getPtr device], void)

proc removeDevice*(self: UPNP; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNP, "remove_device", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc clearDevices*(self: UPNP): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNP, "clear_devices", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getGateway*(self: UPNP): gdref UPNPDevice =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNP, "get_gateway", 2276800779)
  methodbind.ptrcall(self, [], gdref UPNPDevice)

proc discover*(self: UPNP; timeout: int32 = 2000; ttl: int32 = 2; deviceFilter: String = newGdString("InternetGatewayDevice")): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNP, "discover", 1575334765)
  methodbind.ptrcall(self, [getPtr timeout, getPtr ttl, getPtr deviceFilter], int32)

proc queryExternalAddress*(self: UPNP): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNP, "query_external_address", 201670096)
  methodbind.ptrcall(self, [], String)

proc addPortMapping*(self: UPNP; port: int32; portInternal: int32 = 0; desc: String = newGdString(); proto: String = newGdString("UDP"); duration: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNP, "add_port_mapping", 818314583)
  methodbind.ptrcall(self, [getPtr port, getPtr portInternal, getPtr desc, getPtr proto, getPtr duration], int32)

proc deletePortMapping*(self: UPNP; port: int32; proto: String = newGdString("UDP")): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNP, "delete_port_mapping", 3444187325)
  methodbind.ptrcall(self, [getPtr port, getPtr proto], int32)

proc setDiscoverMulticastIf*(self: UPNP; mIf: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNP, "set_discover_multicast_if", 83702148)
  methodbind.ptrcall(self, [getPtr mIf], void)

proc getDiscoverMulticastIf*(self: UPNP): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNP, "get_discover_multicast_if", 201670096)
  methodbind.ptrcall(self, [], String)

proc setDiscoverLocalPort*(self: UPNP; port: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNP, "set_discover_local_port", 1286410249)
  methodbind.ptrcall(self, [getPtr port], void)

proc getDiscoverLocalPort*(self: UPNP): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNP, "get_discover_local_port", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setDiscoverIpv6*(self: UPNP; ipv6: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNP, "set_discover_ipv6", 2586408642)
  methodbind.ptrcall(self, [getPtr ipv6], void)

proc isDiscoverIpv6*(self: UPNP): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNP, "is_discover_ipv6", 36873697)
  methodbind.ptrcall(self, [], bool)

template discoverMulticastIf*(self: UPNP): untyped = self.getDiscoverMulticastIf()
template `discoverMulticastIf=`*(self: UPNP; value) = self.setDiscoverMulticastIf(value)

template discoverLocalPort*(self: UPNP): untyped = self.getDiscoverLocalPort()
template `discoverLocalPort=`*(self: UPNP; value) = self.setDiscoverLocalPort(value)

template discoverIpv6*(self: UPNP): untyped = self.isDiscoverIpv6()
template `discoverIpv6=`*(self: UPNP; value) = self.setDiscoverIpv6(value)
