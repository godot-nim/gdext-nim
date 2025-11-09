{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(CameraAttributes, Resource)

proc setExposureMultiplier*(self: CameraAttributes; multiplier: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributes, "set_exposure_multiplier", 373806689)
  methodbind.ptrcall(self, [getPtr multiplier], void)

proc getExposureMultiplier*(self: CameraAttributes): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributes, "get_exposure_multiplier", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setExposureSensitivity*(self: CameraAttributes; sensitivity: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributes, "set_exposure_sensitivity", 373806689)
  methodbind.ptrcall(self, [getPtr sensitivity], void)

proc getExposureSensitivity*(self: CameraAttributes): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributes, "get_exposure_sensitivity", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAutoExposureEnabled*(self: CameraAttributes; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributes, "set_auto_exposure_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isAutoExposureEnabled*(self: CameraAttributes): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributes, "is_auto_exposure_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAutoExposureSpeed*(self: CameraAttributes; exposureSpeed: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributes, "set_auto_exposure_speed", 373806689)
  methodbind.ptrcall(self, [getPtr exposureSpeed], void)

proc getAutoExposureSpeed*(self: CameraAttributes): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributes, "get_auto_exposure_speed", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAutoExposureScale*(self: CameraAttributes; exposureGrey: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributes, "set_auto_exposure_scale", 373806689)
  methodbind.ptrcall(self, [getPtr exposureGrey], void)

proc getAutoExposureScale*(self: CameraAttributes): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributes, "get_auto_exposure_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

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
