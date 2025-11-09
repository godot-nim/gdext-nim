{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(RDTextureView, RefCounted)

proc setFormatOverride*(self: RDTextureView; pMember: RenderingDevice_DataFormat): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureView, "set_format_override", 565531219)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getFormatOverride*(self: RDTextureView): RenderingDevice_DataFormat =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureView, "get_format_override", 2235804183)
  methodbind.ptrcall(self, [], RenderingDevice_DataFormat)

proc setSwizzleR*(self: RDTextureView; pMember: RenderingDevice_TextureSwizzle): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureView, "set_swizzle_r", 3833362581)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getSwizzleR*(self: RDTextureView): RenderingDevice_TextureSwizzle =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureView, "get_swizzle_r", 4150792614)
  methodbind.ptrcall(self, [], RenderingDevice_TextureSwizzle)

proc setSwizzleG*(self: RDTextureView; pMember: RenderingDevice_TextureSwizzle): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureView, "set_swizzle_g", 3833362581)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getSwizzleG*(self: RDTextureView): RenderingDevice_TextureSwizzle =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureView, "get_swizzle_g", 4150792614)
  methodbind.ptrcall(self, [], RenderingDevice_TextureSwizzle)

proc setSwizzleB*(self: RDTextureView; pMember: RenderingDevice_TextureSwizzle): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureView, "set_swizzle_b", 3833362581)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getSwizzleB*(self: RDTextureView): RenderingDevice_TextureSwizzle =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureView, "get_swizzle_b", 4150792614)
  methodbind.ptrcall(self, [], RenderingDevice_TextureSwizzle)

proc setSwizzleA*(self: RDTextureView; pMember: RenderingDevice_TextureSwizzle): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureView, "set_swizzle_a", 3833362581)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getSwizzleA*(self: RDTextureView): RenderingDevice_TextureSwizzle =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureView, "get_swizzle_a", 4150792614)
  methodbind.ptrcall(self, [], RenderingDevice_TextureSwizzle)

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
