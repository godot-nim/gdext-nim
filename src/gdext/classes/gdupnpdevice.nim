{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc isValidGateway*(self: UPNPDevice): bool =
  expandMethodBind(className UPNPDevice, "is_valid_gateway", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc queryExternalAddress*(self: UPNPDevice): String =
  expandMethodBind(className UPNPDevice, "query_external_address", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc addPortMapping*(self: UPNPDevice; port: int32; portInternal: int32 = 0; desc: String = gdstring""; proto: String = gdstring"UDP"; duration: int32 = 0): int32 =
  expandMethodBind(className UPNPDevice, "add_port_mapping", 818314583)
  var `?param` = [getPtr port, getPtr portInternal, getPtr desc, getPtr proto, getPtr duration]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc deletePortMapping*(self: UPNPDevice; port: int32; proto: String = gdstring"UDP"): int32 =
  expandMethodBind(className UPNPDevice, "delete_port_mapping", 3444187325)
  var `?param` = [getPtr port, getPtr proto]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setDescriptionUrl*(self: UPNPDevice; url: String): void =
  expandMethodBind(className UPNPDevice, "set_description_url", 83702148)
  var `?param` = [getPtr url]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDescriptionUrl*(self: UPNPDevice): String =
  expandMethodBind(className UPNPDevice, "get_description_url", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setServiceType*(self: UPNPDevice; `type`: String): void =
  expandMethodBind(className UPNPDevice, "set_service_type", 83702148)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getServiceType*(self: UPNPDevice): String =
  expandMethodBind(className UPNPDevice, "get_service_type", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setIgdControlUrl*(self: UPNPDevice; url: String): void =
  expandMethodBind(className UPNPDevice, "set_igd_control_url", 83702148)
  var `?param` = [getPtr url]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIgdControlUrl*(self: UPNPDevice): String =
  expandMethodBind(className UPNPDevice, "get_igd_control_url", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setIgdServiceType*(self: UPNPDevice; `type`: String): void =
  expandMethodBind(className UPNPDevice, "set_igd_service_type", 83702148)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIgdServiceType*(self: UPNPDevice): String =
  expandMethodBind(className UPNPDevice, "get_igd_service_type", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setIgdOurAddr*(self: UPNPDevice; `addr`: String): void =
  expandMethodBind(className UPNPDevice, "set_igd_our_addr", 83702148)
  var `?param` = [getPtr `addr`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIgdOurAddr*(self: UPNPDevice): String =
  expandMethodBind(className UPNPDevice, "get_igd_our_addr", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setIgdStatus*(self: UPNPDevice; status: UPNPDevice_IGDStatus): void =
  expandMethodBind(className UPNPDevice, "set_igd_status", 519504122)
  var `?param` = [getPtr status]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIgdStatus*(self: UPNPDevice): UPNPDevice_IGDStatus =
  expandMethodBind(className UPNPDevice, "get_igd_status", 180887011)
  var ret: encoded UPNPDevice_IGDStatus
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(UPNPDevice_IGDStatus)

template descriptionUrl*(self: UPNPDevice): untyped = self.getDescriptionUrl()
template `descriptionUrl=`*(self: UPNPDevice; value) = self.setDescriptionUrl(value)

template serviceType*(self: UPNPDevice): untyped = self.getServiceType()
template `serviceType=`*(self: UPNPDevice; value) = self.setServiceType(value)

template igdControlUrl*(self: UPNPDevice): untyped = self.getIgdControlUrl()
template `igdControlUrl=`*(self: UPNPDevice; value) = self.setIgdControlUrl(value)

template igdServiceType*(self: UPNPDevice): untyped = self.getIgdServiceType()
template `igdServiceType=`*(self: UPNPDevice; value) = self.setIgdServiceType(value)

template igdOurAddr*(self: UPNPDevice): untyped = self.getIgdOurAddr()
template `igdOurAddr=`*(self: UPNPDevice; value) = self.setIgdOurAddr(value)

template igdStatus*(self: UPNPDevice): untyped = self.getIgdStatus()
template `igdStatus=`*(self: UPNPDevice; value) = self.setIgdStatus(value)

const UPNPDevice_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[UPNPDevice]): Table[string, string] = UPNPDevice_vmap