{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getDiffuseImg*(self: GLTFSpecGloss): gdref Image =
  expandMethodBind(className GLTFSpecGloss, "get_diffuse_img", 564927088)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Image)

proc setDiffuseImg*(self: GLTFSpecGloss; diffuseImg: gdref Image): void =
  expandMethodBind(className GLTFSpecGloss, "set_diffuse_img", 532598488)
  methodbind.ptrcall(self, [getPtr diffuseImg])

proc getDiffuseFactor*(self: GLTFSpecGloss): Color =
  expandMethodBind(className GLTFSpecGloss, "get_diffuse_factor", 3200896285)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setDiffuseFactor*(self: GLTFSpecGloss; diffuseFactor: Color): void =
  expandMethodBind(className GLTFSpecGloss, "set_diffuse_factor", 2920490490)
  methodbind.ptrcall(self, [getPtr diffuseFactor])

proc getGlossFactor*(self: GLTFSpecGloss): Float =
  expandMethodBind(className GLTFSpecGloss, "get_gloss_factor", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setGlossFactor*(self: GLTFSpecGloss; glossFactor: Float): void =
  expandMethodBind(className GLTFSpecGloss, "set_gloss_factor", 373806689)
  methodbind.ptrcall(self, [getPtr glossFactor])

proc getSpecularFactor*(self: GLTFSpecGloss): Color =
  expandMethodBind(className GLTFSpecGloss, "get_specular_factor", 3200896285)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setSpecularFactor*(self: GLTFSpecGloss; specularFactor: Color): void =
  expandMethodBind(className GLTFSpecGloss, "set_specular_factor", 2920490490)
  methodbind.ptrcall(self, [getPtr specularFactor])

proc getSpecGlossImg*(self: GLTFSpecGloss): gdref Image =
  expandMethodBind(className GLTFSpecGloss, "get_spec_gloss_img", 564927088)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Image)

proc setSpecGlossImg*(self: GLTFSpecGloss; specGlossImg: gdref Image): void =
  expandMethodBind(className GLTFSpecGloss, "set_spec_gloss_img", 532598488)
  methodbind.ptrcall(self, [getPtr specGlossImg])

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

const GLTFSpecGloss_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GLTFSpecGloss]): Table[string, string] = GLTFSpecGloss_vmap