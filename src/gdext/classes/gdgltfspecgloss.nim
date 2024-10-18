{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getDiffuseImg*(self: GltfSpecGloss): gdref Image =
  expandMethodBind(className GltfSpecGloss, "get_diffuse_img", 564927088)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Image)

proc setDiffuseImg*(self: GltfSpecGloss; diffuseImg: gdref Image): void =
  expandMethodBind(className GltfSpecGloss, "set_diffuse_img", 532598488)
  var `?param` = [getPtr diffuseImg]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDiffuseFactor*(self: GltfSpecGloss): Color =
  expandMethodBind(className GltfSpecGloss, "get_diffuse_factor", 3200896285)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setDiffuseFactor*(self: GltfSpecGloss; diffuseFactor: Color): void =
  expandMethodBind(className GltfSpecGloss, "set_diffuse_factor", 2920490490)
  var `?param` = [getPtr diffuseFactor]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlossFactor*(self: GltfSpecGloss): Float =
  expandMethodBind(className GltfSpecGloss, "get_gloss_factor", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setGlossFactor*(self: GltfSpecGloss; glossFactor: Float): void =
  expandMethodBind(className GltfSpecGloss, "set_gloss_factor", 373806689)
  var `?param` = [getPtr glossFactor]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpecularFactor*(self: GltfSpecGloss): Color =
  expandMethodBind(className GltfSpecGloss, "get_specular_factor", 3200896285)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setSpecularFactor*(self: GltfSpecGloss; specularFactor: Color): void =
  expandMethodBind(className GltfSpecGloss, "set_specular_factor", 2920490490)
  var `?param` = [getPtr specularFactor]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpecGlossImg*(self: GltfSpecGloss): gdref Image =
  expandMethodBind(className GltfSpecGloss, "get_spec_gloss_img", 564927088)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Image)

proc setSpecGlossImg*(self: GltfSpecGloss; specGlossImg: gdref Image): void =
  expandMethodBind(className GltfSpecGloss, "set_spec_gloss_img", 532598488)
  var `?param` = [getPtr specGlossImg]
  methodbind.ptrcall(self, addr `?param`[0])

template diffuseImg*(self: GltfSpecGloss): untyped = self.getDiffuseImg()
template `diffuseImg=`*(self: GltfSpecGloss; value) = self.setDiffuseImg(value)

template diffuseFactor*(self: GltfSpecGloss): untyped = self.getDiffuseFactor()
template `diffuseFactor=`*(self: GltfSpecGloss; value) = self.setDiffuseFactor(value)

template glossFactor*(self: GltfSpecGloss): untyped = self.getGlossFactor()
template `glossFactor=`*(self: GltfSpecGloss; value) = self.setGlossFactor(value)

template specularFactor*(self: GltfSpecGloss): untyped = self.getSpecularFactor()
template `specularFactor=`*(self: GltfSpecGloss; value) = self.setSpecularFactor(value)

template specGlossImg*(self: GltfSpecGloss): untyped = self.getSpecGlossImg()
template `specGlossImg=`*(self: GltfSpecGloss; value) = self.setSpecGlossImg(value)

const GltfSpecGloss_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GltfSpecGloss]): Table[string, string] = GltfSpecGloss_vmap