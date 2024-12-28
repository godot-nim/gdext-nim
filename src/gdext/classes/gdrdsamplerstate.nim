{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setMagFilter*(self: RDSamplerState; pMember: RenderingDevice_SamplerFilter): void =
  expandMethodBind(className RDSamplerState, "set_mag_filter", 1493420382)
  methodbind.ptrcall(self, [getPtr pMember])

proc getMagFilter*(self: RDSamplerState): RenderingDevice_SamplerFilter =
  expandMethodBind(className RDSamplerState, "get_mag_filter", 2209202801)
  var ret: encoded RenderingDevice_SamplerFilter
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_SamplerFilter)

proc setMinFilter*(self: RDSamplerState; pMember: RenderingDevice_SamplerFilter): void =
  expandMethodBind(className RDSamplerState, "set_min_filter", 1493420382)
  methodbind.ptrcall(self, [getPtr pMember])

proc getMinFilter*(self: RDSamplerState): RenderingDevice_SamplerFilter =
  expandMethodBind(className RDSamplerState, "get_min_filter", 2209202801)
  var ret: encoded RenderingDevice_SamplerFilter
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_SamplerFilter)

proc setMipFilter*(self: RDSamplerState; pMember: RenderingDevice_SamplerFilter): void =
  expandMethodBind(className RDSamplerState, "set_mip_filter", 1493420382)
  methodbind.ptrcall(self, [getPtr pMember])

proc getMipFilter*(self: RDSamplerState): RenderingDevice_SamplerFilter =
  expandMethodBind(className RDSamplerState, "get_mip_filter", 2209202801)
  var ret: encoded RenderingDevice_SamplerFilter
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_SamplerFilter)

proc setRepeatU*(self: RDSamplerState; pMember: RenderingDevice_SamplerRepeatMode): void =
  expandMethodBind(className RDSamplerState, "set_repeat_u", 246127626)
  methodbind.ptrcall(self, [getPtr pMember])

proc getRepeatU*(self: RDSamplerState): RenderingDevice_SamplerRepeatMode =
  expandMethodBind(className RDSamplerState, "get_repeat_u", 3227895872)
  var ret: encoded RenderingDevice_SamplerRepeatMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_SamplerRepeatMode)

proc setRepeatV*(self: RDSamplerState; pMember: RenderingDevice_SamplerRepeatMode): void =
  expandMethodBind(className RDSamplerState, "set_repeat_v", 246127626)
  methodbind.ptrcall(self, [getPtr pMember])

proc getRepeatV*(self: RDSamplerState): RenderingDevice_SamplerRepeatMode =
  expandMethodBind(className RDSamplerState, "get_repeat_v", 3227895872)
  var ret: encoded RenderingDevice_SamplerRepeatMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_SamplerRepeatMode)

proc setRepeatW*(self: RDSamplerState; pMember: RenderingDevice_SamplerRepeatMode): void =
  expandMethodBind(className RDSamplerState, "set_repeat_w", 246127626)
  methodbind.ptrcall(self, [getPtr pMember])

proc getRepeatW*(self: RDSamplerState): RenderingDevice_SamplerRepeatMode =
  expandMethodBind(className RDSamplerState, "get_repeat_w", 3227895872)
  var ret: encoded RenderingDevice_SamplerRepeatMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_SamplerRepeatMode)

proc setLodBias*(self: RDSamplerState; pMember: Float): void =
  expandMethodBind(className RDSamplerState, "set_lod_bias", 373806689)
  methodbind.ptrcall(self, [getPtr pMember])

proc getLodBias*(self: RDSamplerState): Float =
  expandMethodBind(className RDSamplerState, "get_lod_bias", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setUseAnisotropy*(self: RDSamplerState; pMember: bool): void =
  expandMethodBind(className RDSamplerState, "set_use_anisotropy", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember])

