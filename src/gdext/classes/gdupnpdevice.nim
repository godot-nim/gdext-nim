{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(UPNPDevice, RefCounted)

proc isValidGateway*(self: UPNPDevice): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNPDevice, "is_valid_gateway", 36873697)
  methodbind.ptrcall(self, [], bool)

proc queryExternalAddress*(self: UPNPDevice): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNPDevice, "query_external_address", 201670096)
  methodbind.ptrcall(self, [], String)

proc addPortMapping*(self: UPNPDevice; port: int32; portInternal: int32 = 0; desc: String = newGdString(); proto: String = newGdString("UDP"); duration: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNPDevice, "add_port_mapping", 818314583)
  methodbind.ptrcall(self, [getPtr port, getPtr portInternal, getPtr desc, getPtr proto, getPtr duration], int32)

proc deletePortMapping*(self: UPNPDevice; port: int32; proto: String = newGdString("UDP")): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNPDevice, "delete_port_mapping", 3444187325)
  methodbind.ptrcall(self, [getPtr port, getPtr proto], int32)

proc setDescriptionUrl*(self: UPNPDevice; url: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNPDevice, "set_description_url", 83702148)
  methodbind.ptrcall(self, [getPtr url], void)

proc getDescriptionUrl*(self: UPNPDevice): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNPDevice, "get_description_url", 201670096)
  methodbind.ptrcall(self, [], String)

proc setServiceType*(self: UPNPDevice; `type`: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNPDevice, "set_service_type", 83702148)
  methodbind.ptrcall(self, [getPtr `type`], void)

proc getServiceType*(self: UPNPDevice): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNPDevice, "get_service_type", 201670096)
  methodbind.ptrcall(self, [], String)

proc setIgdControlUrl*(self: UPNPDevice; url: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNPDevice, "set_igd_control_url", 83702148)
  methodbind.ptrcall(self, [getPtr url], void)

proc getIgdControlUrl*(self: UPNPDevice): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNPDevice, "get_igd_control_url", 201670096)
  methodbind.ptrcall(self, [], String)

proc setIgdServiceType*(self: UPNPDevice; `type`: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNPDevice, "set_igd_service_type", 83702148)
  methodbind.ptrcall(self, [getPtr `type`], void)

proc getIgdServiceType*(self: UPNPDevice): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNPDevice, "get_igd_service_type", 201670096)
  methodbind.ptrcall(self, [], String)

proc setIgdOurAddr*(self: UPNPDevice; `addr`: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNPDevice, "set_igd_our_addr", 83702148)
  methodbind.ptrcall(self, [getPtr `addr`], void)

proc getIgdOurAddr*(self: UPNPDevice): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNPDevice, "get_igd_our_addr", 201670096)
  methodbind.ptrcall(self, [], String)

proc setIgdStatus*(self: UPNPDevice; status: UPNPDevice_IGDStatus): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNPDevice, "set_igd_status", 519504122)
  methodbind.ptrcall(self, [getPtr status], void)

proc getIgdStatus*(self: UPNPDevice): UPNPDevice_IGDStatus =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UPNPDevice, "get_igd_status", 180887011)
  methodbind.ptrcall(self, [], UPNPDevice_IGDStatus)

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
