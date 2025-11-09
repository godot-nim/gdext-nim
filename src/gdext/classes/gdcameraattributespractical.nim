{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcameraattributes; export gdcameraattributes

expandOnClassImported(CameraAttributesPractical, CameraAttributes)

proc setDofBlurFarEnabled*(self: CameraAttributesPractical; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "set_dof_blur_far_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isDofBlurFarEnabled*(self: CameraAttributesPractical): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "is_dof_blur_far_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDofBlurFarDistance*(self: CameraAttributesPractical; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "set_dof_blur_far_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getDofBlurFarDistance*(self: CameraAttributesPractical): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "get_dof_blur_far_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDofBlurFarTransition*(self: CameraAttributesPractical; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "set_dof_blur_far_transition", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getDofBlurFarTransition*(self: CameraAttributesPractical): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "get_dof_blur_far_transition", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDofBlurNearEnabled*(self: CameraAttributesPractical; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "set_dof_blur_near_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isDofBlurNearEnabled*(self: CameraAttributesPractical): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "is_dof_blur_near_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDofBlurNearDistance*(self: CameraAttributesPractical; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "set_dof_blur_near_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getDofBlurNearDistance*(self: CameraAttributesPractical): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "get_dof_blur_near_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDofBlurNearTransition*(self: CameraAttributesPractical; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "set_dof_blur_near_transition", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getDofBlurNearTransition*(self: CameraAttributesPractical): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "get_dof_blur_near_transition", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDofBlurAmount*(self: CameraAttributesPractical; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "set_dof_blur_amount", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getDofBlurAmount*(self: CameraAttributesPractical): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "get_dof_blur_amount", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAutoExposureMaxSensitivity*(self: CameraAttributesPractical; maxSensitivity: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "set_auto_exposure_max_sensitivity", 373806689)
  methodbind.ptrcall(self, [getPtr maxSensitivity], void)

proc getAutoExposureMaxSensitivity*(self: CameraAttributesPractical): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "get_auto_exposure_max_sensitivity", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAutoExposureMinSensitivity*(self: CameraAttributesPractical; minSensitivity: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "set_auto_exposure_min_sensitivity", 373806689)
  methodbind.ptrcall(self, [getPtr minSensitivity], void)

proc getAutoExposureMinSensitivity*(self: CameraAttributesPractical): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraAttributesPractical, "get_auto_exposure_min_sensitivity", 1740695150)
  methodbind.ptrcall(self, [], Float)

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
