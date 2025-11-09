{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFSpecGloss, Resource)

proc getDiffuseImg*(self: GLTFSpecGloss): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSpecGloss, "get_diffuse_img", 564927088)
  methodbind.ptrcall(self, [], gdref Image)

proc setDiffuseImg*(self: GLTFSpecGloss; diffuseImg: gdref Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSpecGloss, "set_diffuse_img", 532598488)
  methodbind.ptrcall(self, [getPtr diffuseImg], void)

proc getDiffuseFactor*(self: GLTFSpecGloss): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSpecGloss, "get_diffuse_factor", 3200896285)
  methodbind.ptrcall(self, [], Color)

proc setDiffuseFactor*(self: GLTFSpecGloss; diffuseFactor: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSpecGloss, "set_diffuse_factor", 2920490490)
  methodbind.ptrcall(self, [getPtr diffuseFactor], void)

proc getGlossFactor*(self: GLTFSpecGloss): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSpecGloss, "get_gloss_factor", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setGlossFactor*(self: GLTFSpecGloss; glossFactor: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSpecGloss, "set_gloss_factor", 373806689)
  methodbind.ptrcall(self, [getPtr glossFactor], void)

proc getSpecularFactor*(self: GLTFSpecGloss): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSpecGloss, "get_specular_factor", 3200896285)
  methodbind.ptrcall(self, [], Color)

proc setSpecularFactor*(self: GLTFSpecGloss; specularFactor: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSpecGloss, "set_specular_factor", 2920490490)
  methodbind.ptrcall(self, [getPtr specularFactor], void)

proc getSpecGlossImg*(self: GLTFSpecGloss): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSpecGloss, "get_spec_gloss_img", 564927088)
  methodbind.ptrcall(self, [], gdref Image)

proc setSpecGlossImg*(self: GLTFSpecGloss; specGlossImg: gdref Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSpecGloss, "set_spec_gloss_img", 532598488)
  methodbind.ptrcall(self, [getPtr specGlossImg], void)

template diffuseImg*(self: GLTFSpecGloss): untyped = self.getDiffuseImg()
template `diffuseImg=`*(self: GLTFSpecGloss; value) = self.setDiffuseImg(value)

template diffuseFactor*(self: GLTFSpecGloss): untyped = self.getDiffuseFactor()
template `diffuseFactor=`*(self: GLTFSpecGloss; value) = self.setDiffuseFactor(value)

template glossFactor*(self: GLTFSpecGloss): untyped = self.getGlossFactor()
template `glossFactor=`*(self: GLTFSpecGloss; value) = self.setGlossFactor(value)

template specularFactor*(self: GLTFSpecGloss): untyped = self.getSpecularFactor()
template `specularFactor=`*(self: GLTFSpecGloss; value) = self.setSpecularFactor(value)

template specGlossImg*(self: GLTFSpecGloss): untyped = self.getSpecGlossImg()
template `specGlossImg=`*(self: GLTFSpecGloss; value) = self.setSpecGlossImg(value)
