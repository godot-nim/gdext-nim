{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setExposureMultiplier*(self: CameraAttributes; multiplier: Float): void =
  expandMethodBind(className CameraAttributes, "set_exposure_multiplier", 373806689)
  var `?param` = [getPtr multiplier]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExposureMultiplier*(self: CameraAttributes): Float =
  expandMethodBind(className CameraAttributes, "get_exposure_multiplier", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setExposureSensitivity*(self: CameraAttributes; sensitivity: Float): void =
  expandMethodBind(className CameraAttributes, "set_exposure_sensitivity", 373806689)
  var `?param` = [getPtr sensitivity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExposureSensitivity*(self: CameraAttributes): Float =
  expandMethodBind(className CameraAttributes, "get_exposure_sensitivity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAutoExposureEnabled*(self: CameraAttributes; enabled: bool): void =
  expandMethodBind(className CameraAttributes, "set_auto_exposure_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAutoExposureEnabled*(self: CameraAttributes): bool =
  expandMethodBind(className CameraAttributes, "is_auto_exposure_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAutoExposureSpeed*(self: CameraAttributes; exposureSpeed: Float): void =
  expandMethodBind(className CameraAttributes, "set_auto_exposure_speed", 373806689)
  var `?param` = [getPtr exposureSpeed]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutoExposureSpeed*(self: CameraAttributes): Float =
  expandMethodBind(className CameraAttributes, "get_auto_exposure_speed", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAutoExposureScale*(self: CameraAttributes; exposureGrey: Float): void =
  expandMethodBind(className CameraAttributes, "set_auto_exposure_scale", 373806689)
  var `?param` = [getPtr exposureGrey]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutoExposureScale*(self: CameraAttributes): Float =
  expandMethodBind(className CameraAttributes, "get_auto_exposure_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template exposureSensitivity*(self: CameraAttributes): untyped = self.getExposureSensitivity()
template `exposureSensitivity=`*(self: CameraAttributes; value) = self.setExposureSensitivity(value)

template exposureMultiplier*(self: CameraAttributes): untyped = self.getExposureMultiplier()
template `exposureMultiplier=`*(self: CameraAttributes; value) = self.setExposureMultiplier(value)

template autoExposureEnabled*(self: CameraAttributes): untyped = self.isAutoExposureEnabled()
template `autoExposureEnabled=`*(self: CameraAttributes; value) = self.setAutoExposureEnabled(value)

template autoExposureScale*(self: CameraAttributes): untyped = self.getAutoExposureScale()
template `autoExposureScale=`*(self: CameraAttributes; value) = self.setAutoExposureScale(value)

template autoExposureSpeed*(self: CameraAttributes): untyped = self.getAutoExposureSpeed()
template `autoExposureSpeed=`*(self: CameraAttributes; value) = self.setAutoExposureSpeed(value)

const CameraAttributes_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CameraAttributes]): Table[string, string] = CameraAttributes_vmap