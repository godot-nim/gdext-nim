{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeparameter; export gdvisualshadernodeparameter

expandOnClassImported(VisualShaderNodeTextureParameter, VisualShaderNodeParameter)

proc setTextureType*(self: VisualShaderNodeTextureParameter; `type`: VisualShaderNodeTextureParameter_TextureType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTextureParameter, "set_texture_type", 2227296876)
  methodbind.ptrcall(self, [getPtr `type`], void)

proc getTextureType*(self: VisualShaderNodeTextureParameter): VisualShaderNodeTextureParameter_TextureType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTextureParameter, "get_texture_type", 367922070)
  methodbind.ptrcall(self, [], VisualShaderNodeTextureParameter_TextureType)

proc setColorDefault*(self: VisualShaderNodeTextureParameter; color: VisualShaderNodeTextureParameter_ColorDefault): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTextureParameter, "set_color_default", 4217624432)
  methodbind.ptrcall(self, [getPtr color], void)

proc getColorDefault*(self: VisualShaderNodeTextureParameter): VisualShaderNodeTextureParameter_ColorDefault =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTextureParameter, "get_color_default", 3837060134)
  methodbind.ptrcall(self, [], VisualShaderNodeTextureParameter_ColorDefault)

proc setTextureFilter*(self: VisualShaderNodeTextureParameter; filter: VisualShaderNodeTextureParameter_TextureFilter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTextureParameter, "set_texture_filter", 2147684752)
  methodbind.ptrcall(self, [getPtr filter], void)

proc getTextureFilter*(self: VisualShaderNodeTextureParameter): VisualShaderNodeTextureParameter_TextureFilter =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTextureParameter, "get_texture_filter", 4184490817)
  methodbind.ptrcall(self, [], VisualShaderNodeTextureParameter_TextureFilter)

proc setTextureRepeat*(self: VisualShaderNodeTextureParameter; repeat: VisualShaderNodeTextureParameter_TextureRepeat): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTextureParameter, "set_texture_repeat", 2036143070)
  methodbind.ptrcall(self, [getPtr repeat], void)

proc getTextureRepeat*(self: VisualShaderNodeTextureParameter): VisualShaderNodeTextureParameter_TextureRepeat =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTextureParameter, "get_texture_repeat", 1690132794)
  methodbind.ptrcall(self, [], VisualShaderNodeTextureParameter_TextureRepeat)

proc setTextureSource*(self: VisualShaderNodeTextureParameter; source: VisualShaderNodeTextureParameter_TextureSource): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTextureParameter, "set_texture_source", 1212687372)
  methodbind.ptrcall(self, [getPtr source], void)

proc getTextureSource*(self: VisualShaderNodeTextureParameter): VisualShaderNodeTextureParameter_TextureSource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTextureParameter, "get_texture_source", 2039092262)
  methodbind.ptrcall(self, [], VisualShaderNodeTextureParameter_TextureSource)

template textureType*(self: VisualShaderNodeTextureParameter): untyped = self.getTextureType()
template `textureType=`*(self: VisualShaderNodeTextureParameter; value) = self.setTextureType(value)

template colorDefault*(self: VisualShaderNodeTextureParameter): untyped = self.getColorDefault()
template `colorDefault=`*(self: VisualShaderNodeTextureParameter; value) = self.setColorDefault(value)

template textureFilter*(self: VisualShaderNodeTextureParameter): untyped = self.getTextureFilter()
template `textureFilter=`*(self: VisualShaderNodeTextureParameter; value) = self.setTextureFilter(value)

template textureRepeat*(self: VisualShaderNodeTextureParameter): untyped = self.getTextureRepeat()
template `textureRepeat=`*(self: VisualShaderNodeTextureParameter; value) = self.setTextureRepeat(value)

template textureSource*(self: VisualShaderNodeTextureParameter): untyped = self.getTextureSource()
template `textureSource=`*(self: VisualShaderNodeTextureParameter; value) = self.setTextureSource(value)
