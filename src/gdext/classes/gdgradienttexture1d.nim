{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(GradientTexture1D, Texture2D)

proc setGradient*(self: GradientTexture1D; gradient: gdref Gradient): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture1D, "set_gradient", 2756054477)
  methodbind.ptrcall(self, [getPtr gradient], void)

proc getGradient*(self: GradientTexture1D): gdref Gradient =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture1D, "get_gradient", 132272999)
  methodbind.ptrcall(self, [], gdref Gradient)

proc setWidth*(self: GradientTexture1D; width: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture1D, "set_width", 1286410249)
  methodbind.ptrcall(self, [getPtr width], void)

proc setUseHdr*(self: GradientTexture1D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture1D, "set_use_hdr", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isUsingHdr*(self: GradientTexture1D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GradientTexture1D, "is_using_hdr", 36873697)
  methodbind.ptrcall(self, [], bool)

template gradient*(self: GradientTexture1D): untyped = self.getGradient()
template `gradient=`*(self: GradientTexture1D; value) = self.setGradient(value)

template width*(self: GradientTexture1D): untyped = self.getWidth()
template `width=`*(self: GradientTexture1D; value) = self.setWidth(value)

template useHdr*(self: GradientTexture1D): untyped = self.isUsingHdr()
template `useHdr=`*(self: GradientTexture1D; value) = self.setUseHdr(value)
