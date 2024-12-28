{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setFormatOverride*(self: RDTextureView; pMember: RenderingDevice_DataFormat): void =
  expandMethodBind(className RDTextureView, "set_format_override", 565531219)
  methodbind.ptrcall(self, [getPtr pMember])

proc getFormatOverride*(self: RDTextureView): RenderingDevice_DataFormat =
  expandMethodBind(className RDTextureView, "get_format_override", 2235804183)
  var ret: encoded RenderingDevice_DataFormat
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_DataFormat)

proc setSwizzleR*(self: RDTextureView; pMember: RenderingDevice_TextureSwizzle): void =
  expandMethodBind(className RDTextureView, "set_swizzle_r", 3833362581)
  methodbind.ptrcall(self, [getPtr pMember])

proc getSwizzleR*(self: RDTextureView): RenderingDevice_TextureSwizzle =
  expandMethodBind(className RDTextureView, "get_swizzle_r", 4150792614)
  var ret: encoded RenderingDevice_TextureSwizzle
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSwizzle)

proc setSwizzleG*(self: RDTextureView; pMember: RenderingDevice_TextureSwizzle): void =
  expandMethodBind(className RDTextureView, "set_swizzle_g", 3833362581)
  methodbind.ptrcall(self, [getPtr pMember])

proc getSwizzleG*(self: RDTextureView): RenderingDevice_TextureSwizzle =
  expandMethodBind(className RDTextureView, "get_swizzle_g", 4150792614)
  var ret: encoded RenderingDevice_TextureSwizzle
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSwizzle)

proc setSwizzleB*(self: RDTextureView; pMember: RenderingDevice_TextureSwizzle): void =
  expandMethodBind(className RDTextureView, "set_swizzle_b", 3833362581)
  methodbind.ptrcall(self, [getPtr pMember])

proc getSwizzleB*(self: RDTextureView): RenderingDevice_TextureSwizzle =
  expandMethodBind(className RDTextureView, "get_swizzle_b", 4150792614)
  var ret: encoded RenderingDevice_TextureSwizzle
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSwizzle)

proc setSwizzleA*(self: RDTextureView; pMember: RenderingDevice_TextureSwizzle): void =
  expandMethodBind(className RDTextureView, "set_swizzle_a", 3833362581)
  methodbind.ptrcall(self, [getPtr pMember])

proc getSwizzleA*(self: RDTextureView): RenderingDevice_TextureSwizzle =
  expandMethodBind(className RDTextureView, "get_swizzle_a", 4150792614)
  var ret: encoded RenderingDevice_TextureSwizzle
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSwizzle)

template formatOverride*(self: RDTextureView): untyped = self.getFormatOverride()
template `formatOverride=`*(self: RDTextureView; value) = self.setFormatOverride(value)

template swizzleR*(self: RDTextureView): untyped = self.getSwizzleR()
template `swizzleR=`*(self: RDTextureView; value) = self.setSwizzleR(value)

template swizzleG*(self: RDTextureView): untyped = self.getSwizzleG()
template `swizzleG=`*(self: RDTextureView; value) = self.setSwizzleG(value)

template swizzleB*(self: RDTextureView): untyped = self.getSwizzleB()
template `swizzleB=`*(self: RDTextureView; value) = self.setSwizzleB(value)

template swizzleA*(self: RDTextureView): untyped = self.getSwizzleA()
template `swizzleA=`*(self: RDTextureView; value) = self.setSwizzleA(value)

const RDTextureView_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RDTextureView]): Table[string, string] = RDTextureView_vmap