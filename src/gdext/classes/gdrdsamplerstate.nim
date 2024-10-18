{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setMagFilter*(self: RdSamplerState; pMember: RenderingDevice_SamplerFilter): void =
  expandMethodBind(className RdSamplerState, "set_mag_filter", 1493420382)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMagFilter*(self: RdSamplerState): RenderingDevice_SamplerFilter =
  expandMethodBind(className RdSamplerState, "get_mag_filter", 2209202801)
  var ret: encoded RenderingDevice_SamplerFilter
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_SamplerFilter)

proc setMinFilter*(self: RdSamplerState; pMember: RenderingDevice_SamplerFilter): void =
  expandMethodBind(className RdSamplerState, "set_min_filter", 1493420382)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMinFilter*(self: RdSamplerState): RenderingDevice_SamplerFilter =
  expandMethodBind(className RdSamplerState, "get_min_filter", 2209202801)
  var ret: encoded RenderingDevice_SamplerFilter
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_SamplerFilter)

proc setMipFilter*(self: RdSamplerState; pMember: RenderingDevice_SamplerFilter): void =
  expandMethodBind(className RdSamplerState, "set_mip_filter", 1493420382)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMipFilter*(self: RdSamplerState): RenderingDevice_SamplerFilter =
  expandMethodBind(className RdSamplerState, "get_mip_filter", 2209202801)
  var ret: encoded RenderingDevice_SamplerFilter
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_SamplerFilter)

proc setRepeatU*(self: RdSamplerState; pMember: RenderingDevice_SamplerRepeatMode): void =
  expandMethodBind(className RdSamplerState, "set_repeat_u", 246127626)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRepeatU*(self: RdSamplerState): RenderingDevice_SamplerRepeatMode =
  expandMethodBind(className RdSamplerState, "get_repeat_u", 3227895872)
  var ret: encoded RenderingDevice_SamplerRepeatMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_SamplerRepeatMode)

proc setRepeatV*(self: RdSamplerState; pMember: RenderingDevice_SamplerRepeatMode): void =
  expandMethodBind(className RdSamplerState, "set_repeat_v", 246127626)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRepeatV*(self: RdSamplerState): RenderingDevice_SamplerRepeatMode =
  expandMethodBind(className RdSamplerState, "get_repeat_v", 3227895872)
  var ret: encoded RenderingDevice_SamplerRepeatMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_SamplerRepeatMode)

proc setRepeatW*(self: RdSamplerState; pMember: RenderingDevice_SamplerRepeatMode): void =
  expandMethodBind(className RdSamplerState, "set_repeat_w", 246127626)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRepeatW*(self: RdSamplerState): RenderingDevice_SamplerRepeatMode =
  expandMethodBind(className RdSamplerState, "get_repeat_w", 3227895872)
  var ret: encoded RenderingDevice_SamplerRepeatMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_SamplerRepeatMode)

