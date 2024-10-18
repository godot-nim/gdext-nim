{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setSource*(self: VisualShaderNodeCubemap; value: VisualShaderNodeCubemap_Source): void =
  expandMethodBind(className VisualShaderNodeCubemap, "set_source", 1625400621)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSource*(self: VisualShaderNodeCubemap): VisualShaderNodeCubemap_Source =
  expandMethodBind(className VisualShaderNodeCubemap, "get_source", 2222048781)
  var ret: encoded VisualShaderNodeCubemap_Source
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeCubemap_Source)

proc setCubeMap*(self: VisualShaderNodeCubemap; value: gdref Cubemap): void =
  expandMethodBind(className VisualShaderNodeCubemap, "set_cube_map", 2219800736)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCubeMap*(self: VisualShaderNodeCubemap): gdref Cubemap =
  expandMethodBind(className VisualShaderNodeCubemap, "get_cube_map", 1772111058)
  var ret: encoded gdref Cubemap
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Cubemap)

proc setTextureType*(self: VisualShaderNodeCubemap; value: VisualShaderNodeCubemap_TextureType): void =
  expandMethodBind(className VisualShaderNodeCubemap, "set_texture_type", 1899718876)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureType*(self: VisualShaderNodeCubemap): VisualShaderNodeCubemap_TextureType =
  expandMethodBind(className VisualShaderNodeCubemap, "get_texture_type", 3356498888)
  var ret: encoded VisualShaderNodeCubemap_TextureType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeCubemap_TextureType)

template source*(self: VisualShaderNodeCubemap): untyped = self.getSource()
template `source=`*(self: VisualShaderNodeCubemap; value) = self.setSource(value)

template cubeMap*(self: VisualShaderNodeCubemap): untyped = self.getCubeMap()
template `cubeMap=`*(self: VisualShaderNodeCubemap; value) = self.setCubeMap(value)

template textureType*(self: VisualShaderNodeCubemap): untyped = self.getTextureType()
template `textureType=`*(self: VisualShaderNodeCubemap; value) = self.setTextureType(value)

const VisualShaderNodeCubemap_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeCubemap]): Table[string, string] = VisualShaderNodeCubemap_vmap