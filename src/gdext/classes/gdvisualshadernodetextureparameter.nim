{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodeparameter; export gdvisualshadernodeparameter

proc setTextureType*(self: VisualShaderNodeTextureParameter; `type`: VisualShaderNodeTextureParameter_TextureType): void =
  expandMethodBind(className VisualShaderNodeTextureParameter, "set_texture_type", 2227296876)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureType*(self: VisualShaderNodeTextureParameter): VisualShaderNodeTextureParameter_TextureType =
  expandMethodBind(className VisualShaderNodeTextureParameter, "get_texture_type", 367922070)
  var ret: encoded VisualShaderNodeTextureParameter_TextureType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeTextureParameter_TextureType)

proc setColorDefault*(self: VisualShaderNodeTextureParameter; color: VisualShaderNodeTextureParameter_ColorDefault): void =
  expandMethodBind(className VisualShaderNodeTextureParameter, "set_color_default", 4217624432)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorDefault*(self: VisualShaderNodeTextureParameter): VisualShaderNodeTextureParameter_ColorDefault =
  expandMethodBind(className VisualShaderNodeTextureParameter, "get_color_default", 3837060134)
  var ret: encoded VisualShaderNodeTextureParameter_ColorDefault
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeTextureParameter_ColorDefault)

proc setTextureFilter*(self: VisualShaderNodeTextureParameter; filter: VisualShaderNodeTextureParameter_TextureFilter): void =
  expandMethodBind(className VisualShaderNodeTextureParameter, "set_texture_filter", 2147684752)
  var `?param` = [getPtr filter]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureFilter*(self: VisualShaderNodeTextureParameter): VisualShaderNodeTextureParameter_TextureFilter =
  expandMethodBind(className VisualShaderNodeTextureParameter, "get_texture_filter", 4184490817)
  var ret: encoded VisualShaderNodeTextureParameter_TextureFilter
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeTextureParameter_TextureFilter)

proc setTextureRepeat*(self: VisualShaderNodeTextureParameter; repeat: VisualShaderNodeTextureParameter_TextureRepeat): void =
  expandMethodBind(className VisualShaderNodeTextureParameter, "set_texture_repeat", 2036143070)
  var `?param` = [getPtr repeat]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureRepeat*(self: VisualShaderNodeTextureParameter): VisualShaderNodeTextureParameter_TextureRepeat =
  expandMethodBind(className VisualShaderNodeTextureParameter, "get_texture_repeat", 1690132794)
  var ret: encoded VisualShaderNodeTextureParameter_TextureRepeat
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeTextureParameter_TextureRepeat)

proc setTextureSource*(self: VisualShaderNodeTextureParameter; source: VisualShaderNodeTextureParameter_TextureSource): void =
  expandMethodBind(className VisualShaderNodeTextureParameter, "set_texture_source", 1212687372)
  var `?param` = [getPtr source]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureSource*(self: VisualShaderNodeTextureParameter): VisualShaderNodeTextureParameter_TextureSource =
  expandMethodBind(className VisualShaderNodeTextureParameter, "get_texture_source", 2039092262)
  var ret: encoded VisualShaderNodeTextureParameter_TextureSource
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeTextureParameter_TextureSource)

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

const VisualShaderNodeTextureParameter_vmap =
  VisualShaderNodeParameter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeTextureParameter]): Table[string, string] = VisualShaderNodeTextureParameter_vmap