proc getUseAnisotropy*(self: RDSamplerState): bool =
  expandMethodBind(className RDSamplerState, "get_use_anisotropy", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setAnisotropyMax*(self: RDSamplerState; pMember: Float): void =
  expandMethodBind(className RDSamplerState, "set_anisotropy_max", 373806689)
  methodbind.ptrcall(self, [getPtr pMember])

proc getAnisotropyMax*(self: RDSamplerState): Float =
  expandMethodBind(className RDSamplerState, "get_anisotropy_max", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setEnableCompare*(self: RDSamplerState; pMember: bool): void =
  expandMethodBind(className RDSamplerState, "set_enable_compare", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember])

proc getEnableCompare*(self: RDSamplerState): bool =
  expandMethodBind(className RDSamplerState, "get_enable_compare", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCompareOp*(self: RDSamplerState; pMember: RenderingDevice_CompareOperator): void =
  expandMethodBind(className RDSamplerState, "set_compare_op", 2573711505)
  methodbind.ptrcall(self, [getPtr pMember])

proc getCompareOp*(self: RDSamplerState): RenderingDevice_CompareOperator =
  expandMethodBind(className RDSamplerState, "get_compare_op", 269730778)
  var ret: encoded RenderingDevice_CompareOperator
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_CompareOperator)

proc setMinLod*(self: RDSamplerState; pMember: Float): void =
  expandMethodBind(className RDSamplerState, "set_min_lod", 373806689)
  methodbind.ptrcall(self, [getPtr pMember])

proc getMinLod*(self: RDSamplerState): Float =
  expandMethodBind(className RDSamplerState, "get_min_lod", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setMaxLod*(self: RDSamplerState; pMember: Float): void =
  expandMethodBind(className RDSamplerState, "set_max_lod", 373806689)
  methodbind.ptrcall(self, [getPtr pMember])

proc getMaxLod*(self: RDSamplerState): Float =
  expandMethodBind(className RDSamplerState, "get_max_lod", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setBorderColor*(self: RDSamplerState; pMember: RenderingDevice_SamplerBorderColor): void =
  expandMethodBind(className RDSamplerState, "set_border_color", 1115869595)
  methodbind.ptrcall(self, [getPtr pMember])

proc getBorderColor*(self: RDSamplerState): RenderingDevice_SamplerBorderColor =
  expandMethodBind(className RDSamplerState, "get_border_color", 3514246478)
  var ret: encoded RenderingDevice_SamplerBorderColor
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_SamplerBorderColor)

proc setUnnormalizedUvw*(self: RDSamplerState; pMember: bool): void =
  expandMethodBind(className RDSamplerState, "set_unnormalized_uvw", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember])

proc getUnnormalizedUvw*(self: RDSamplerState): bool =
  expandMethodBind(className RDSamplerState, "get_unnormalized_uvw", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template magFilter*(self: RDSamplerState): untyped = self.getMagFilter()
template `magFilter=`*(self: RDSamplerState; value) = self.setMagFilter(value)

template minFilter*(self: RDSamplerState): untyped = self.getMinFilter()
template `minFilter=`*(self: RDSamplerState; value) = self.setMinFilter(value)

template mipFilter*(self: RDSamplerState): untyped = self.getMipFilter()
template `mipFilter=`*(self: RDSamplerState; value) = self.setMipFilter(value)

template repeatU*(self: RDSamplerState): untyped = self.getRepeatU()
template `repeatU=`*(self: RDSamplerState; value) = self.setRepeatU(value)

template repeatV*(self: RDSamplerState): untyped = self.getRepeatV()
template `repeatV=`*(self: RDSamplerState; value) = self.setRepeatV(value)

template repeatW*(self: RDSamplerState): untyped = self.getRepeatW()
template `repeatW=`*(self: RDSamplerState; value) = self.setRepeatW(value)

template lodBias*(self: RDSamplerState): untyped = self.getLodBias()
template `lodBias=`*(self: RDSamplerState; value) = self.setLodBias(value)

template useAnisotropy*(self: RDSamplerState): untyped = self.getUseAnisotropy()
template `useAnisotropy=`*(self: RDSamplerState; value) = self.setUseAnisotropy(value)

template anisotropyMax*(self: RDSamplerState): untyped = self.getAnisotropyMax()
template `anisotropyMax=`*(self: RDSamplerState; value) = self.setAnisotropyMax(value)

template enableCompare*(self: RDSamplerState): untyped = self.getEnableCompare()
template `enableCompare=`*(self: RDSamplerState; value) = self.setEnableCompare(value)

template compareOp*(self: RDSamplerState): untyped = self.getCompareOp()
template `compareOp=`*(self: RDSamplerState; value) = self.setCompareOp(value)

template minLod*(self: RDSamplerState): untyped = self.getMinLod()
template `minLod=`*(self: RDSamplerState; value) = self.setMinLod(value)

template maxLod*(self: RDSamplerState): untyped = self.getMaxLod()
template `maxLod=`*(self: RDSamplerState; value) = self.setMaxLod(value)

template borderColor*(self: RDSamplerState): untyped = self.getBorderColor()
template `borderColor=`*(self: RDSamplerState; value) = self.setBorderColor(value)

template unnormalizedUvw*(self: RDSamplerState): untyped = self.getUnnormalizedUvw()
template `unnormalizedUvw=`*(self: RDSamplerState; value) = self.setUnnormalizedUvw(value)

const RDSamplerState_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RDSamplerState]): Table[string, string] = RDSamplerState_vmap