{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setGradient*(self: GradientTexture2D; gradient: gdref Gradient): void =
  expandMethodBind(className GradientTexture2D, "set_gradient", 2756054477)
  methodbind.ptrcall(self, [getPtr gradient])

proc getGradient*(self: GradientTexture2D): gdref Gradient =
  expandMethodBind(className GradientTexture2D, "get_gradient", 132272999)
  var ret: encoded gdref Gradient
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Gradient)

proc setWidth*(self: GradientTexture2D; width: int32): void =
  expandMethodBind(className GradientTexture2D, "set_width", 1286410249)
  methodbind.ptrcall(self, [getPtr width])

proc setHeight*(self: GradientTexture2D; height: int32): void =
  expandMethodBind(className GradientTexture2D, "set_height", 1286410249)
  methodbind.ptrcall(self, [getPtr height])

proc setUseHdr*(self: GradientTexture2D; enabled: bool): void =
  expandMethodBind(className GradientTexture2D, "set_use_hdr", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isUsingHdr*(self: GradientTexture2D): bool =
  expandMethodBind(className GradientTexture2D, "is_using_hdr", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setFill*(self: GradientTexture2D; fill: GradientTexture2D_Fill): void =
  expandMethodBind(className GradientTexture2D, "set_fill", 3623927636)
  methodbind.ptrcall(self, [getPtr fill])

proc getFill*(self: GradientTexture2D): GradientTexture2D_Fill =
  expandMethodBind(className GradientTexture2D, "get_fill", 1876227217)
  var ret: encoded GradientTexture2D_Fill
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(GradientTexture2D_Fill)

proc setFillFrom*(self: GradientTexture2D; fillFrom: Vector2): void =
  expandMethodBind(className GradientTexture2D, "set_fill_from", 743155724)
  methodbind.ptrcall(self, [getPtr fillFrom])

proc getFillFrom*(self: GradientTexture2D): Vector2 =
  expandMethodBind(className GradientTexture2D, "get_fill_from", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setFillTo*(self: GradientTexture2D; fillTo: Vector2): void =
  expandMethodBind(className GradientTexture2D, "set_fill_to", 743155724)
  methodbind.ptrcall(self, [getPtr fillTo])

proc getFillTo*(self: GradientTexture2D): Vector2 =
  expandMethodBind(className GradientTexture2D, "get_fill_to", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setRepeat*(self: GradientTexture2D; repeat: GradientTexture2D_Repeat): void =
  expandMethodBind(className GradientTexture2D, "set_repeat", 1357597002)
  methodbind.ptrcall(self, [getPtr repeat])

proc getRepeat*(self: GradientTexture2D): GradientTexture2D_Repeat =
  expandMethodBind(className GradientTexture2D, "get_repeat", 3351758665)
  var ret: encoded GradientTexture2D_Repeat
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(GradientTexture2D_Repeat)

template gradient*(self: GradientTexture2D): untyped = self.getGradient()
template `gradient=`*(self: GradientTexture2D; value) = self.setGradient(value)

template width*(self: GradientTexture2D): untyped = self.getWidth()
template `width=`*(self: GradientTexture2D; value) = self.setWidth(value)

template height*(self: GradientTexture2D): untyped = self.getHeight()
template `height=`*(self: GradientTexture2D; value) = self.setHeight(value)

template useHdr*(self: GradientTexture2D): untyped = self.isUsingHdr()
template `useHdr=`*(self: GradientTexture2D; value) = self.setUseHdr(value)

template fill*(self: GradientTexture2D): untyped = self.getFill()
template `fill=`*(self: GradientTexture2D; value) = self.setFill(value)

template fillFrom*(self: GradientTexture2D): untyped = self.getFillFrom()
template `fillFrom=`*(self: GradientTexture2D; value) = self.setFillFrom(value)

template fillTo*(self: GradientTexture2D): untyped = self.getFillTo()
template `fillTo=`*(self: GradientTexture2D; value) = self.setFillTo(value)

template repeat*(self: GradientTexture2D): untyped = self.getRepeat()
template `repeat=`*(self: GradientTexture2D; value) = self.setRepeat(value)

const GradientTexture2D_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GradientTexture2D]): Table[string, string] = GradientTexture2D_vmap