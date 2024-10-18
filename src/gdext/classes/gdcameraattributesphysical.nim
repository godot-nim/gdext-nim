{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcameraattributes; export gdcameraattributes

proc setAperture*(self: CameraAttributesPhysical; aperture: Float): void =
  expandMethodBind(className CameraAttributesPhysical, "set_aperture", 373806689)
  var `?param` = [getPtr aperture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAperture*(self: CameraAttributesPhysical): Float =
  expandMethodBind(className CameraAttributesPhysical, "get_aperture", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setShutterSpeed*(self: CameraAttributesPhysical; shutterSpeed: Float): void =
  expandMethodBind(className CameraAttributesPhysical, "set_shutter_speed", 373806689)
  var `?param` = [getPtr shutterSpeed]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShutterSpeed*(self: CameraAttributesPhysical): Float =
  expandMethodBind(className CameraAttributesPhysical, "get_shutter_speed", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFocalLength*(self: CameraAttributesPhysical; focalLength: Float): void =
  expandMethodBind(className CameraAttributesPhysical, "set_focal_length", 373806689)
  var `?param` = [getPtr focalLength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFocalLength*(self: CameraAttributesPhysical): Float =
  expandMethodBind(className CameraAttributesPhysical, "get_focal_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFocusDistance*(self: CameraAttributesPhysical; focusDistance: Float): void =
  expandMethodBind(className CameraAttributesPhysical, "set_focus_distance", 373806689)
  var `?param` = [getPtr focusDistance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFocusDistance*(self: CameraAttributesPhysical): Float =
  expandMethodBind(className CameraAttributesPhysical, "get_focus_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setNear*(self: CameraAttributesPhysical; near: Float): void =
  expandMethodBind(className CameraAttributesPhysical, "set_near", 373806689)
  var `?param` = [getPtr near]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNear*(self: CameraAttributesPhysical): Float =
  expandMethodBind(className CameraAttributesPhysical, "get_near", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFar*(self: CameraAttributesPhysical; far: Float): void =
  expandMethodBind(className CameraAttributesPhysical, "set_far", 373806689)
  var `?param` = [getPtr far]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFar*(self: CameraAttributesPhysical): Float =
  expandMethodBind(className CameraAttributesPhysical, "get_far", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getFov*(self: CameraAttributesPhysical): Float =
  expandMethodBind(className CameraAttributesPhysical, "get_fov", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAutoExposureMaxExposureValue*(self: CameraAttributesPhysical; exposureValueMax: Float): void =
  expandMethodBind(className CameraAttributesPhysical, "set_auto_exposure_max_exposure_value", 373806689)
  var `?param` = [getPtr exposureValueMax]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutoExposureMaxExposureValue*(self: CameraAttributesPhysical): Float =
  expandMethodBind(className CameraAttributesPhysical, "get_auto_exposure_max_exposure_value", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAutoExposureMinExposureValue*(self: CameraAttributesPhysical; exposureValueMin: Float): void =
  expandMethodBind(className CameraAttributesPhysical, "set_auto_exposure_min_exposure_value", 373806689)
  var `?param` = [getPtr exposureValueMin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutoExposureMinExposureValue*(self: CameraAttributesPhysical): Float =
  expandMethodBind(className CameraAttributesPhysical, "get_auto_exposure_min_exposure_value", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

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

const CameraAttributesPhysical_vmap =
  CameraAttributes.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CameraAttributesPhysical]): Table[string, string] = CameraAttributesPhysical_vmap