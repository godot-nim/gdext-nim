{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setFormatOverride*(self: RdTextureView; pMember: RenderingDevice_DataFormat): void =
  expandMethodBind(className RdTextureView, "set_format_override", 565531219)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFormatOverride*(self: RdTextureView): RenderingDevice_DataFormat =
  expandMethodBind(className RdTextureView, "get_format_override", 2235804183)
  var ret: encoded RenderingDevice_DataFormat
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_DataFormat)

proc setSwizzleR*(self: RdTextureView; pMember: RenderingDevice_TextureSwizzle): void =
  expandMethodBind(className RdTextureView, "set_swizzle_r", 3833362581)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSwizzleR*(self: RdTextureView): RenderingDevice_TextureSwizzle =
  expandMethodBind(className RdTextureView, "get_swizzle_r", 4150792614)
  var ret: encoded RenderingDevice_TextureSwizzle
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSwizzle)

proc setSwizzleG*(self: RdTextureView; pMember: RenderingDevice_TextureSwizzle): void =
  expandMethodBind(className RdTextureView, "set_swizzle_g", 3833362581)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSwizzleG*(self: RdTextureView): RenderingDevice_TextureSwizzle =
  expandMethodBind(className RdTextureView, "get_swizzle_g", 4150792614)
  var ret: encoded RenderingDevice_TextureSwizzle
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSwizzle)

proc setSwizzleB*(self: RdTextureView; pMember: RenderingDevice_TextureSwizzle): void =
  expandMethodBind(className RdTextureView, "set_swizzle_b", 3833362581)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSwizzleB*(self: RdTextureView): RenderingDevice_TextureSwizzle =
  expandMethodBind(className RdTextureView, "get_swizzle_b", 4150792614)
  var ret: encoded RenderingDevice_TextureSwizzle
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSwizzle)

proc setSwizzleA*(self: RdTextureView; pMember: RenderingDevice_TextureSwizzle): void =
  expandMethodBind(className RdTextureView, "set_swizzle_a", 3833362581)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSwizzleA*(self: RdTextureView): RenderingDevice_TextureSwizzle =
  expandMethodBind(className RdTextureView, "get_swizzle_a", 4150792614)
  var ret: encoded RenderingDevice_TextureSwizzle
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSwizzle)

template formatOverride*(self: RdTextureView): untyped = self.getFormatOverride()
template `formatOverride=`*(self: RdTextureView; value) = self.setFormatOverride(value)

template swizzleR*(self: RdTextureView): untyped = self.getSwizzleR()
template `swizzleR=`*(self: RdTextureView; value) = self.setSwizzleR(value)

template swizzleG*(self: RdTextureView): untyped = self.getSwizzleG()
template `swizzleG=`*(self: RdTextureView; value) = self.setSwizzleG(value)

template swizzleB*(self: RdTextureView): untyped = self.getSwizzleB()
template `swizzleB=`*(self: RdTextureView; value) = self.setSwizzleB(value)

template swizzleA*(self: RdTextureView): untyped = self.getSwizzleA()
template `swizzleA=`*(self: RdTextureView; value) = self.setSwizzleA(value)

const RdTextureView_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RdTextureView]): Table[string, string] = RdTextureView_vmap