{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getDeviceCount*(self: Upnp): int32 =
  expandMethodBind(className Upnp, "get_device_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getDevice*(self: Upnp; index: int32): gdref UpnpDevice =
  expandMethodBind(className Upnp, "get_device", 2193290270)
  var `?param` = [getPtr index]
  var ret: encoded gdref UpnpDevice
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref UpnpDevice)

proc addDevice*(self: Upnp; device: gdref UpnpDevice): void =
  expandMethodBind(className Upnp, "add_device", 986715920)
  var `?param` = [getPtr device]
  methodbind.ptrcall(self, addr `?param`[0])

proc setDevice*(self: Upnp; index: int32; device: gdref UpnpDevice): void =
  expandMethodBind(className Upnp, "set_device", 3015133723)
  var `?param` = [getPtr index, getPtr device]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeDevice*(self: Upnp; index: int32): void =
  expandMethodBind(className Upnp, "remove_device", 1286410249)
  var `?param` = [getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc clearDevices*(self: Upnp): void =
  expandMethodBind(className Upnp, "clear_devices", 3218959716)
  methodbind.ptrcall(self, nil)

proc getGateway*(self: Upnp): gdref UpnpDevice =
  expandMethodBind(className Upnp, "get_gateway", 2276800779)
  var ret: encoded gdref UpnpDevice
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref UpnpDevice)

proc discover*(self: Upnp; timeout: int32 = 2000; ttl: int32 = 2; deviceFilter: String = gdstring"InternetGatewayDevice"): int32 =
  expandMethodBind(className Upnp, "discover", 1575334765)
  var `?param` = [getPtr timeout, getPtr ttl, getPtr deviceFilter]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc queryExternalAddress*(self: Upnp): String =
  expandMethodBind(className Upnp, "query_external_address", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc addPortMapping*(self: Upnp; port: int32; portInternal: int32 = 0; desc: String = gdstring""; proto: String = gdstring"UDP"; duration: int32 = 0): int32 =
  expandMethodBind(className Upnp, "add_port_mapping", 818314583)
  var `?param` = [getPtr port, getPtr portInternal, getPtr desc, getPtr proto, getPtr duration]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc deletePortMapping*(self: Upnp; port: int32; proto: String = gdstring"UDP"): int32 =
  expandMethodBind(className Upnp, "delete_port_mapping", 3444187325)
  var `?param` = [getPtr port, getPtr proto]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setDiscoverMulticastIf*(self: Upnp; mIf: String): void =
  expandMethodBind(className Upnp, "set_discover_multicast_if", 83702148)
  var `?param` = [getPtr mIf]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDiscoverMulticastIf*(self: Upnp): String =
  expandMethodBind(className Upnp, "get_discover_multicast_if", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setDiscoverLocalPort*(self: Upnp; port: int32): void =
  expandMethodBind(className Upnp, "set_discover_local_port", 1286410249)
  var `?param` = [getPtr port]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDiscoverLocalPort*(self: Upnp): int32 =
  expandMethodBind(className Upnp, "get_discover_local_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setDiscoverIpv6*(self: Upnp; ipv6: bool): void =
  expandMethodBind(className Upnp, "set_discover_ipv6", 2586408642)
  var `?param` = [getPtr ipv6]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDiscoverIpv6*(self: Upnp): bool =
  expandMethodBind(className Upnp, "is_discover_ipv6", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template discoverMulticastIf*(self: Upnp): untyped = self.getDiscoverMulticastIf()
template `discoverMulticastIf=`*(self: Upnp; value) = self.setDiscoverMulticastIf(value)

template discoverLocalPort*(self: Upnp): untyped = self.getDiscoverLocalPort()
template `discoverLocalPort=`*(self: Upnp; value) = self.setDiscoverLocalPort(value)

template discoverIpv6*(self: Upnp): untyped = self.isDiscoverIpv6()
template `discoverIpv6=`*(self: Upnp; value) = self.setDiscoverIpv6(value)

const Upnp_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Upnp]): Table[string, string] = Upnp_vmap