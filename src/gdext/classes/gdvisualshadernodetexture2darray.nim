{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodesample3d; export gdvisualshadernodesample3d
export VisualShaderNodeTexture2DArray

proc setTextureArray*(self: VisualShaderNodeTexture2DArray; value: gdref TextureLayered): void =
  expandMethodBind(className VisualShaderNodeTexture2DArray, "set_texture_array", 1278366092)
  methodbind.ptrcall(self, [getPtr value])

proc getTextureArray*(self: VisualShaderNodeTexture2DArray): gdref TextureLayered =
  expandMethodBind(className VisualShaderNodeTexture2DArray, "get_texture_array", 3984243839)
  var ret: encoded gdref TextureLayered
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref TextureLayered)

template textureArray*(self: VisualShaderNodeTexture2DArray): untyped = self.getTextureArray()
template `textureArray=`*(self: VisualShaderNodeTexture2DArray; value) = self.setTextureArray(value)
