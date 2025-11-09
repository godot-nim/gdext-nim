{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeCubemap, VisualShaderNode)

proc setSource*(self: VisualShaderNodeCubemap; value: VisualShaderNodeCubemap_Source): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeCubemap, "set_source", 1625400621)
  methodbind.ptrcall(self, [getPtr value], void)

proc getSource*(self: VisualShaderNodeCubemap): VisualShaderNodeCubemap_Source =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeCubemap, "get_source", 2222048781)
  methodbind.ptrcall(self, [], VisualShaderNodeCubemap_Source)

proc setCubeMap*(self: VisualShaderNodeCubemap; value: gdref TextureLayered): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeCubemap, "set_cube_map", 1278366092)
  methodbind.ptrcall(self, [getPtr value], void)

proc getCubeMap*(self: VisualShaderNodeCubemap): gdref TextureLayered =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeCubemap, "get_cube_map", 3984243839)
  methodbind.ptrcall(self, [], gdref TextureLayered)

proc setTextureType*(self: VisualShaderNodeCubemap; value: VisualShaderNodeCubemap_TextureType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeCubemap, "set_texture_type", 1899718876)
  methodbind.ptrcall(self, [getPtr value], void)

proc getTextureType*(self: VisualShaderNodeCubemap): VisualShaderNodeCubemap_TextureType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeCubemap, "get_texture_type", 3356498888)
  methodbind.ptrcall(self, [], VisualShaderNodeCubemap_TextureType)

template source*(self: VisualShaderNodeCubemap): untyped = self.getSource()
template `source=`*(self: VisualShaderNodeCubemap; value) = self.setSource(value)

template cubeMap*(self: VisualShaderNodeCubemap): untyped = self.getCubeMap()
template `cubeMap=`*(self: VisualShaderNodeCubemap; value) = self.setCubeMap(value)

template textureType*(self: VisualShaderNodeCubemap): untyped = self.getTextureType()
template `textureType=`*(self: VisualShaderNodeCubemap; value) = self.setTextureType(value)
