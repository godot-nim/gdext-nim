{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcameraattributes; export gdcameraattributes

expandOnClassImported(CameraAttributesPhysical, CameraAttributes)

proc setAperture*(self: CameraAttributesPhysical; aperture: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPhysical, "set_aperture", 373806689)
  methodbind.ptrcall(self, [getPtr aperture], void)

proc getAperture*(self: CameraAttributesPhysical): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPhysical, "get_aperture", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setShutterSpeed*(self: CameraAttributesPhysical; shutterSpeed: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPhysical, "set_shutter_speed", 373806689)
  methodbind.ptrcall(self, [getPtr shutterSpeed], void)

proc getShutterSpeed*(self: CameraAttributesPhysical): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPhysical, "get_shutter_speed", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFocalLength*(self: CameraAttributesPhysical; focalLength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPhysical, "set_focal_length", 373806689)
  methodbind.ptrcall(self, [getPtr focalLength], void)

proc getFocalLength*(self: CameraAttributesPhysical): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPhysical, "get_focal_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFocusDistance*(self: CameraAttributesPhysical; focusDistance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPhysical, "set_focus_distance", 373806689)
  methodbind.ptrcall(self, [getPtr focusDistance], void)

proc getFocusDistance*(self: CameraAttributesPhysical): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPhysical, "get_focus_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setNear*(self: CameraAttributesPhysical; near: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPhysical, "set_near", 373806689)
  methodbind.ptrcall(self, [getPtr near], void)

proc getNear*(self: CameraAttributesPhysical): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPhysical, "get_near", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFar*(self: CameraAttributesPhysical; far: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPhysical, "set_far", 373806689)
  methodbind.ptrcall(self, [getPtr far], void)

proc getFar*(self: CameraAttributesPhysical): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPhysical, "get_far", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getFov*(self: CameraAttributesPhysical): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPhysical, "get_fov", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAutoExposureMaxExposureValue*(self: CameraAttributesPhysical; exposureValueMax: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPhysical, "set_auto_exposure_max_exposure_value", 373806689)
  methodbind.ptrcall(self, [getPtr exposureValueMax], void)

proc getAutoExposureMaxExposureValue*(self: CameraAttributesPhysical): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPhysical, "get_auto_exposure_max_exposure_value", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAutoExposureMinExposureValue*(self: CameraAttributesPhysical; exposureValueMin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPhysical, "set_auto_exposure_min_exposure_value", 373806689)
  methodbind.ptrcall(self, [getPtr exposureValueMin], void)

proc getAutoExposureMinExposureValue*(self: CameraAttributesPhysical): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPhysical, "get_auto_exposure_min_exposure_value", 1740695150)
  methodbind.ptrcall(self, [], Float)

template frustumFocusDistance*(self: CameraAttributesPhysical): untyped = self.getFocusDistance()
template `frustumFocusDistance=`*(self: CameraAttributesPhysical; value) = self.setFocusDistance(value)

template frustumFocalLength*(self: CameraAttributesPhysical): untyped = self.getFocalLength()
template `frustumFocalLength=`*(self: CameraAttributesPhysical; value) = self.setFocalLength(value)

template frustumNear*(self: CameraAttributesPhysical): untyped = self.getNear()
template `frustumNear=`*(self: CameraAttributesPhysical; value) = self.setNear(value)

template frustumFar*(self: CameraAttributesPhysical): untyped = self.getFar()
template `frustumFar=`*(self: CameraAttributesPhysical; value) = self.setFar(value)

template exposureAperture*(self: CameraAttributesPhysical): untyped = self.getAperture()
template `exposureAperture=`*(self: CameraAttributesPhysical; value) = self.setAperture(value)

template exposureShutterSpeed*(self: CameraAttributesPhysical): untyped = self.getShutterSpeed()
template `exposureShutterSpeed=`*(self: CameraAttributesPhysical; value) = self.setShutterSpeed(value)

template autoExposureMinExposureValue*(self: CameraAttributesPhysical): untyped = self.getAutoExposureMinExposureValue()
template `autoExposureMinExposureValue=`*(self: CameraAttributesPhysical; value) = self.setAutoExposureMinExposureValue(value)

template autoExposureMaxExposureValue*(self: CameraAttributesPhysical): untyped = self.getAutoExposureMaxExposureValue()
template `autoExposureMaxExposureValue=`*(self: CameraAttributesPhysical; value) = self.setAutoExposureMaxExposureValue(value)
