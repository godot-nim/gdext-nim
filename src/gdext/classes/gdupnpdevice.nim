{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc isValidGateway*(self: UpnpDevice): bool =
  expandMethodBind(className UpnpDevice, "is_valid_gateway", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc queryExternalAddress*(self: UpnpDevice): String =
  expandMethodBind(className UpnpDevice, "query_external_address", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc addPortMapping*(self: UpnpDevice; port: int32; portInternal: int32 = 0; desc: String = gdstring""; proto: String = gdstring"UDP"; duration: int32 = 0): int32 =
  expandMethodBind(className UpnpDevice, "add_port_mapping", 818314583)
  var `?param` = [getPtr port, getPtr portInternal, getPtr desc, getPtr proto, getPtr duration]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc deletePortMapping*(self: UpnpDevice; port: int32; proto: String = gdstring"UDP"): int32 =
  expandMethodBind(className UpnpDevice, "delete_port_mapping", 3444187325)
  var `?param` = [getPtr port, getPtr proto]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setDescriptionUrl*(self: UpnpDevice; url: String): void =
  expandMethodBind(className UpnpDevice, "set_description_url", 83702148)
  var `?param` = [getPtr url]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDescriptionUrl*(self: UpnpDevice): String =
  expandMethodBind(className UpnpDevice, "get_description_url", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setServiceType*(self: UpnpDevice; `type`: String): void =
  expandMethodBind(className UpnpDevice, "set_service_type", 83702148)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getServiceType*(self: UpnpDevice): String =
  expandMethodBind(className UpnpDevice, "get_service_type", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setIgdControlUrl*(self: UpnpDevice; url: String): void =
  expandMethodBind(className UpnpDevice, "set_igd_control_url", 83702148)
  var `?param` = [getPtr url]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIgdControlUrl*(self: UpnpDevice): String =
  expandMethodBind(className UpnpDevice, "get_igd_control_url", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setIgdServiceType*(self: UpnpDevice; `type`: String): void =
  expandMethodBind(className UpnpDevice, "set_igd_service_type", 83702148)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIgdServiceType*(self: UpnpDevice): String =
  expandMethodBind(className UpnpDevice, "get_igd_service_type", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setIgdOurAddr*(self: UpnpDevice; `addr`: String): void =
  expandMethodBind(className UpnpDevice, "set_igd_our_addr", 83702148)
  var `?param` = [getPtr `addr`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIgdOurAddr*(self: UpnpDevice): String =
  expandMethodBind(className UpnpDevice, "get_igd_our_addr", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setIgdStatus*(self: UpnpDevice; status: UpnpDevice_IgdStatus): void =
  expandMethodBind(className UpnpDevice, "set_igd_status", 519504122)
  var `?param` = [getPtr status]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIgdStatus*(self: UpnpDevice): UpnpDevice_IgdStatus =
  expandMethodBind(className UpnpDevice, "get_igd_status", 180887011)
  var ret: encoded UpnpDevice_IgdStatus
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(UpnpDevice_IgdStatus)

template descriptionUrl*(self: UpnpDevice): untyped = self.getDescriptionUrl()
template `descriptionUrl=`*(self: UpnpDevice; value) = self.setDescriptionUrl(value)

template serviceType*(self: UpnpDevice): untyped = self.getServiceType()
template `serviceType=`*(self: UpnpDevice; value) = self.setServiceType(value)

template igdControlUrl*(self: UpnpDevice): untyped = self.getIgdControlUrl()
template `igdControlUrl=`*(self: UpnpDevice; value) = self.setIgdControlUrl(value)

template igdServiceType*(self: UpnpDevice): untyped = self.getIgdServiceType()
template `igdServiceType=`*(self: UpnpDevice; value) = self.setIgdServiceType(value)

template igdOurAddr*(self: UpnpDevice): untyped = self.getIgdOurAddr()
template `igdOurAddr=`*(self: UpnpDevice; value) = self.setIgdOurAddr(value)

template igdStatus*(self: UpnpDevice): untyped = self.getIgdStatus()
template `igdStatus=`*(self: UpnpDevice; value) = self.setIgdStatus(value)

const UpnpDevice_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[UpnpDevice]): Table[string, string] = UpnpDevice_vmap