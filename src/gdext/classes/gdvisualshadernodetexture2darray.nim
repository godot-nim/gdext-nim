{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodesample3d; export gdvisualshadernodesample3d

proc setTextureArray*(self: VisualShaderNodeTexture2DArray; value: gdref Texture2DArray): void =
  expandMethodBind(className VisualShaderNodeTexture2DArray, "set_texture_array", 2206200446)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureArray*(self: VisualShaderNodeTexture2DArray): gdref Texture2DArray =
  expandMethodBind(className VisualShaderNodeTexture2DArray, "get_texture_array", 146117123)
  var ret: encoded gdref Texture2DArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2DArray)

template textureArray*(self: VisualShaderNodeTexture2DArray): untyped = self.getTextureArray()
template `textureArray=`*(self: VisualShaderNodeTexture2DArray; value) = self.setTextureArray(value)

const VisualShaderNodeTexture2DArray_vmap =
  VisualShaderNodeSample3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeTexture2DArray]): Table[string, string] = VisualShaderNodeTexture2DArray_vmap