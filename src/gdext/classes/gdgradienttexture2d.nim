{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(GradientTexture2D, Texture2D)

proc setGradient*(self: GradientTexture2D; gradient: gdref Gradient): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture2D, "set_gradient", 2756054477)
  methodbind.ptrcall(self, [getPtr gradient], void)

proc getGradient*(self: GradientTexture2D): gdref Gradient =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture2D, "get_gradient", 132272999)
  methodbind.ptrcall(self, [], gdref Gradient)

proc setWidth*(self: GradientTexture2D; width: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture2D, "set_width", 1286410249)
  methodbind.ptrcall(self, [getPtr width], void)

proc setHeight*(self: GradientTexture2D; height: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture2D, "set_height", 1286410249)
  methodbind.ptrcall(self, [getPtr height], void)

proc setUseHdr*(self: GradientTexture2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture2D, "set_use_hdr", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isUsingHdr*(self: GradientTexture2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture2D, "is_using_hdr", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFill*(self: GradientTexture2D; fill: GradientTexture2D_Fill): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture2D, "set_fill", 3623927636)
  methodbind.ptrcall(self, [getPtr fill], void)

proc getFill*(self: GradientTexture2D): GradientTexture2D_Fill =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture2D, "get_fill", 1876227217)
  methodbind.ptrcall(self, [], GradientTexture2D_Fill)

proc setFillFrom*(self: GradientTexture2D; fillFrom: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture2D, "set_fill_from", 743155724)
  methodbind.ptrcall(self, [getPtr fillFrom], void)

proc getFillFrom*(self: GradientTexture2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture2D, "get_fill_from", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setFillTo*(self: GradientTexture2D; fillTo: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture2D, "set_fill_to", 743155724)
  methodbind.ptrcall(self, [getPtr fillTo], void)

proc getFillTo*(self: GradientTexture2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture2D, "get_fill_to", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setRepeat*(self: GradientTexture2D; repeat: GradientTexture2D_Repeat): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture2D, "set_repeat", 1357597002)
  methodbind.ptrcall(self, [getPtr repeat], void)

proc getRepeat*(self: GradientTexture2D): GradientTexture2D_Repeat =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture2D, "get_repeat", 3351758665)
  methodbind.ptrcall(self, [], GradientTexture2D_Repeat)

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
