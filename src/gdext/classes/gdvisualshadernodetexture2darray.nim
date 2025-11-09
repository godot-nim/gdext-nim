{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodesample3d; export gdvisualshadernodesample3d

expandOnClassImported(VisualShaderNodeTexture2DArray, VisualShaderNodeSample3D)

proc setTextureArray*(self: VisualShaderNodeTexture2DArray; value: gdref TextureLayered): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTexture2DArray, "set_texture_array", 1278366092)
  methodbind.ptrcall(self, [getPtr value], void)

proc getTextureArray*(self: VisualShaderNodeTexture2DArray): gdref TextureLayered =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTexture2DArray, "get_texture_array", 3984243839)
  methodbind.ptrcall(self, [], gdref TextureLayered)

template textureArray*(self: VisualShaderNodeTexture2DArray): untyped = self.getTextureArray()
template `textureArray=`*(self: VisualShaderNodeTexture2DArray; value) = self.setTextureArray(value)
