{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setGradient*(self: GradientTexture1D; gradient: gdref Gradient): void =
  expandMethodBind(className GradientTexture1D, "set_gradient", 2756054477)
  var `?param` = [getPtr gradient]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGradient*(self: GradientTexture1D): gdref Gradient =
  expandMethodBind(className GradientTexture1D, "get_gradient", 132272999)
  var ret: encoded gdref Gradient
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Gradient)

proc setWidth*(self: GradientTexture1D; width: int32): void =
  expandMethodBind(className GradientTexture1D, "set_width", 1286410249)
  var `?param` = [getPtr width]
  methodbind.ptrcall(self, addr `?param`[0])

proc setUseHdr*(self: GradientTexture1D; enabled: bool): void =
  expandMethodBind(className GradientTexture1D, "set_use_hdr", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingHdr*(self: GradientTexture1D): bool =
  expandMethodBind(className GradientTexture1D, "is_using_hdr", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template gradient*(self: GradientTexture1D): untyped = self.getGradient()
template `gradient=`*(self: GradientTexture1D; value) = self.setGradient(value)

template width*(self: GradientTexture1D): untyped = self.getWidth()
template `width=`*(self: GradientTexture1D; value) = self.setWidth(value)

template useHdr*(self: GradientTexture1D): untyped = self.isUsingHdr()
template `useHdr=`*(self: GradientTexture1D; value) = self.setUseHdr(value)

const GradientTexture1D_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GradientTexture1D]): Table[string, string] = GradientTexture1D_vmap