proc setLodBias*(self: RdSamplerState; pMember: Float): void =
  expandMethodBind(className RdSamplerState, "set_lod_bias", 373806689)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLodBias*(self: RdSamplerState): Float =
  expandMethodBind(className RdSamplerState, "get_lod_bias", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setUseAnisotropy*(self: RdSamplerState; pMember: bool): void =
  expandMethodBind(className RdSamplerState, "set_use_anisotropy", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUseAnisotropy*(self: RdSamplerState): bool =
  expandMethodBind(className RdSamplerState, "get_use_anisotropy", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAnisotropyMax*(self: RdSamplerState; pMember: Float): void =
  expandMethodBind(className RdSamplerState, "set_anisotropy_max", 373806689)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAnisotropyMax*(self: RdSamplerState): Float =
  expandMethodBind(className RdSamplerState, "get_anisotropy_max", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEnableCompare*(self: RdSamplerState; pMember: bool): void =
  expandMethodBind(className RdSamplerState, "set_enable_compare", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableCompare*(self: RdSamplerState): bool =
  expandMethodBind(className RdSamplerState, "get_enable_compare", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCompareOp*(self: RdSamplerState; pMember: RenderingDevice_CompareOperator): void =
  expandMethodBind(className RdSamplerState, "set_compare_op", 2573711505)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCompareOp*(self: RdSamplerState): RenderingDevice_CompareOperator =
  expandMethodBind(className RdSamplerState, "get_compare_op", 269730778)
  var ret: encoded RenderingDevice_CompareOperator
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_CompareOperator)

proc setMinLod*(self: RdSamplerState; pMember: Float): void =
  expandMethodBind(className RdSamplerState, "set_min_lod", 373806689)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMinLod*(self: RdSamplerState): Float =
  expandMethodBind(className RdSamplerState, "get_min_lod", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMaxLod*(self: RdSamplerState; pMember: Float): void =
  expandMethodBind(className RdSamplerState, "set_max_lod", 373806689)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxLod*(self: RdSamplerState): Float =
  expandMethodBind(className RdSamplerState, "get_max_lod", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setBorderColor*(self: RdSamplerState; pMember: RenderingDevice_SamplerBorderColor): void =
  expandMethodBind(className RdSamplerState, "set_border_color", 1115869595)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBorderColor*(self: RdSamplerState): RenderingDevice_SamplerBorderColor =
  expandMethodBind(className RdSamplerState, "get_border_color", 3514246478)
  var ret: encoded RenderingDevice_SamplerBorderColor
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_SamplerBorderColor)

proc setUnnormalizedUvw*(self: RdSamplerState; pMember: bool): void =
  expandMethodBind(className RdSamplerState, "set_unnormalized_uvw", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUnnormalizedUvw*(self: RdSamplerState): bool =
  expandMethodBind(className RdSamplerState, "get_unnormalized_uvw", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template magFilter*(self: RdSamplerState): untyped = self.getMagFilter()
template `magFilter=`*(self: RdSamplerState; value) = self.setMagFilter(value)

template minFilter*(self: RdSamplerState): untyped = self.getMinFilter()
template `minFilter=`*(self: RdSamplerState; value) = self.setMinFilter(value)

template mipFilter*(self: RdSamplerState): untyped = self.getMipFilter()
template `mipFilter=`*(self: RdSamplerState; value) = self.setMipFilter(value)

template repeatU*(self: RdSamplerState): untyped = self.getRepeatU()
template `repeatU=`*(self: RdSamplerState; value) = self.setRepeatU(value)

template repeatV*(self: RdSamplerState): untyped = self.getRepeatV()
template `repeatV=`*(self: RdSamplerState; value) = self.setRepeatV(value)

template repeatW*(self: RdSamplerState): untyped = self.getRepeatW()
template `repeatW=`*(self: RdSamplerState; value) = self.setRepeatW(value)

template lodBias*(self: RdSamplerState): untyped = self.getLodBias()
template `lodBias=`*(self: RdSamplerState; value) = self.setLodBias(value)

template useAnisotropy*(self: RdSamplerState): untyped = self.getUseAnisotropy()
template `useAnisotropy=`*(self: RdSamplerState; value) = self.setUseAnisotropy(value)

template anisotropyMax*(self: RdSamplerState): untyped = self.getAnisotropyMax()
template `anisotropyMax=`*(self: RdSamplerState; value) = self.setAnisotropyMax(value)

template enableCompare*(self: RdSamplerState): untyped = self.getEnableCompare()
template `enableCompare=`*(self: RdSamplerState; value) = self.setEnableCompare(value)

template compareOp*(self: RdSamplerState): untyped = self.getCompareOp()
template `compareOp=`*(self: RdSamplerState; value) = self.setCompareOp(value)

template minLod*(self: RdSamplerState): untyped = self.getMinLod()
template `minLod=`*(self: RdSamplerState; value) = self.setMinLod(value)

template maxLod*(self: RdSamplerState): untyped = self.getMaxLod()
template `maxLod=`*(self: RdSamplerState; value) = self.setMaxLod(value)

template borderColor*(self: RdSamplerState): untyped = self.getBorderColor()
template `borderColor=`*(self: RdSamplerState; value) = self.setBorderColor(value)

template unnormalizedUvw*(self: RdSamplerState): untyped = self.getUnnormalizedUvw()
template `unnormalizedUvw=`*(self: RdSamplerState; value) = self.setUnnormalizedUvw(value)

const RdSamplerState_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RdSamplerState]): Table[string, string] = RdSamplerState_vmap