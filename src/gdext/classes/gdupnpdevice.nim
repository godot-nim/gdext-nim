{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc isValidGateway*(self: UPNPDevice): bool =
  expandMethodBind(className UPNPDevice, "is_valid_gateway", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc queryExternalAddress*(self: UPNPDevice): String =
  expandMethodBind(className UPNPDevice, "query_external_address", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc addPortMapping*(self: UPNPDevice; port: int32; portInternal: int32 = 0; desc: String = gdstring""; proto: String = gdstring"UDP"; duration: int32 = 0): int32 =
  expandMethodBind(className UPNPDevice, "add_port_mapping", 818314583)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr port, getPtr portInternal, getPtr desc, getPtr proto, getPtr duration], addr ret)
  (addr ret).decode_result(int32)

proc deletePortMapping*(self: UPNPDevice; port: int32; proto: String = gdstring"UDP"): int32 =
  expandMethodBind(className UPNPDevice, "delete_port_mapping", 3444187325)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr port, getPtr proto], addr ret)
  (addr ret).decode_result(int32)

proc setDescriptionUrl*(self: UPNPDevice; url: String): void =
  expandMethodBind(className UPNPDevice, "set_description_url", 83702148)
  methodbind.ptrcall(self, [getPtr url])

proc getDescriptionUrl*(self: UPNPDevice): String =
  expandMethodBind(className UPNPDevice, "get_description_url", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setServiceType*(self: UPNPDevice; `type`: String): void =
  expandMethodBind(className UPNPDevice, "set_service_type", 83702148)
  methodbind.ptrcall(self, [getPtr `type`])

proc getServiceType*(self: UPNPDevice): String =
  expandMethodBind(className UPNPDevice, "get_service_type", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setIgdControlUrl*(self: UPNPDevice; url: String): void =
  expandMethodBind(className UPNPDevice, "set_igd_control_url", 83702148)
  methodbind.ptrcall(self, [getPtr url])

proc getIgdControlUrl*(self: UPNPDevice): String =
  expandMethodBind(className UPNPDevice, "get_igd_control_url", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setIgdServiceType*(self: UPNPDevice; `type`: String): void =
  expandMethodBind(className UPNPDevice, "set_igd_service_type", 83702148)
  methodbind.ptrcall(self, [getPtr `type`])

proc getIgdServiceType*(self: UPNPDevice): String =
  expandMethodBind(className UPNPDevice, "get_igd_service_type", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setIgdOurAddr*(self: UPNPDevice; `addr`: String): void =
  expandMethodBind(className UPNPDevice, "set_igd_our_addr", 83702148)
  methodbind.ptrcall(self, [getPtr `addr`])

proc getIgdOurAddr*(self: UPNPDevice): String =
  expandMethodBind(className UPNPDevice, "get_igd_our_addr", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setIgdStatus*(self: UPNPDevice; status: UPNPDevice_IGDStatus): void =
  expandMethodBind(className UPNPDevice, "set_igd_status", 519504122)
  methodbind.ptrcall(self, [getPtr status])

proc getIgdStatus*(self: UPNPDevice): UPNPDevice_IGDStatus =
  expandMethodBind(className UPNPDevice, "get_igd_status", 180887011)
  var ret: encoded UPNPDevice_IGDStatus
  methodbind.ptrcall(self, [], addr ret)
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