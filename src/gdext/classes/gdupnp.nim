{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getDeviceCount*(self: UPNP): int32 =
  expandMethodBind(className UPNP, "get_device_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getDevice*(self: UPNP; index: int32): gdref UPNPDevice =
  expandMethodBind(className UPNP, "get_device", 2193290270)
  var `?param` = [getPtr index]
  var ret: encoded gdref UPNPDevice
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref UPNPDevice)

proc addDevice*(self: UPNP; device: gdref UPNPDevice): void =
  expandMethodBind(className UPNP, "add_device", 986715920)
  var `?param` = [getPtr device]
  methodbind.ptrcall(self, addr `?param`[0])

proc setDevice*(self: UPNP; index: int32; device: gdref UPNPDevice): void =
  expandMethodBind(className UPNP, "set_device", 3015133723)
  var `?param` = [getPtr index, getPtr device]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeDevice*(self: UPNP; index: int32): void =
  expandMethodBind(className UPNP, "remove_device", 1286410249)
  var `?param` = [getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc clearDevices*(self: UPNP): void =
  expandMethodBind(className UPNP, "clear_devices", 3218959716)
  methodbind.ptrcall(self, nil)

proc getGateway*(self: UPNP): gdref UPNPDevice =
  expandMethodBind(className UPNP, "get_gateway", 2276800779)
  var ret: encoded gdref UPNPDevice
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref UPNPDevice)

proc discover*(self: UPNP; timeout: int32 = 2000; ttl: int32 = 2; deviceFilter: String = gdstring"InternetGatewayDevice"): int32 =
  expandMethodBind(className UPNP, "discover", 1575334765)
  var `?param` = [getPtr timeout, getPtr ttl, getPtr deviceFilter]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc queryExternalAddress*(self: UPNP): String =
  expandMethodBind(className UPNP, "query_external_address", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc addPortMapping*(self: UPNP; port: int32; portInternal: int32 = 0; desc: String = gdstring""; proto: String = gdstring"UDP"; duration: int32 = 0): int32 =
  expandMethodBind(className UPNP, "add_port_mapping", 818314583)
  var `?param` = [getPtr port, getPtr portInternal, getPtr desc, getPtr proto, getPtr duration]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc deletePortMapping*(self: UPNP; port: int32; proto: String = gdstring"UDP"): int32 =
  expandMethodBind(className UPNP, "delete_port_mapping", 3444187325)
  var `?param` = [getPtr port, getPtr proto]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setDiscoverMulticastIf*(self: UPNP; mIf: String): void =
  expandMethodBind(className UPNP, "set_discover_multicast_if", 83702148)
  var `?param` = [getPtr mIf]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDiscoverMulticastIf*(self: UPNP): String =
  expandMethodBind(className UPNP, "get_discover_multicast_if", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setDiscoverLocalPort*(self: UPNP; port: int32): void =
  expandMethodBind(className UPNP, "set_discover_local_port", 1286410249)
  var `?param` = [getPtr port]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDiscoverLocalPort*(self: UPNP): int32 =
  expandMethodBind(className UPNP, "get_discover_local_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setDiscoverIpv6*(self: UPNP; ipv6: bool): void =
  expandMethodBind(className UPNP, "set_discover_ipv6", 2586408642)
  var `?param` = [getPtr ipv6]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDiscoverIpv6*(self: UPNP): bool =
  expandMethodBind(className UPNP, "is_discover_ipv6", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template discoverMulticastIf*(self: UPNP): untyped = self.getDiscoverMulticastIf()
template `discoverMulticastIf=`*(self: UPNP; value) = self.setDiscoverMulticastIf(value)

template discoverLocalPort*(self: UPNP): untyped = self.getDiscoverLocalPort()
template `discoverLocalPort=`*(self: UPNP; value) = self.setDiscoverLocalPort(value)

template discoverIpv6*(self: UPNP): untyped = self.isDiscoverIpv6()
template `discoverIpv6=`*(self: UPNP; value) = self.setDiscoverIpv6(value)

const UPNP_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[UPNP]): Table[string, string] = UPNP_vmap