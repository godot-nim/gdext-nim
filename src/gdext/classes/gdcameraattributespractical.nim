{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcameraattributes; export gdcameraattributes

proc setDofBlurFarEnabled*(self: CameraAttributesPractical; enabled: bool): void =
  expandMethodBind(className CameraAttributesPractical, "set_dof_blur_far_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDofBlurFarEnabled*(self: CameraAttributesPractical): bool =
  expandMethodBind(className CameraAttributesPractical, "is_dof_blur_far_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDofBlurFarDistance*(self: CameraAttributesPractical; distance: Float): void =
  expandMethodBind(className CameraAttributesPractical, "set_dof_blur_far_distance", 373806689)
  var `?param` = [getPtr distance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDofBlurFarDistance*(self: CameraAttributesPractical): Float =
  expandMethodBind(className CameraAttributesPractical, "get_dof_blur_far_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDofBlurFarTransition*(self: CameraAttributesPractical; distance: Float): void =
  expandMethodBind(className CameraAttributesPractical, "set_dof_blur_far_transition", 373806689)
  var `?param` = [getPtr distance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDofBlurFarTransition*(self: CameraAttributesPractical): Float =
  expandMethodBind(className CameraAttributesPractical, "get_dof_blur_far_transition", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDofBlurNearEnabled*(self: CameraAttributesPractical; enabled: bool): void =
  expandMethodBind(className CameraAttributesPractical, "set_dof_blur_near_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDofBlurNearEnabled*(self: CameraAttributesPractical): bool =
  expandMethodBind(className CameraAttributesPractical, "is_dof_blur_near_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDofBlurNearDistance*(self: CameraAttributesPractical; distance: Float): void =
  expandMethodBind(className CameraAttributesPractical, "set_dof_blur_near_distance", 373806689)
  var `?param` = [getPtr distance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDofBlurNearDistance*(self: CameraAttributesPractical): Float =
  expandMethodBind(className CameraAttributesPractical, "get_dof_blur_near_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDofBlurNearTransition*(self: CameraAttributesPractical; distance: Float): void =
  expandMethodBind(className CameraAttributesPractical, "set_dof_blur_near_transition", 373806689)
  var `?param` = [getPtr distance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDofBlurNearTransition*(self: CameraAttributesPractical): Float =
  expandMethodBind(className CameraAttributesPractical, "get_dof_blur_near_transition", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDofBlurAmount*(self: CameraAttributesPractical; amount: Float): void =
  expandMethodBind(className CameraAttributesPractical, "set_dof_blur_amount", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDofBlurAmount*(self: CameraAttributesPractical): Float =
  expandMethodBind(className CameraAttributesPractical, "get_dof_blur_amount", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAutoExposureMaxSensitivity*(self: CameraAttributesPractical; maxSensitivity: Float): void =
  expandMethodBind(className CameraAttributesPractical, "set_auto_exposure_max_sensitivity", 373806689)
  var `?param` = [getPtr maxSensitivity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutoExposureMaxSensitivity*(self: CameraAttributesPractical): Float =
  expandMethodBind(className CameraAttributesPractical, "get_auto_exposure_max_sensitivity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAutoExposureMinSensitivity*(self: CameraAttributesPractical; minSensitivity: Float): void =
  expandMethodBind(className CameraAttributesPractical, "set_auto_exposure_min_sensitivity", 373806689)
  var `?param` = [getPtr minSensitivity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutoExposureMinSensitivity*(self: CameraAttributesPractical): Float =
  expandMethodBind(className CameraAttributesPractical, "get_auto_exposure_min_sensitivity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template dofBlurFarEnabled*(self: CameraAttributesPractical): untyped = self.isDofBlurFarEnabled()
template `dofBlurFarEnabled=`*(self: CameraAttributesPractical; value) = self.setDofBlurFarEnabled(value)

template dofBlurFarDistance*(self: CameraAttributesPractical): untyped = self.getDofBlurFarDistance()
template `dofBlurFarDistance=`*(self: CameraAttributesPractical; value) = self.setDofBlurFarDistance(value)

template dofBlurFarTransition*(self: CameraAttributesPractical): untyped = self.getDofBlurFarTransition()
template `dofBlurFarTransition=`*(self: CameraAttributesPractical; value) = self.setDofBlurFarTransition(value)

template dofBlurNearEnabled*(self: CameraAttributesPractical): untyped = self.isDofBlurNearEnabled()
template `dofBlurNearEnabled=`*(self: CameraAttributesPractical; value) = self.setDofBlurNearEnabled(value)

template dofBlurNearDistance*(self: CameraAttributesPractical): untyped = self.getDofBlurNearDistance()
template `dofBlurNearDistance=`*(self: CameraAttributesPractical; value) = self.setDofBlurNearDistance(value)

template dofBlurNearTransition*(self: CameraAttributesPractical): untyped = self.getDofBlurNearTransition()
template `dofBlurNearTransition=`*(self: CameraAttributesPractical; value) = self.setDofBlurNearTransition(value)

template dofBlurAmount*(self: CameraAttributesPractical): untyped = self.getDofBlurAmount()
template `dofBlurAmount=`*(self: CameraAttributesPractical; value) = self.setDofBlurAmount(value)

template autoExposureMinSensitivity*(self: CameraAttributesPractical): untyped = self.getAutoExposureMinSensitivity()
template `autoExposureMinSensitivity=`*(self: CameraAttributesPractical; value) = self.setAutoExposureMinSensitivity(value)

template autoExposureMaxSensitivity*(self: CameraAttributesPractical): untyped = self.getAutoExposureMaxSensitivity()
template `autoExposureMaxSensitivity=`*(self: CameraAttributesPractical; value) = self.setAutoExposureMaxSensitivity(value)

const CameraAttributesPractical_vmap =
  CameraAttributes.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CameraAttributesPractical]): Table[string, string] = CameraAttributesPractical_vmap