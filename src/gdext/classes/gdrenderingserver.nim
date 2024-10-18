{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc texture2DCreate*(self: RenderingServer; image: gdref Image): Rid =
  expandMethodBind(className RenderingServer, "texture_2d_create", 2010018390)
  var `?param` = [getPtr image]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc texture2DLayeredCreate*(self: RenderingServer; layers: TypedArray[gdref Image]; layeredType: RenderingServer_TextureLayeredType): Rid =
  expandMethodBind(className RenderingServer, "texture_2d_layered_create", 913689023)
  var `?param` = [getPtr layers, getPtr layeredType]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc texture3DCreate*(self: RenderingServer; format: Image_Format; width: int32; height: int32; depth: int32; mipmaps: bool; data: TypedArray[gdref Image]): Rid =
  expandMethodBind(className RenderingServer, "texture_3d_create", 4036838706)
  var `?param` = [getPtr format, getPtr width, getPtr height, getPtr depth, getPtr mipmaps, getPtr data]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc textureProxyCreate*(self: RenderingServer; base: Rid): Rid =
  expandMethodBind(className RenderingServer, "texture_proxy_create", 41030802)
  var `?param` = [getPtr base]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc texture2DUpdate*(self: RenderingServer; texture: Rid; image: gdref Image; layer: int32): void =
  expandMethodBind(className RenderingServer, "texture_2d_update", 999539803)
  var `?param` = [getPtr texture, getPtr image, getPtr layer]
  methodbind.ptrcall(self, addr `?param`[0])

proc texture3DUpdate*(self: RenderingServer; texture: Rid; data: TypedArray[gdref Image]): void =
  expandMethodBind(className RenderingServer, "texture_3d_update", 684822712)
  var `?param` = [getPtr texture, getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc textureProxyUpdate*(self: RenderingServer; texture: Rid; proxyTo: Rid): void =
  expandMethodBind(className RenderingServer, "texture_proxy_update", 395945892)
  var `?param` = [getPtr texture, getPtr proxyTo]
  methodbind.ptrcall(self, addr `?param`[0])

proc texture2DPlaceholderCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "texture_2d_placeholder_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc texture2DLayeredPlaceholderCreate*(self: RenderingServer; layeredType: RenderingServer_TextureLayeredType): Rid =
  expandMethodBind(className RenderingServer, "texture_2d_layered_placeholder_create", 1394585590)
  var `?param` = [getPtr layeredType]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc texture3DPlaceholderCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "texture_3d_placeholder_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc texture2DGet*(self: RenderingServer; texture: Rid): gdref Image =
  expandMethodBind(className RenderingServer, "texture_2d_get", 4206205781)
  var `?param` = [getPtr texture]
  var ret: encoded gdref Image
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Image)

proc texture2DLayerGet*(self: RenderingServer; texture: Rid; layer: int32): gdref Image =
  expandMethodBind(className RenderingServer, "texture_2d_layer_get", 2705440895)
  var `?param` = [getPtr texture, getPtr layer]
  var ret: encoded gdref Image
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Image)

proc texture3DGet*(self: RenderingServer; texture: Rid): TypedArray[gdref Image] =
  expandMethodBind(className RenderingServer, "texture_3d_get", 2684255073)
  var `?param` = [getPtr texture]
  var ret: encoded TypedArray[gdref Image]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[gdref Image])

proc textureReplace*(self: RenderingServer; texture: Rid; byTexture: Rid): void =
  expandMethodBind(className RenderingServer, "texture_replace", 395945892)
  var `?param` = [getPtr texture, getPtr byTexture]
  methodbind.ptrcall(self, addr `?param`[0])

proc textureSetSizeOverride*(self: RenderingServer; texture: Rid; width: int32; height: int32): void =
  expandMethodBind(className RenderingServer, "texture_set_size_override", 4288446313)
  var `?param` = [getPtr texture, getPtr width, getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc textureSetPath*(self: RenderingServer; texture: Rid; path: String): void =
  expandMethodBind(className RenderingServer, "texture_set_path", 2726140452)
  var `?param` = [getPtr texture, getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc textureGetPath*(self: RenderingServer; texture: Rid): String =
  expandMethodBind(className RenderingServer, "texture_get_path", 642473191)
  var `?param` = [getPtr texture]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc textureGetFormat*(self: RenderingServer; texture: Rid): Image_Format =
  expandMethodBind(className RenderingServer, "texture_get_format", 1932918979)
  var `?param` = [getPtr texture]
  var ret: encoded Image_Format
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Image_Format)

proc textureSetForceRedrawIfVisible*(self: RenderingServer; texture: Rid; enable: bool): void =
  expandMethodBind(className RenderingServer, "texture_set_force_redraw_if_visible", 1265174801)
  var `?param` = [getPtr texture, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc textureRdCreate*(self: RenderingServer; rdTexture: Rid; layerType: RenderingServer_TextureLayeredType = textureLayered2DArray): Rid =
  expandMethodBind(className RenderingServer, "texture_rd_create", 1434128712)
  var `?param` = [getPtr rdTexture, getPtr layerType]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc textureGetRdTexture*(self: RenderingServer; texture: Rid; srgb: bool = false): Rid =
  expandMethodBind(className RenderingServer, "texture_get_rd_texture", 2790148051)
  var `?param` = [getPtr texture, getPtr srgb]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc textureGetNativeHandle*(self: RenderingServer; texture: Rid; srgb: bool = false): uint64 =
  expandMethodBind(className RenderingServer, "texture_get_native_handle", 1834114100)
  var `?param` = [getPtr texture, getPtr srgb]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc shaderCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "shader_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc shaderSetCode*(self: RenderingServer; shader: Rid; code: String): void =
  expandMethodBind(className RenderingServer, "shader_set_code", 2726140452)
  var `?param` = [getPtr shader, getPtr code]
  methodbind.ptrcall(self, addr `?param`[0])

proc shaderSetPathHint*(self: RenderingServer; shader: Rid; path: String): void =
  expandMethodBind(className RenderingServer, "shader_set_path_hint", 2726140452)
  var `?param` = [getPtr shader, getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc shaderGetCode*(self: RenderingServer; shader: Rid): String =
  expandMethodBind(className RenderingServer, "shader_get_code", 642473191)
  var `?param` = [getPtr shader]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getShaderParameterList*(self: RenderingServer; shader: Rid): TypedArray[Dictionary] =
  expandMethodBind(className RenderingServer, "get_shader_parameter_list", 2684255073)
  var `?param` = [getPtr shader]
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc shaderGetParameterDefault*(self: RenderingServer; shader: Rid; name: StringName): Variant =
  expandMethodBind(className RenderingServer, "shader_get_parameter_default", 2621281810)
  var `?param` = [getPtr shader, getPtr name]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc shaderSetDefaultTextureParameter*(self: RenderingServer; shader: Rid; name: StringName; texture: Rid; index: int32 = 0): void =
  expandMethodBind(className RenderingServer, "shader_set_default_texture_parameter", 4094001817)
  var `?param` = [getPtr shader, getPtr name, getPtr texture, getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc shaderGetDefaultTextureParameter*(self: RenderingServer; shader: Rid; name: StringName; index: int32 = 0): Rid =
  expandMethodBind(className RenderingServer, "shader_get_default_texture_parameter", 1464608890)
  var `?param` = [getPtr shader, getPtr name, getPtr index]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc materialCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "material_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc materialSetShader*(self: RenderingServer; shaderMaterial: Rid; shader: Rid): void =
  expandMethodBind(className RenderingServer, "material_set_shader", 395945892)
  var `?param` = [getPtr shaderMaterial, getPtr shader]
  methodbind.ptrcall(self, addr `?param`[0])

proc materialSetParam*(self: RenderingServer; material: Rid; parameter: StringName; value: Variant): void =
  expandMethodBind(className RenderingServer, "material_set_param", 3477296213)
  var `?param` = [getPtr material, getPtr parameter, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc materialGetParam*(self: RenderingServer; material: Rid; parameter: StringName): Variant =
  expandMethodBind(className RenderingServer, "material_get_param", 2621281810)
  var `?param` = [getPtr material, getPtr parameter]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc materialSetRenderPriority*(self: RenderingServer; material: Rid; priority: int32): void =
  expandMethodBind(className RenderingServer, "material_set_render_priority", 3411492887)
  var `?param` = [getPtr material, getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

proc materialSetNextPass*(self: RenderingServer; material: Rid; nextMaterial: Rid): void =
  expandMethodBind(className RenderingServer, "material_set_next_pass", 395945892)
  var `?param` = [getPtr material, getPtr nextMaterial]
  methodbind.ptrcall(self, addr `?param`[0])

proc meshCreateFromSurfaces*(self: RenderingServer; surfaces: TypedArray[Dictionary]; blendShapeCount: int32 = 0): Rid =
  expandMethodBind(className RenderingServer, "mesh_create_from_surfaces", 4291747531)
  var `?param` = [getPtr surfaces, getPtr blendShapeCount]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc meshCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "mesh_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc meshSurfaceGetFormatOffset*(self: RenderingServer; format: set[RenderingServer_ArrayFormat]; vertexCount: int32; arrayIndex: int32): uint32 =
  expandMethodBind(className RenderingServer, "mesh_surface_get_format_offset", 2981368685)
  var `?param` = [getPtr format, getPtr vertexCount, getPtr arrayIndex]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc meshSurfaceGetFormatVertexStride*(self: RenderingServer; format: set[RenderingServer_ArrayFormat]; vertexCount: int32): uint32 =
  expandMethodBind(className RenderingServer, "mesh_surface_get_format_vertex_stride", 3188363337)
  var `?param` = [getPtr format, getPtr vertexCount]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc meshSurfaceGetFormatNormalTangentStride*(self: RenderingServer; format: set[RenderingServer_ArrayFormat]; vertexCount: int32): uint32 =
  expandMethodBind(className RenderingServer, "mesh_surface_get_format_normal_tangent_stride", 3188363337)
  var `?param` = [getPtr format, getPtr vertexCount]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc meshSurfaceGetFormatAttributeStride*(self: RenderingServer; format: set[RenderingServer_ArrayFormat]; vertexCount: int32): uint32 =
  expandMethodBind(className RenderingServer, "mesh_surface_get_format_attribute_stride", 3188363337)
  var `?param` = [getPtr format, getPtr vertexCount]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc meshSurfaceGetFormatSkinStride*(self: RenderingServer; format: set[RenderingServer_ArrayFormat]; vertexCount: int32): uint32 =
  expandMethodBind(className RenderingServer, "mesh_surface_get_format_skin_stride", 3188363337)
  var `?param` = [getPtr format, getPtr vertexCount]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc meshAddSurface*(self: RenderingServer; mesh: Rid; surface: Dictionary): void =
  expandMethodBind(className RenderingServer, "mesh_add_surface", 1217542888)
  var `?param` = [getPtr mesh, getPtr surface]
  methodbind.ptrcall(self, addr `?param`[0])

proc meshAddSurfaceFromArrays*(self: RenderingServer; mesh: Rid; primitive: RenderingServer_PrimitiveType; arrays: Array; blendShapes: Array = gdarray(); lods: Dictionary = dictionary(); compressFormat: set[RenderingServer_ArrayFormat] = {}): void =
  expandMethodBind(className RenderingServer, "mesh_add_surface_from_arrays", 2342446560)
  var `?param` = [getPtr mesh, getPtr primitive, getPtr arrays, getPtr blendShapes, getPtr lods, getPtr compressFormat]
  methodbind.ptrcall(self, addr `?param`[0])

proc meshGetBlendShapeCount*(self: RenderingServer; mesh: Rid): int32 =
  expandMethodBind(className RenderingServer, "mesh_get_blend_shape_count", 2198884583)
  var `?param` = [getPtr mesh]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc meshSetBlendShapeMode*(self: RenderingServer; mesh: Rid; mode: RenderingServer_BlendShapeMode): void =
  expandMethodBind(className RenderingServer, "mesh_set_blend_shape_mode", 1294662092)
  var `?param` = [getPtr mesh, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc meshGetBlendShapeMode*(self: RenderingServer; mesh: Rid): RenderingServer_BlendShapeMode =
  expandMethodBind(className RenderingServer, "mesh_get_blend_shape_mode", 4282291819)
  var `?param` = [getPtr mesh]
  var ret: encoded RenderingServer_BlendShapeMode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RenderingServer_BlendShapeMode)

proc meshSurfaceSetMaterial*(self: RenderingServer; mesh: Rid; surface: int32; material: Rid): void =
  expandMethodBind(className RenderingServer, "mesh_surface_set_material", 2310537182)
  var `?param` = [getPtr mesh, getPtr surface, getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc meshSurfaceGetMaterial*(self: RenderingServer; mesh: Rid; surface: int32): Rid =
  expandMethodBind(className RenderingServer, "mesh_surface_get_material", 1066463050)
  var `?param` = [getPtr mesh, getPtr surface]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc meshGetSurface*(self: RenderingServer; mesh: Rid; surface: int32): Dictionary =
  expandMethodBind(className RenderingServer, "mesh_get_surface", 186674697)
  var `?param` = [getPtr mesh, getPtr surface]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc meshSurfaceGetArrays*(self: RenderingServer; mesh: Rid; surface: int32): Array =
  expandMethodBind(className RenderingServer, "mesh_surface_get_arrays", 1778388067)
  var `?param` = [getPtr mesh, getPtr surface]
  var ret: encoded Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Array)

proc meshSurfaceGetBlendShapeArrays*(self: RenderingServer; mesh: Rid; surface: int32): TypedArray[Array] =
  expandMethodBind(className RenderingServer, "mesh_surface_get_blend_shape_arrays", 1778388067)
  var `?param` = [getPtr mesh, getPtr surface]
  var ret: encoded TypedArray[Array]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Array])

proc meshGetSurfaceCount*(self: RenderingServer; mesh: Rid): int32 =
  expandMethodBind(className RenderingServer, "mesh_get_surface_count", 2198884583)
  var `?param` = [getPtr mesh]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc meshSetCustomAabb*(self: RenderingServer; mesh: Rid; aabb: Aabb): void =
  expandMethodBind(className RenderingServer, "mesh_set_custom_aabb", 3696536120)
  var `?param` = [getPtr mesh, getPtr aabb]
  methodbind.ptrcall(self, addr `?param`[0])

proc meshGetCustomAabb*(self: RenderingServer; mesh: Rid): Aabb =
  expandMethodBind(className RenderingServer, "mesh_get_custom_aabb", 974181306)
  var `?param` = [getPtr mesh]
  var ret: encoded Aabb
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Aabb)

proc meshClear*(self: RenderingServer; mesh: Rid): void =
  expandMethodBind(className RenderingServer, "mesh_clear", 2722037293)
  var `?param` = [getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc meshSurfaceUpdateVertexRegion*(self: RenderingServer; mesh: Rid; surface: int32; offset: int32; data: PackedByteArray): void =
  expandMethodBind(className RenderingServer, "mesh_surface_update_vertex_region", 2900195149)
  var `?param` = [getPtr mesh, getPtr surface, getPtr offset, getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc meshSurfaceUpdateAttributeRegion*(self: RenderingServer; mesh: Rid; surface: int32; offset: int32; data: PackedByteArray): void =
  expandMethodBind(className RenderingServer, "mesh_surface_update_attribute_region", 2900195149)
  var `?param` = [getPtr mesh, getPtr surface, getPtr offset, getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc meshSurfaceUpdateSkinRegion*(self: RenderingServer; mesh: Rid; surface: int32; offset: int32; data: PackedByteArray): void =
  expandMethodBind(className RenderingServer, "mesh_surface_update_skin_region", 2900195149)
  var `?param` = [getPtr mesh, getPtr surface, getPtr offset, getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc meshSetShadowMesh*(self: RenderingServer; mesh: Rid; shadowMesh: Rid): void =
  expandMethodBind(className RenderingServer, "mesh_set_shadow_mesh", 395945892)
  var `?param` = [getPtr mesh, getPtr shadowMesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc multimeshCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "multimesh_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc multimeshAllocateData*(self: RenderingServer; multimesh: Rid; instances: int32; transformFormat: RenderingServer_MultimeshTransformFormat; colorFormat: bool = false; customDataFormat: bool = false): void =
  expandMethodBind(className RenderingServer, "multimesh_allocate_data", 283685892)
  var `?param` = [getPtr multimesh, getPtr instances, getPtr transformFormat, getPtr colorFormat, getPtr customDataFormat]
  methodbind.ptrcall(self, addr `?param`[0])

proc multimeshGetInstanceCount*(self: RenderingServer; multimesh: Rid): int32 =
  expandMethodBind(className RenderingServer, "multimesh_get_instance_count", 2198884583)
  var `?param` = [getPtr multimesh]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc multimeshSetMesh*(self: RenderingServer; multimesh: Rid; mesh: Rid): void =
  expandMethodBind(className RenderingServer, "multimesh_set_mesh", 395945892)
  var `?param` = [getPtr multimesh, getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc multimeshInstanceSetTransform*(self: RenderingServer; multimesh: Rid; index: int32; transform: Transform3D): void =
  expandMethodBind(className RenderingServer, "multimesh_instance_set_transform", 675327471)
  var `?param` = [getPtr multimesh, getPtr index, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc multimeshInstanceSetTransform2D*(self: RenderingServer; multimesh: Rid; index: int32; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "multimesh_instance_set_transform_2d", 736082694)
  var `?param` = [getPtr multimesh, getPtr index, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc multimeshInstanceSetColor*(self: RenderingServer; multimesh: Rid; index: int32; color: Color): void =
  expandMethodBind(className RenderingServer, "multimesh_instance_set_color", 176975443)
  var `?param` = [getPtr multimesh, getPtr index, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc multimeshInstanceSetCustomData*(self: RenderingServer; multimesh: Rid; index: int32; customData: Color): void =
  expandMethodBind(className RenderingServer, "multimesh_instance_set_custom_data", 176975443)
  var `?param` = [getPtr multimesh, getPtr index, getPtr customData]
  methodbind.ptrcall(self, addr `?param`[0])

proc multimeshGetMesh*(self: RenderingServer; multimesh: Rid): Rid =
  expandMethodBind(className RenderingServer, "multimesh_get_mesh", 3814569979)
  var `?param` = [getPtr multimesh]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc multimeshGetAabb*(self: RenderingServer; multimesh: Rid): Aabb =
  expandMethodBind(className RenderingServer, "multimesh_get_aabb", 974181306)
  var `?param` = [getPtr multimesh]
  var ret: encoded Aabb
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Aabb)

proc multimeshSetCustomAabb*(self: RenderingServer; multimesh: Rid; aabb: Aabb): void =
  expandMethodBind(className RenderingServer, "multimesh_set_custom_aabb", 3696536120)
  var `?param` = [getPtr multimesh, getPtr aabb]
  methodbind.ptrcall(self, addr `?param`[0])

proc multimeshGetCustomAabb*(self: RenderingServer; multimesh: Rid): Aabb =
  expandMethodBind(className RenderingServer, "multimesh_get_custom_aabb", 974181306)
  var `?param` = [getPtr multimesh]
  var ret: encoded Aabb
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Aabb)

proc multimeshInstanceGetTransform*(self: RenderingServer; multimesh: Rid; index: int32): Transform3D =
  expandMethodBind(className RenderingServer, "multimesh_instance_get_transform", 1050775521)
  var `?param` = [getPtr multimesh, getPtr index]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc multimeshInstanceGetTransform2D*(self: RenderingServer; multimesh: Rid; index: int32): Transform2D =
  expandMethodBind(className RenderingServer, "multimesh_instance_get_transform_2d", 1324854622)
  var `?param` = [getPtr multimesh, getPtr index]
  var ret: encoded Transform2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform2D)

proc multimeshInstanceGetColor*(self: RenderingServer; multimesh: Rid; index: int32): Color =
  expandMethodBind(className RenderingServer, "multimesh_instance_get_color", 2946315076)
  var `?param` = [getPtr multimesh, getPtr index]
  var ret: encoded Color
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Color)

proc multimeshInstanceGetCustomData*(self: RenderingServer; multimesh: Rid; index: int32): Color =
  expandMethodBind(className RenderingServer, "multimesh_instance_get_custom_data", 2946315076)
  var `?param` = [getPtr multimesh, getPtr index]
  var ret: encoded Color
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Color)

proc multimeshSetVisibleInstances*(self: RenderingServer; multimesh: Rid; visible: int32): void =
  expandMethodBind(className RenderingServer, "multimesh_set_visible_instances", 3411492887)
  var `?param` = [getPtr multimesh, getPtr visible]
  methodbind.ptrcall(self, addr `?param`[0])

proc multimeshGetVisibleInstances*(self: RenderingServer; multimesh: Rid): int32 =
  expandMethodBind(className RenderingServer, "multimesh_get_visible_instances", 2198884583)
  var `?param` = [getPtr multimesh]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc multimeshSetBuffer*(self: RenderingServer; multimesh: Rid; buffer: PackedFloat32Array): void =
  expandMethodBind(className RenderingServer, "multimesh_set_buffer", 2960552364)
  var `?param` = [getPtr multimesh, getPtr buffer]
  methodbind.ptrcall(self, addr `?param`[0])

proc multimeshGetBuffer*(self: RenderingServer; multimesh: Rid): PackedFloat32Array =
  expandMethodBind(className RenderingServer, "multimesh_get_buffer", 3964669176)
  var `?param` = [getPtr multimesh]
  var ret: encoded PackedFloat32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedFloat32Array)

proc skeletonCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "skeleton_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc skeletonAllocateData*(self: RenderingServer; skeleton: Rid; bones: int32; is2DSkeleton: bool = false): void =
  expandMethodBind(className RenderingServer, "skeleton_allocate_data", 1904426712)
  var `?param` = [getPtr skeleton, getPtr bones, getPtr is2DSkeleton]
  methodbind.ptrcall(self, addr `?param`[0])

proc skeletonGetBoneCount*(self: RenderingServer; skeleton: Rid): int32 =
  expandMethodBind(className RenderingServer, "skeleton_get_bone_count", 2198884583)
  var `?param` = [getPtr skeleton]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc skeletonBoneSetTransform*(self: RenderingServer; skeleton: Rid; bone: int32; transform: Transform3D): void =
  expandMethodBind(className RenderingServer, "skeleton_bone_set_transform", 675327471)
  var `?param` = [getPtr skeleton, getPtr bone, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc skeletonBoneGetTransform*(self: RenderingServer; skeleton: Rid; bone: int32): Transform3D =
  expandMethodBind(className RenderingServer, "skeleton_bone_get_transform", 1050775521)
  var `?param` = [getPtr skeleton, getPtr bone]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc skeletonBoneSetTransform2D*(self: RenderingServer; skeleton: Rid; bone: int32; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "skeleton_bone_set_transform_2d", 736082694)
  var `?param` = [getPtr skeleton, getPtr bone, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc skeletonBoneGetTransform2D*(self: RenderingServer; skeleton: Rid; bone: int32): Transform2D =
  expandMethodBind(className RenderingServer, "skeleton_bone_get_transform_2d", 1324854622)
  var `?param` = [getPtr skeleton, getPtr bone]
  var ret: encoded Transform2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform2D)

proc skeletonSetBaseTransform2D*(self: RenderingServer; skeleton: Rid; baseTransform: Transform2D): void =
  expandMethodBind(className RenderingServer, "skeleton_set_base_transform_2d", 1246044741)
  var `?param` = [getPtr skeleton, getPtr baseTransform]
  methodbind.ptrcall(self, addr `?param`[0])

proc directionalLightCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "directional_light_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc omniLightCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "omni_light_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc spotLightCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "spot_light_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc lightSetColor*(self: RenderingServer; light: Rid; color: Color): void =
  expandMethodBind(className RenderingServer, "light_set_color", 2948539648)
  var `?param` = [getPtr light, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightSetParam*(self: RenderingServer; light: Rid; param: RenderingServer_LightParam; value: Float): void =
  expandMethodBind(className RenderingServer, "light_set_param", 501936875)
  var `?param` = [getPtr light, getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightSetShadow*(self: RenderingServer; light: Rid; enabled: bool): void =
  expandMethodBind(className RenderingServer, "light_set_shadow", 1265174801)
  var `?param` = [getPtr light, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightSetProjector*(self: RenderingServer; light: Rid; texture: Rid): void =
  expandMethodBind(className RenderingServer, "light_set_projector", 395945892)
  var `?param` = [getPtr light, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightSetNegative*(self: RenderingServer; light: Rid; enable: bool): void =
  expandMethodBind(className RenderingServer, "light_set_negative", 1265174801)
  var `?param` = [getPtr light, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightSetCullMask*(self: RenderingServer; light: Rid; mask: uint32): void =
  expandMethodBind(className RenderingServer, "light_set_cull_mask", 3411492887)
  var `?param` = [getPtr light, getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightSetDistanceFade*(self: RenderingServer; decal: Rid; enabled: bool; begin: Float; shadow: Float; length: Float): void =
  expandMethodBind(className RenderingServer, "light_set_distance_fade", 1622292572)
  var `?param` = [getPtr decal, getPtr enabled, getPtr begin, getPtr shadow, getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightSetReverseCullFaceMode*(self: RenderingServer; light: Rid; enabled: bool): void =
  expandMethodBind(className RenderingServer, "light_set_reverse_cull_face_mode", 1265174801)
  var `?param` = [getPtr light, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightSetBakeMode*(self: RenderingServer; light: Rid; bakeMode: RenderingServer_LightBakeMode): void =
  expandMethodBind(className RenderingServer, "light_set_bake_mode", 1048525260)
  var `?param` = [getPtr light, getPtr bakeMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightSetMaxSdfgiCascade*(self: RenderingServer; light: Rid; cascade: uint32): void =
  expandMethodBind(className RenderingServer, "light_set_max_sdfgi_cascade", 3411492887)
  var `?param` = [getPtr light, getPtr cascade]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightOmniSetShadowMode*(self: RenderingServer; light: Rid; mode: RenderingServer_LightOmniShadowMode): void =
  expandMethodBind(className RenderingServer, "light_omni_set_shadow_mode", 2552677200)
  var `?param` = [getPtr light, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightDirectionalSetShadowMode*(self: RenderingServer; light: Rid; mode: RenderingServer_LightDirectionalShadowMode): void =
  expandMethodBind(className RenderingServer, "light_directional_set_shadow_mode", 380462970)
  var `?param` = [getPtr light, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightDirectionalSetBlendSplits*(self: RenderingServer; light: Rid; enable: bool): void =
  expandMethodBind(className RenderingServer, "light_directional_set_blend_splits", 1265174801)
  var `?param` = [getPtr light, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightDirectionalSetSkyMode*(self: RenderingServer; light: Rid; mode: RenderingServer_LightDirectionalSkyMode): void =
  expandMethodBind(className RenderingServer, "light_directional_set_sky_mode", 2559740754)
  var `?param` = [getPtr light, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightProjectorsSetFilter*(self: RenderingServer; filter: RenderingServer_LightProjectorFilter): void =
  expandMethodBind(className RenderingServer, "light_projectors_set_filter", 43944325)
  var `?param` = [getPtr filter]
  methodbind.ptrcall(self, addr `?param`[0])

proc positionalSoftShadowFilterSetQuality*(self: RenderingServer; quality: RenderingServer_ShadowQuality): void =
  expandMethodBind(className RenderingServer, "positional_soft_shadow_filter_set_quality", 3613045266)
  var `?param` = [getPtr quality]
  methodbind.ptrcall(self, addr `?param`[0])

proc directionalSoftShadowFilterSetQuality*(self: RenderingServer; quality: RenderingServer_ShadowQuality): void =
  expandMethodBind(className RenderingServer, "directional_soft_shadow_filter_set_quality", 3613045266)
  var `?param` = [getPtr quality]
  methodbind.ptrcall(self, addr `?param`[0])

proc directionalShadowAtlasSetSize*(self: RenderingServer; size: int32; is16Bits: bool): void =
  expandMethodBind(className RenderingServer, "directional_shadow_atlas_set_size", 300928843)
  var `?param` = [getPtr size, getPtr is16Bits]
  methodbind.ptrcall(self, addr `?param`[0])

proc reflectionProbeCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "reflection_probe_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc reflectionProbeSetUpdateMode*(self: RenderingServer; probe: Rid; mode: RenderingServer_ReflectionProbeUpdateMode): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_update_mode", 3853670147)
  var `?param` = [getPtr probe, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc reflectionProbeSetIntensity*(self: RenderingServer; probe: Rid; intensity: Float): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_intensity", 1794382983)
  var `?param` = [getPtr probe, getPtr intensity]
  methodbind.ptrcall(self, addr `?param`[0])

proc reflectionProbeSetAmbientMode*(self: RenderingServer; probe: Rid; mode: RenderingServer_ReflectionProbeAmbientMode): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_ambient_mode", 184163074)
  var `?param` = [getPtr probe, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc reflectionProbeSetAmbientColor*(self: RenderingServer; probe: Rid; color: Color): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_ambient_color", 2948539648)
  var `?param` = [getPtr probe, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc reflectionProbeSetAmbientEnergy*(self: RenderingServer; probe: Rid; energy: Float): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_ambient_energy", 1794382983)
  var `?param` = [getPtr probe, getPtr energy]
  methodbind.ptrcall(self, addr `?param`[0])

proc reflectionProbeSetMaxDistance*(self: RenderingServer; probe: Rid; distance: Float): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_max_distance", 1794382983)
  var `?param` = [getPtr probe, getPtr distance]
  methodbind.ptrcall(self, addr `?param`[0])

proc reflectionProbeSetSize*(self: RenderingServer; probe: Rid; size: Vector3): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_size", 3227306858)
  var `?param` = [getPtr probe, getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc reflectionProbeSetOriginOffset*(self: RenderingServer; probe: Rid; offset: Vector3): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_origin_offset", 3227306858)
  var `?param` = [getPtr probe, getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc reflectionProbeSetAsInterior*(self: RenderingServer; probe: Rid; enable: bool): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_as_interior", 1265174801)
  var `?param` = [getPtr probe, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc reflectionProbeSetEnableBoxProjection*(self: RenderingServer; probe: Rid; enable: bool): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_enable_box_projection", 1265174801)
  var `?param` = [getPtr probe, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc reflectionProbeSetEnableShadows*(self: RenderingServer; probe: Rid; enable: bool): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_enable_shadows", 1265174801)
  var `?param` = [getPtr probe, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc reflectionProbeSetCullMask*(self: RenderingServer; probe: Rid; layers: uint32): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_cull_mask", 3411492887)
  var `?param` = [getPtr probe, getPtr layers]
  methodbind.ptrcall(self, addr `?param`[0])

proc reflectionProbeSetReflectionMask*(self: RenderingServer; probe: Rid; layers: uint32): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_reflection_mask", 3411492887)
  var `?param` = [getPtr probe, getPtr layers]
  methodbind.ptrcall(self, addr `?param`[0])

proc reflectionProbeSetResolution*(self: RenderingServer; probe: Rid; resolution: int32): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_resolution", 3411492887)
  var `?param` = [getPtr probe, getPtr resolution]
  methodbind.ptrcall(self, addr `?param`[0])

proc reflectionProbeSetMeshLodThreshold*(self: RenderingServer; probe: Rid; pixels: Float): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_mesh_lod_threshold", 1794382983)
  var `?param` = [getPtr probe, getPtr pixels]
  methodbind.ptrcall(self, addr `?param`[0])

proc decalCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "decal_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc decalSetSize*(self: RenderingServer; decal: Rid; size: Vector3): void =
  expandMethodBind(className RenderingServer, "decal_set_size", 3227306858)
  var `?param` = [getPtr decal, getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc decalSetTexture*(self: RenderingServer; decal: Rid; `type`: RenderingServer_DecalTexture; texture: Rid): void =
  expandMethodBind(className RenderingServer, "decal_set_texture", 3953344054)
  var `?param` = [getPtr decal, getPtr `type`, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc decalSetEmissionEnergy*(self: RenderingServer; decal: Rid; energy: Float): void =
  expandMethodBind(className RenderingServer, "decal_set_emission_energy", 1794382983)
  var `?param` = [getPtr decal, getPtr energy]
  methodbind.ptrcall(self, addr `?param`[0])

proc decalSetAlbedoMix*(self: RenderingServer; decal: Rid; albedoMix: Float): void =
  expandMethodBind(className RenderingServer, "decal_set_albedo_mix", 1794382983)
  var `?param` = [getPtr decal, getPtr albedoMix]
  methodbind.ptrcall(self, addr `?param`[0])

proc decalSetModulate*(self: RenderingServer; decal: Rid; color: Color): void =
  expandMethodBind(className RenderingServer, "decal_set_modulate", 2948539648)
  var `?param` = [getPtr decal, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc decalSetCullMask*(self: RenderingServer; decal: Rid; mask: uint32): void =
  expandMethodBind(className RenderingServer, "decal_set_cull_mask", 3411492887)
  var `?param` = [getPtr decal, getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc decalSetDistanceFade*(self: RenderingServer; decal: Rid; enabled: bool; begin: Float; length: Float): void =
  expandMethodBind(className RenderingServer, "decal_set_distance_fade", 2972769666)
  var `?param` = [getPtr decal, getPtr enabled, getPtr begin, getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc decalSetFade*(self: RenderingServer; decal: Rid; above: Float; below: Float): void =
  expandMethodBind(className RenderingServer, "decal_set_fade", 2513314492)
  var `?param` = [getPtr decal, getPtr above, getPtr below]
  methodbind.ptrcall(self, addr `?param`[0])

proc decalSetNormalFade*(self: RenderingServer; decal: Rid; fade: Float): void =
  expandMethodBind(className RenderingServer, "decal_set_normal_fade", 1794382983)
  var `?param` = [getPtr decal, getPtr fade]
  methodbind.ptrcall(self, addr `?param`[0])

proc decalsSetFilter*(self: RenderingServer; filter: RenderingServer_DecalFilter): void =
  expandMethodBind(className RenderingServer, "decals_set_filter", 3519875702)
  var `?param` = [getPtr filter]
  methodbind.ptrcall(self, addr `?param`[0])

proc giSetUseHalfResolution*(self: RenderingServer; halfResolution: bool): void =
  expandMethodBind(className RenderingServer, "gi_set_use_half_resolution", 2586408642)
  var `?param` = [getPtr halfResolution]
  methodbind.ptrcall(self, addr `?param`[0])

proc voxelGiCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "voxel_gi_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc voxelGiAllocateData*(self: RenderingServer; voxelGi: Rid; toCellXform: Transform3D; aabb: Aabb; octreeSize: Vector3i; octreeCells: PackedByteArray; dataCells: PackedByteArray; distanceField: PackedByteArray; levelCounts: PackedInt32Array): void =
  expandMethodBind(className RenderingServer, "voxel_gi_allocate_data", 4108223027)
  var `?param` = [getPtr voxelGi, getPtr toCellXform, getPtr aabb, getPtr octreeSize, getPtr octreeCells, getPtr dataCells, getPtr distanceField, getPtr levelCounts]
  methodbind.ptrcall(self, addr `?param`[0])

proc voxelGiGetOctreeSize*(self: RenderingServer; voxelGi: Rid): Vector3i =
  expandMethodBind(className RenderingServer, "voxel_gi_get_octree_size", 2607699645)
  var `?param` = [getPtr voxelGi]
  var ret: encoded Vector3i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3i)

proc voxelGiGetOctreeCells*(self: RenderingServer; voxelGi: Rid): PackedByteArray =
  expandMethodBind(className RenderingServer, "voxel_gi_get_octree_cells", 3348040486)
  var `?param` = [getPtr voxelGi]
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc voxelGiGetDataCells*(self: RenderingServer; voxelGi: Rid): PackedByteArray =
  expandMethodBind(className RenderingServer, "voxel_gi_get_data_cells", 3348040486)
  var `?param` = [getPtr voxelGi]
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc voxelGiGetDistanceField*(self: RenderingServer; voxelGi: Rid): PackedByteArray =
  expandMethodBind(className RenderingServer, "voxel_gi_get_distance_field", 3348040486)
  var `?param` = [getPtr voxelGi]
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc voxelGiGetLevelCounts*(self: RenderingServer; voxelGi: Rid): PackedInt32Array =
  expandMethodBind(className RenderingServer, "voxel_gi_get_level_counts", 788230395)
  var `?param` = [getPtr voxelGi]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc voxelGiGetToCellXform*(self: RenderingServer; voxelGi: Rid): Transform3D =
  expandMethodBind(className RenderingServer, "voxel_gi_get_to_cell_xform", 1128465797)
  var `?param` = [getPtr voxelGi]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc voxelGiSetDynamicRange*(self: RenderingServer; voxelGi: Rid; range: Float): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_dynamic_range", 1794382983)
  var `?param` = [getPtr voxelGi, getPtr range]
  methodbind.ptrcall(self, addr `?param`[0])

proc voxelGiSetPropagation*(self: RenderingServer; voxelGi: Rid; amount: Float): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_propagation", 1794382983)
  var `?param` = [getPtr voxelGi, getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc voxelGiSetEnergy*(self: RenderingServer; voxelGi: Rid; energy: Float): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_energy", 1794382983)
  var `?param` = [getPtr voxelGi, getPtr energy]
  methodbind.ptrcall(self, addr `?param`[0])

proc voxelGiSetBakedExposureNormalization*(self: RenderingServer; voxelGi: Rid; bakedExposure: Float): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_baked_exposure_normalization", 1794382983)
  var `?param` = [getPtr voxelGi, getPtr bakedExposure]
  methodbind.ptrcall(self, addr `?param`[0])

proc voxelGiSetBias*(self: RenderingServer; voxelGi: Rid; bias: Float): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_bias", 1794382983)
  var `?param` = [getPtr voxelGi, getPtr bias]
  methodbind.ptrcall(self, addr `?param`[0])

proc voxelGiSetNormalBias*(self: RenderingServer; voxelGi: Rid; bias: Float): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_normal_bias", 1794382983)
  var `?param` = [getPtr voxelGi, getPtr bias]
  methodbind.ptrcall(self, addr `?param`[0])

proc voxelGiSetInterior*(self: RenderingServer; voxelGi: Rid; enable: bool): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_interior", 1265174801)
  var `?param` = [getPtr voxelGi, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc voxelGiSetUseTwoBounces*(self: RenderingServer; voxelGi: Rid; enable: bool): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_use_two_bounces", 1265174801)
  var `?param` = [getPtr voxelGi, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc voxelGiSetQuality*(self: RenderingServer; quality: RenderingServer_VoxelGiQuality): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_quality", 1538689978)
  var `?param` = [getPtr quality]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightmapCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "lightmap_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc lightmapSetTextures*(self: RenderingServer; lightmap: Rid; light: Rid; usesSh: bool): void =
  expandMethodBind(className RenderingServer, "lightmap_set_textures", 2646464759)
  var `?param` = [getPtr lightmap, getPtr light, getPtr usesSh]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightmapSetProbeBounds*(self: RenderingServer; lightmap: Rid; bounds: Aabb): void =
  expandMethodBind(className RenderingServer, "lightmap_set_probe_bounds", 3696536120)
  var `?param` = [getPtr lightmap, getPtr bounds]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightmapSetProbeInterior*(self: RenderingServer; lightmap: Rid; interior: bool): void =
  expandMethodBind(className RenderingServer, "lightmap_set_probe_interior", 1265174801)
  var `?param` = [getPtr lightmap, getPtr interior]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightmapSetProbeCaptureData*(self: RenderingServer; lightmap: Rid; points: PackedVector3Array; pointSh: PackedColorArray; tetrahedra: PackedInt32Array; bspTree: PackedInt32Array): void =
  expandMethodBind(className RenderingServer, "lightmap_set_probe_capture_data", 3217845880)
  var `?param` = [getPtr lightmap, getPtr points, getPtr pointSh, getPtr tetrahedra, getPtr bspTree]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightmapGetProbeCapturePoints*(self: RenderingServer; lightmap: Rid): PackedVector3Array =
  expandMethodBind(className RenderingServer, "lightmap_get_probe_capture_points", 808965560)
  var `?param` = [getPtr lightmap]
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc lightmapGetProbeCaptureSh*(self: RenderingServer; lightmap: Rid): PackedColorArray =
  expandMethodBind(className RenderingServer, "lightmap_get_probe_capture_sh", 1569415609)
  var `?param` = [getPtr lightmap]
  var ret: encoded PackedColorArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedColorArray)

proc lightmapGetProbeCaptureTetrahedra*(self: RenderingServer; lightmap: Rid): PackedInt32Array =
  expandMethodBind(className RenderingServer, "lightmap_get_probe_capture_tetrahedra", 788230395)
  var `?param` = [getPtr lightmap]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc lightmapGetProbeCaptureBspTree*(self: RenderingServer; lightmap: Rid): PackedInt32Array =
  expandMethodBind(className RenderingServer, "lightmap_get_probe_capture_bsp_tree", 788230395)
  var `?param` = [getPtr lightmap]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc lightmapSetBakedExposureNormalization*(self: RenderingServer; lightmap: Rid; bakedExposure: Float): void =
  expandMethodBind(className RenderingServer, "lightmap_set_baked_exposure_normalization", 1794382983)
  var `?param` = [getPtr lightmap, getPtr bakedExposure]
  methodbind.ptrcall(self, addr `?param`[0])

proc lightmapSetProbeCaptureUpdateSpeed*(self: RenderingServer; speed: Float): void =
  expandMethodBind(className RenderingServer, "lightmap_set_probe_capture_update_speed", 373806689)
  var `?param` = [getPtr speed]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "particles_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc particlesSetMode*(self: RenderingServer; particles: Rid; mode: RenderingServer_ParticlesMode): void =
  expandMethodBind(className RenderingServer, "particles_set_mode", 3492270028)
  var `?param` = [getPtr particles, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetEmitting*(self: RenderingServer; particles: Rid; emitting: bool): void =
  expandMethodBind(className RenderingServer, "particles_set_emitting", 1265174801)
  var `?param` = [getPtr particles, getPtr emitting]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesGetEmitting*(self: RenderingServer; particles: Rid): bool =
  expandMethodBind(className RenderingServer, "particles_get_emitting", 3521089500)
  var `?param` = [getPtr particles]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc particlesSetAmount*(self: RenderingServer; particles: Rid; amount: int32): void =
  expandMethodBind(className RenderingServer, "particles_set_amount", 3411492887)
  var `?param` = [getPtr particles, getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetAmountRatio*(self: RenderingServer; particles: Rid; ratio: Float): void =
  expandMethodBind(className RenderingServer, "particles_set_amount_ratio", 1794382983)
  var `?param` = [getPtr particles, getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetLifetime*(self: RenderingServer; particles: Rid; lifetime: float64): void =
  expandMethodBind(className RenderingServer, "particles_set_lifetime", 1794382983)
  var `?param` = [getPtr particles, getPtr lifetime]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetOneShot*(self: RenderingServer; particles: Rid; oneShot: bool): void =
  expandMethodBind(className RenderingServer, "particles_set_one_shot", 1265174801)
  var `?param` = [getPtr particles, getPtr oneShot]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetPreProcessTime*(self: RenderingServer; particles: Rid; time: float64): void =
  expandMethodBind(className RenderingServer, "particles_set_pre_process_time", 1794382983)
  var `?param` = [getPtr particles, getPtr time]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetExplosivenessRatio*(self: RenderingServer; particles: Rid; ratio: Float): void =
  expandMethodBind(className RenderingServer, "particles_set_explosiveness_ratio", 1794382983)
  var `?param` = [getPtr particles, getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetRandomnessRatio*(self: RenderingServer; particles: Rid; ratio: Float): void =
  expandMethodBind(className RenderingServer, "particles_set_randomness_ratio", 1794382983)
  var `?param` = [getPtr particles, getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetInterpToEnd*(self: RenderingServer; particles: Rid; factor: Float): void =
  expandMethodBind(className RenderingServer, "particles_set_interp_to_end", 1794382983)
  var `?param` = [getPtr particles, getPtr factor]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetEmitterVelocity*(self: RenderingServer; particles: Rid; velocity: Vector3): void =
  expandMethodBind(className RenderingServer, "particles_set_emitter_velocity", 3227306858)
  var `?param` = [getPtr particles, getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetCustomAabb*(self: RenderingServer; particles: Rid; aabb: Aabb): void =
  expandMethodBind(className RenderingServer, "particles_set_custom_aabb", 3696536120)
  var `?param` = [getPtr particles, getPtr aabb]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetSpeedScale*(self: RenderingServer; particles: Rid; scale: float64): void =
  expandMethodBind(className RenderingServer, "particles_set_speed_scale", 1794382983)
  var `?param` = [getPtr particles, getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetUseLocalCoordinates*(self: RenderingServer; particles: Rid; enable: bool): void =
  expandMethodBind(className RenderingServer, "particles_set_use_local_coordinates", 1265174801)
  var `?param` = [getPtr particles, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetProcessMaterial*(self: RenderingServer; particles: Rid; material: Rid): void =
  expandMethodBind(className RenderingServer, "particles_set_process_material", 395945892)
  var `?param` = [getPtr particles, getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetFixedFps*(self: RenderingServer; particles: Rid; fps: int32): void =
  expandMethodBind(className RenderingServer, "particles_set_fixed_fps", 3411492887)
  var `?param` = [getPtr particles, getPtr fps]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetInterpolate*(self: RenderingServer; particles: Rid; enable: bool): void =
  expandMethodBind(className RenderingServer, "particles_set_interpolate", 1265174801)
  var `?param` = [getPtr particles, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetFractionalDelta*(self: RenderingServer; particles: Rid; enable: bool): void =
  expandMethodBind(className RenderingServer, "particles_set_fractional_delta", 1265174801)
  var `?param` = [getPtr particles, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetCollisionBaseSize*(self: RenderingServer; particles: Rid; size: Float): void =
  expandMethodBind(className RenderingServer, "particles_set_collision_base_size", 1794382983)
  var `?param` = [getPtr particles, getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetTransformAlign*(self: RenderingServer; particles: Rid; align: RenderingServer_ParticlesTransformAlign): void =
  expandMethodBind(className RenderingServer, "particles_set_transform_align", 3264971368)
  var `?param` = [getPtr particles, getPtr align]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetTrails*(self: RenderingServer; particles: Rid; enable: bool; lengthSec: Float): void =
  expandMethodBind(className RenderingServer, "particles_set_trails", 2010054925)
  var `?param` = [getPtr particles, getPtr enable, getPtr lengthSec]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetTrailBindPoses*(self: RenderingServer; particles: Rid; bindPoses: TypedArray[Transform3D]): void =
  expandMethodBind(className RenderingServer, "particles_set_trail_bind_poses", 684822712)
  var `?param` = [getPtr particles, getPtr bindPoses]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesIsInactive*(self: RenderingServer; particles: Rid): bool =
  expandMethodBind(className RenderingServer, "particles_is_inactive", 3521089500)
  var `?param` = [getPtr particles]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc particlesRequestProcess*(self: RenderingServer; particles: Rid): void =
  expandMethodBind(className RenderingServer, "particles_request_process", 2722037293)
  var `?param` = [getPtr particles]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesRestart*(self: RenderingServer; particles: Rid): void =
  expandMethodBind(className RenderingServer, "particles_restart", 2722037293)
  var `?param` = [getPtr particles]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetSubemitter*(self: RenderingServer; particles: Rid; subemitterParticles: Rid): void =
  expandMethodBind(className RenderingServer, "particles_set_subemitter", 395945892)
  var `?param` = [getPtr particles, getPtr subemitterParticles]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesEmit*(self: RenderingServer; particles: Rid; transform: Transform3D; velocity: Vector3; color: Color; custom: Color; emitFlags: uint32): void =
  expandMethodBind(className RenderingServer, "particles_emit", 4043136117)
  var `?param` = [getPtr particles, getPtr transform, getPtr velocity, getPtr color, getPtr custom, getPtr emitFlags]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetDrawOrder*(self: RenderingServer; particles: Rid; order: RenderingServer_ParticlesDrawOrder): void =
  expandMethodBind(className RenderingServer, "particles_set_draw_order", 935028487)
  var `?param` = [getPtr particles, getPtr order]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetDrawPasses*(self: RenderingServer; particles: Rid; count: int32): void =
  expandMethodBind(className RenderingServer, "particles_set_draw_passes", 3411492887)
  var `?param` = [getPtr particles, getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesSetDrawPassMesh*(self: RenderingServer; particles: Rid; pass: int32; mesh: Rid): void =
  expandMethodBind(className RenderingServer, "particles_set_draw_pass_mesh", 2310537182)
  var `?param` = [getPtr particles, getPtr pass, getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesGetCurrentAabb*(self: RenderingServer; particles: Rid): Aabb =
  expandMethodBind(className RenderingServer, "particles_get_current_aabb", 3952830260)
  var `?param` = [getPtr particles]
  var ret: encoded Aabb
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Aabb)

proc particlesSetEmissionTransform*(self: RenderingServer; particles: Rid; transform: Transform3D): void =
  expandMethodBind(className RenderingServer, "particles_set_emission_transform", 3935195649)
  var `?param` = [getPtr particles, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesCollisionCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "particles_collision_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc particlesCollisionSetCollisionType*(self: RenderingServer; particlesCollision: Rid; `type`: RenderingServer_ParticlesCollisionType): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_collision_type", 1497044930)
  var `?param` = [getPtr particlesCollision, getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesCollisionSetCullMask*(self: RenderingServer; particlesCollision: Rid; mask: uint32): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_cull_mask", 3411492887)
  var `?param` = [getPtr particlesCollision, getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesCollisionSetSphereRadius*(self: RenderingServer; particlesCollision: Rid; radius: Float): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_sphere_radius", 1794382983)
  var `?param` = [getPtr particlesCollision, getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesCollisionSetBoxExtents*(self: RenderingServer; particlesCollision: Rid; extents: Vector3): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_box_extents", 3227306858)
  var `?param` = [getPtr particlesCollision, getPtr extents]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesCollisionSetAttractorStrength*(self: RenderingServer; particlesCollision: Rid; strength: Float): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_attractor_strength", 1794382983)
  var `?param` = [getPtr particlesCollision, getPtr strength]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesCollisionSetAttractorDirectionality*(self: RenderingServer; particlesCollision: Rid; amount: Float): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_attractor_directionality", 1794382983)
  var `?param` = [getPtr particlesCollision, getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesCollisionSetAttractorAttenuation*(self: RenderingServer; particlesCollision: Rid; curve: Float): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_attractor_attenuation", 1794382983)
  var `?param` = [getPtr particlesCollision, getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesCollisionSetFieldTexture*(self: RenderingServer; particlesCollision: Rid; texture: Rid): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_field_texture", 395945892)
  var `?param` = [getPtr particlesCollision, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesCollisionHeightFieldUpdate*(self: RenderingServer; particlesCollision: Rid): void =
  expandMethodBind(className RenderingServer, "particles_collision_height_field_update", 2722037293)
  var `?param` = [getPtr particlesCollision]
  methodbind.ptrcall(self, addr `?param`[0])

proc particlesCollisionSetHeightFieldResolution*(self: RenderingServer; particlesCollision: Rid; resolution: RenderingServer_ParticlesCollisionHeightfieldResolution): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_height_field_resolution", 962977297)
  var `?param` = [getPtr particlesCollision, getPtr resolution]
  methodbind.ptrcall(self, addr `?param`[0])

proc fogVolumeCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "fog_volume_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc fogVolumeSetShape*(self: RenderingServer; fogVolume: Rid; shape: RenderingServer_FogVolumeShape): void =
  expandMethodBind(className RenderingServer, "fog_volume_set_shape", 3818703106)
  var `?param` = [getPtr fogVolume, getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc fogVolumeSetSize*(self: RenderingServer; fogVolume: Rid; size: Vector3): void =
  expandMethodBind(className RenderingServer, "fog_volume_set_size", 3227306858)
  var `?param` = [getPtr fogVolume, getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc fogVolumeSetMaterial*(self: RenderingServer; fogVolume: Rid; material: Rid): void =
  expandMethodBind(className RenderingServer, "fog_volume_set_material", 395945892)
  var `?param` = [getPtr fogVolume, getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc visibilityNotifierCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "visibility_notifier_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc visibilityNotifierSetAabb*(self: RenderingServer; notifier: Rid; aabb: Aabb): void =
  expandMethodBind(className RenderingServer, "visibility_notifier_set_aabb", 3696536120)
  var `?param` = [getPtr notifier, getPtr aabb]
  methodbind.ptrcall(self, addr `?param`[0])

proc visibilityNotifierSetCallbacks*(self: RenderingServer; notifier: Rid; enterCallable: Callable; exitCallable: Callable): void =
  expandMethodBind(className RenderingServer, "visibility_notifier_set_callbacks", 2689735388)
  var `?param` = [getPtr notifier, getPtr enterCallable, getPtr exitCallable]
  methodbind.ptrcall(self, addr `?param`[0])

proc occluderCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "occluder_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc occluderSetMesh*(self: RenderingServer; occluder: Rid; vertices: PackedVector3Array; indices: PackedInt32Array): void =
  expandMethodBind(className RenderingServer, "occluder_set_mesh", 3854404263)
  var `?param` = [getPtr occluder, getPtr vertices, getPtr indices]
  methodbind.ptrcall(self, addr `?param`[0])

proc cameraCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "camera_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc cameraSetPerspective*(self: RenderingServer; camera: Rid; fovyDegrees: Float; zNear: Float; zFar: Float): void =
  expandMethodBind(className RenderingServer, "camera_set_perspective", 157498339)
  var `?param` = [getPtr camera, getPtr fovyDegrees, getPtr zNear, getPtr zFar]
  methodbind.ptrcall(self, addr `?param`[0])

proc cameraSetOrthogonal*(self: RenderingServer; camera: Rid; size: Float; zNear: Float; zFar: Float): void =
  expandMethodBind(className RenderingServer, "camera_set_orthogonal", 157498339)
  var `?param` = [getPtr camera, getPtr size, getPtr zNear, getPtr zFar]
  methodbind.ptrcall(self, addr `?param`[0])

proc cameraSetFrustum*(self: RenderingServer; camera: Rid; size: Float; offset: Vector2; zNear: Float; zFar: Float): void =
  expandMethodBind(className RenderingServer, "camera_set_frustum", 1889878953)
  var `?param` = [getPtr camera, getPtr size, getPtr offset, getPtr zNear, getPtr zFar]
  methodbind.ptrcall(self, addr `?param`[0])

proc cameraSetTransform*(self: RenderingServer; camera: Rid; transform: Transform3D): void =
  expandMethodBind(className RenderingServer, "camera_set_transform", 3935195649)
  var `?param` = [getPtr camera, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc cameraSetCullMask*(self: RenderingServer; camera: Rid; layers: uint32): void =
  expandMethodBind(className RenderingServer, "camera_set_cull_mask", 3411492887)
  var `?param` = [getPtr camera, getPtr layers]
  methodbind.ptrcall(self, addr `?param`[0])

proc cameraSetEnvironment*(self: RenderingServer; camera: Rid; env: Rid): void =
  expandMethodBind(className RenderingServer, "camera_set_environment", 395945892)
  var `?param` = [getPtr camera, getPtr env]
  methodbind.ptrcall(self, addr `?param`[0])

proc cameraSetCameraAttributes*(self: RenderingServer; camera: Rid; effects: Rid): void =
  expandMethodBind(className RenderingServer, "camera_set_camera_attributes", 395945892)
  var `?param` = [getPtr camera, getPtr effects]
  methodbind.ptrcall(self, addr `?param`[0])

proc cameraSetCompositor*(self: RenderingServer; camera: Rid; compositor: Rid): void =
  expandMethodBind(className RenderingServer, "camera_set_compositor", 395945892)
  var `?param` = [getPtr camera, getPtr compositor]
  methodbind.ptrcall(self, addr `?param`[0])

proc cameraSetUseVerticalAspect*(self: RenderingServer; camera: Rid; enable: bool): void =
  expandMethodBind(className RenderingServer, "camera_set_use_vertical_aspect", 1265174801)
  var `?param` = [getPtr camera, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "viewport_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc viewportSetUseXr*(self: RenderingServer; viewport: Rid; useXr: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_use_xr", 1265174801)
  var `?param` = [getPtr viewport, getPtr useXr]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetSize*(self: RenderingServer; viewport: Rid; width: int32; height: int32): void =
  expandMethodBind(className RenderingServer, "viewport_set_size", 4288446313)
  var `?param` = [getPtr viewport, getPtr width, getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetActive*(self: RenderingServer; viewport: Rid; active: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_active", 1265174801)
  var `?param` = [getPtr viewport, getPtr active]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetParentViewport*(self: RenderingServer; viewport: Rid; parentViewport: Rid): void =
  expandMethodBind(className RenderingServer, "viewport_set_parent_viewport", 395945892)
  var `?param` = [getPtr viewport, getPtr parentViewport]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportAttachToScreen*(self: RenderingServer; viewport: Rid; rect: Rect2 = rect2(0, 0, 0, 0); screen: int32 = 0): void =
  expandMethodBind(className RenderingServer, "viewport_attach_to_screen", 1062245816)
  var `?param` = [getPtr viewport, getPtr rect, getPtr screen]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetRenderDirectToScreen*(self: RenderingServer; viewport: Rid; enabled: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_render_direct_to_screen", 1265174801)
  var `?param` = [getPtr viewport, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetCanvasCullMask*(self: RenderingServer; viewport: Rid; canvasCullMask: uint32): void =
  expandMethodBind(className RenderingServer, "viewport_set_canvas_cull_mask", 3411492887)
  var `?param` = [getPtr viewport, getPtr canvasCullMask]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetScaling3DMode*(self: RenderingServer; viewport: Rid; scaling3DMode: RenderingServer_ViewportScaling3DMode): void =
  expandMethodBind(className RenderingServer, "viewport_set_scaling_3d_mode", 2386524376)
  var `?param` = [getPtr viewport, getPtr scaling3DMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetScaling3DScale*(self: RenderingServer; viewport: Rid; scale: Float): void =
  expandMethodBind(className RenderingServer, "viewport_set_scaling_3d_scale", 1794382983)
  var `?param` = [getPtr viewport, getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetFsrSharpness*(self: RenderingServer; viewport: Rid; sharpness: Float): void =
  expandMethodBind(className RenderingServer, "viewport_set_fsr_sharpness", 1794382983)
  var `?param` = [getPtr viewport, getPtr sharpness]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetTextureMipmapBias*(self: RenderingServer; viewport: Rid; mipmapBias: Float): void =
  expandMethodBind(className RenderingServer, "viewport_set_texture_mipmap_bias", 1794382983)
  var `?param` = [getPtr viewport, getPtr mipmapBias]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetUpdateMode*(self: RenderingServer; viewport: Rid; updateMode: RenderingServer_ViewportUpdateMode): void =
  expandMethodBind(className RenderingServer, "viewport_set_update_mode", 3161116010)
  var `?param` = [getPtr viewport, getPtr updateMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportGetUpdateMode*(self: RenderingServer; viewport: Rid): RenderingServer_ViewportUpdateMode =
  expandMethodBind(className RenderingServer, "viewport_get_update_mode", 3803901472)
  var `?param` = [getPtr viewport]
  var ret: encoded RenderingServer_ViewportUpdateMode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RenderingServer_ViewportUpdateMode)

proc viewportSetClearMode*(self: RenderingServer; viewport: Rid; clearMode: RenderingServer_ViewportClearMode): void =
  expandMethodBind(className RenderingServer, "viewport_set_clear_mode", 3628367896)
  var `?param` = [getPtr viewport, getPtr clearMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportGetRenderTarget*(self: RenderingServer; viewport: Rid): Rid =
  expandMethodBind(className RenderingServer, "viewport_get_render_target", 3814569979)
  var `?param` = [getPtr viewport]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc viewportGetTexture*(self: RenderingServer; viewport: Rid): Rid =
  expandMethodBind(className RenderingServer, "viewport_get_texture", 3814569979)
  var `?param` = [getPtr viewport]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc viewportSetDisable3D*(self: RenderingServer; viewport: Rid; disable: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_disable_3d", 1265174801)
  var `?param` = [getPtr viewport, getPtr disable]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetDisable2D*(self: RenderingServer; viewport: Rid; disable: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_disable_2d", 1265174801)
  var `?param` = [getPtr viewport, getPtr disable]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetEnvironmentMode*(self: RenderingServer; viewport: Rid; mode: RenderingServer_ViewportEnvironmentMode): void =
  expandMethodBind(className RenderingServer, "viewport_set_environment_mode", 2196892182)
  var `?param` = [getPtr viewport, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportAttachCamera*(self: RenderingServer; viewport: Rid; camera: Rid): void =
  expandMethodBind(className RenderingServer, "viewport_attach_camera", 395945892)
  var `?param` = [getPtr viewport, getPtr camera]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetScenario*(self: RenderingServer; viewport: Rid; scenario: Rid): void =
  expandMethodBind(className RenderingServer, "viewport_set_scenario", 395945892)
  var `?param` = [getPtr viewport, getPtr scenario]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportAttachCanvas*(self: RenderingServer; viewport: Rid; canvas: Rid): void =
  expandMethodBind(className RenderingServer, "viewport_attach_canvas", 395945892)
  var `?param` = [getPtr viewport, getPtr canvas]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportRemoveCanvas*(self: RenderingServer; viewport: Rid; canvas: Rid): void =
  expandMethodBind(className RenderingServer, "viewport_remove_canvas", 395945892)
  var `?param` = [getPtr viewport, getPtr canvas]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetSnap2DTransformsToPixel*(self: RenderingServer; viewport: Rid; enabled: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_snap_2d_transforms_to_pixel", 1265174801)
  var `?param` = [getPtr viewport, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetSnap2DVerticesToPixel*(self: RenderingServer; viewport: Rid; enabled: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_snap_2d_vertices_to_pixel", 1265174801)
  var `?param` = [getPtr viewport, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetDefaultCanvasItemTextureFilter*(self: RenderingServer; viewport: Rid; filter: RenderingServer_CanvasItemTextureFilter): void =
  expandMethodBind(className RenderingServer, "viewport_set_default_canvas_item_texture_filter", 1155129294)
  var `?param` = [getPtr viewport, getPtr filter]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetDefaultCanvasItemTextureRepeat*(self: RenderingServer; viewport: Rid; repeat: RenderingServer_CanvasItemTextureRepeat): void =
  expandMethodBind(className RenderingServer, "viewport_set_default_canvas_item_texture_repeat", 1652956681)
  var `?param` = [getPtr viewport, getPtr repeat]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetCanvasTransform*(self: RenderingServer; viewport: Rid; canvas: Rid; offset: Transform2D): void =
  expandMethodBind(className RenderingServer, "viewport_set_canvas_transform", 3608606053)
  var `?param` = [getPtr viewport, getPtr canvas, getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetCanvasStacking*(self: RenderingServer; viewport: Rid; canvas: Rid; layer: int32; sublayer: int32): void =
  expandMethodBind(className RenderingServer, "viewport_set_canvas_stacking", 3713930247)
  var `?param` = [getPtr viewport, getPtr canvas, getPtr layer, getPtr sublayer]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetTransparentBackground*(self: RenderingServer; viewport: Rid; enabled: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_transparent_background", 1265174801)
  var `?param` = [getPtr viewport, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetGlobalCanvasTransform*(self: RenderingServer; viewport: Rid; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "viewport_set_global_canvas_transform", 1246044741)
  var `?param` = [getPtr viewport, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetSdfOversizeAndScale*(self: RenderingServer; viewport: Rid; oversize: RenderingServer_ViewportSdfOversize; scale: RenderingServer_ViewportSdfScale): void =
  expandMethodBind(className RenderingServer, "viewport_set_sdf_oversize_and_scale", 1329198632)
  var `?param` = [getPtr viewport, getPtr oversize, getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetPositionalShadowAtlasSize*(self: RenderingServer; viewport: Rid; size: int32; use16Bits: bool = false): void =
  expandMethodBind(className RenderingServer, "viewport_set_positional_shadow_atlas_size", 1904426712)
  var `?param` = [getPtr viewport, getPtr size, getPtr use16Bits]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetPositionalShadowAtlasQuadrantSubdivision*(self: RenderingServer; viewport: Rid; quadrant: int32; subdivision: int32): void =
  expandMethodBind(className RenderingServer, "viewport_set_positional_shadow_atlas_quadrant_subdivision", 4288446313)
  var `?param` = [getPtr viewport, getPtr quadrant, getPtr subdivision]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetMsaa3D*(self: RenderingServer; viewport: Rid; msaa: RenderingServer_ViewportMsaa): void =
  expandMethodBind(className RenderingServer, "viewport_set_msaa_3d", 3764433340)
  var `?param` = [getPtr viewport, getPtr msaa]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetMsaa2D*(self: RenderingServer; viewport: Rid; msaa: RenderingServer_ViewportMsaa): void =
  expandMethodBind(className RenderingServer, "viewport_set_msaa_2d", 3764433340)
  var `?param` = [getPtr viewport, getPtr msaa]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetUseHdr2D*(self: RenderingServer; viewport: Rid; enabled: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_use_hdr_2d", 1265174801)
  var `?param` = [getPtr viewport, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetScreenSpaceAa*(self: RenderingServer; viewport: Rid; mode: RenderingServer_ViewportScreenSpaceAa): void =
  expandMethodBind(className RenderingServer, "viewport_set_screen_space_aa", 1447279591)
  var `?param` = [getPtr viewport, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetUseTaa*(self: RenderingServer; viewport: Rid; enable: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_use_taa", 1265174801)
  var `?param` = [getPtr viewport, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetUseDebanding*(self: RenderingServer; viewport: Rid; enable: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_use_debanding", 1265174801)
  var `?param` = [getPtr viewport, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetUseOcclusionCulling*(self: RenderingServer; viewport: Rid; enable: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_use_occlusion_culling", 1265174801)
  var `?param` = [getPtr viewport, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetOcclusionRaysPerThread*(self: RenderingServer; raysPerThread: int32): void =
  expandMethodBind(className RenderingServer, "viewport_set_occlusion_rays_per_thread", 1286410249)
  var `?param` = [getPtr raysPerThread]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetOcclusionCullingBuildQuality*(self: RenderingServer; quality: RenderingServer_ViewportOcclusionCullingBuildQuality): void =
  expandMethodBind(className RenderingServer, "viewport_set_occlusion_culling_build_quality", 2069725696)
  var `?param` = [getPtr quality]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportGetRenderInfo*(self: RenderingServer; viewport: Rid; `type`: RenderingServer_ViewportRenderInfoType; info: RenderingServer_ViewportRenderInfo): int32 =
  expandMethodBind(className RenderingServer, "viewport_get_render_info", 2041262392)
  var `?param` = [getPtr viewport, getPtr `type`, getPtr info]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc viewportSetDebugDraw*(self: RenderingServer; viewport: Rid; draw: RenderingServer_ViewportDebugDraw): void =
  expandMethodBind(className RenderingServer, "viewport_set_debug_draw", 2089420930)
  var `?param` = [getPtr viewport, getPtr draw]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetMeasureRenderTime*(self: RenderingServer; viewport: Rid; enable: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_measure_render_time", 1265174801)
  var `?param` = [getPtr viewport, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportGetMeasuredRenderTimeCpu*(self: RenderingServer; viewport: Rid): float64 =
  expandMethodBind(className RenderingServer, "viewport_get_measured_render_time_cpu", 866169185)
  var `?param` = [getPtr viewport]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc viewportGetMeasuredRenderTimeGpu*(self: RenderingServer; viewport: Rid): float64 =
  expandMethodBind(className RenderingServer, "viewport_get_measured_render_time_gpu", 866169185)
  var `?param` = [getPtr viewport]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc viewportSetVrsMode*(self: RenderingServer; viewport: Rid; mode: RenderingServer_ViewportVrsMode): void =
  expandMethodBind(className RenderingServer, "viewport_set_vrs_mode", 398809874)
  var `?param` = [getPtr viewport, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetVrsUpdateMode*(self: RenderingServer; viewport: Rid; mode: RenderingServer_ViewportVrsUpdateMode): void =
  expandMethodBind(className RenderingServer, "viewport_set_vrs_update_mode", 2696154815)
  var `?param` = [getPtr viewport, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc viewportSetVrsTexture*(self: RenderingServer; viewport: Rid; texture: Rid): void =
  expandMethodBind(className RenderingServer, "viewport_set_vrs_texture", 395945892)
  var `?param` = [getPtr viewport, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc skyCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "sky_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc skySetRadianceSize*(self: RenderingServer; sky: Rid; radianceSize: int32): void =
  expandMethodBind(className RenderingServer, "sky_set_radiance_size", 3411492887)
  var `?param` = [getPtr sky, getPtr radianceSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc skySetMode*(self: RenderingServer; sky: Rid; mode: RenderingServer_SkyMode): void =
  expandMethodBind(className RenderingServer, "sky_set_mode", 3279019937)
  var `?param` = [getPtr sky, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc skySetMaterial*(self: RenderingServer; sky: Rid; material: Rid): void =
  expandMethodBind(className RenderingServer, "sky_set_material", 395945892)
  var `?param` = [getPtr sky, getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc skyBakePanorama*(self: RenderingServer; sky: Rid; energy: Float; bakeIrradiance: bool; size: Vector2i): gdref Image =
  expandMethodBind(className RenderingServer, "sky_bake_panorama", 3875285818)
  var `?param` = [getPtr sky, getPtr energy, getPtr bakeIrradiance, getPtr size]
  var ret: encoded gdref Image
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Image)

proc compositorEffectCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "compositor_effect_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc compositorEffectSetEnabled*(self: RenderingServer; effect: Rid; enabled: bool): void =
  expandMethodBind(className RenderingServer, "compositor_effect_set_enabled", 1265174801)
  var `?param` = [getPtr effect, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc compositorEffectSetCallback*(self: RenderingServer; effect: Rid; callbackType: RenderingServer_CompositorEffectCallbackType; callback: Callable): void =
  expandMethodBind(className RenderingServer, "compositor_effect_set_callback", 487412485)
  var `?param` = [getPtr effect, getPtr callbackType, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc compositorEffectSetFlag*(self: RenderingServer; effect: Rid; flag: RenderingServer_CompositorEffectFlags; set: bool): void =
  expandMethodBind(className RenderingServer, "compositor_effect_set_flag", 3659527075)
  var `?param` = [getPtr effect, getPtr flag, getPtr set]
  methodbind.ptrcall(self, addr `?param`[0])

proc compositorCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "compositor_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc compositorSetCompositorEffects*(self: RenderingServer; compositor: Rid; effects: TypedArray[Rid]): void =
  expandMethodBind(className RenderingServer, "compositor_set_compositor_effects", 684822712)
  var `?param` = [getPtr compositor, getPtr effects]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "environment_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc environmentSetBackground*(self: RenderingServer; env: Rid; bg: RenderingServer_EnvironmentBg): void =
  expandMethodBind(className RenderingServer, "environment_set_background", 3937328877)
  var `?param` = [getPtr env, getPtr bg]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetSky*(self: RenderingServer; env: Rid; sky: Rid): void =
  expandMethodBind(className RenderingServer, "environment_set_sky", 395945892)
  var `?param` = [getPtr env, getPtr sky]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetSkyCustomFov*(self: RenderingServer; env: Rid; scale: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_sky_custom_fov", 1794382983)
  var `?param` = [getPtr env, getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetSkyOrientation*(self: RenderingServer; env: Rid; orientation: Basis): void =
  expandMethodBind(className RenderingServer, "environment_set_sky_orientation", 1735850857)
  var `?param` = [getPtr env, getPtr orientation]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetBgColor*(self: RenderingServer; env: Rid; color: Color): void =
  expandMethodBind(className RenderingServer, "environment_set_bg_color", 2948539648)
  var `?param` = [getPtr env, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetBgEnergy*(self: RenderingServer; env: Rid; multiplier: Float; exposureValue: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_bg_energy", 2513314492)
  var `?param` = [getPtr env, getPtr multiplier, getPtr exposureValue]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetCanvasMaxLayer*(self: RenderingServer; env: Rid; maxLayer: int32): void =
  expandMethodBind(className RenderingServer, "environment_set_canvas_max_layer", 3411492887)
  var `?param` = [getPtr env, getPtr maxLayer]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetAmbientLight*(self: RenderingServer; env: Rid; color: Color; ambient: RenderingServer_EnvironmentAmbientSource = envAmbientSourceBg; energy: Float = 1.0; skyContibution: Float = 0.0; reflectionSource: RenderingServer_EnvironmentReflectionSource = envReflectionSourceBg): void =
  expandMethodBind(className RenderingServer, "environment_set_ambient_light", 1214961493)
  var `?param` = [getPtr env, getPtr color, getPtr ambient, getPtr energy, getPtr skyContibution, getPtr reflectionSource]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetGlow*(self: RenderingServer; env: Rid; enable: bool; levels: PackedFloat32Array; intensity: Float; strength: Float; mix: Float; bloomThreshold: Float; blendMode: RenderingServer_EnvironmentGlowBlendMode; hdrBleedThreshold: Float; hdrBleedScale: Float; hdrLuminanceCap: Float; glowMapStrength: Float; glowMap: Rid): void =
  expandMethodBind(className RenderingServer, "environment_set_glow", 2421724940)
  var `?param` = [getPtr env, getPtr enable, getPtr levels, getPtr intensity, getPtr strength, getPtr mix, getPtr bloomThreshold, getPtr blendMode, getPtr hdrBleedThreshold, getPtr hdrBleedScale, getPtr hdrLuminanceCap, getPtr glowMapStrength, getPtr glowMap]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetTonemap*(self: RenderingServer; env: Rid; toneMapper: RenderingServer_EnvironmentToneMapper; exposure: Float; white: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_tonemap", 2914312638)
  var `?param` = [getPtr env, getPtr toneMapper, getPtr exposure, getPtr white]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetAdjustment*(self: RenderingServer; env: Rid; enable: bool; brightness: Float; contrast: Float; saturation: Float; use1DColorCorrection: bool; colorCorrection: Rid): void =
  expandMethodBind(className RenderingServer, "environment_set_adjustment", 876799838)
  var `?param` = [getPtr env, getPtr enable, getPtr brightness, getPtr contrast, getPtr saturation, getPtr use1DColorCorrection, getPtr colorCorrection]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetSsr*(self: RenderingServer; env: Rid; enable: bool; maxSteps: int32; fadeIn: Float; fadeOut: Float; depthTolerance: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_ssr", 3607294374)
  var `?param` = [getPtr env, getPtr enable, getPtr maxSteps, getPtr fadeIn, getPtr fadeOut, getPtr depthTolerance]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetSsao*(self: RenderingServer; env: Rid; enable: bool; radius: Float; intensity: Float; power: Float; detail: Float; horizon: Float; sharpness: Float; lightAffect: Float; aoChannelAffect: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_ssao", 3994732740)
  var `?param` = [getPtr env, getPtr enable, getPtr radius, getPtr intensity, getPtr power, getPtr detail, getPtr horizon, getPtr sharpness, getPtr lightAffect, getPtr aoChannelAffect]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetFog*(self: RenderingServer; env: Rid; enable: bool; lightColor: Color; lightEnergy: Float; sunScatter: Float; density: Float; height: Float; heightDensity: Float; aerialPerspective: Float; skyAffect: Float; fogMode: RenderingServer_EnvironmentFogMode = envFogModeExponential): void =
  expandMethodBind(className RenderingServer, "environment_set_fog", 105051629)
  var `?param` = [getPtr env, getPtr enable, getPtr lightColor, getPtr lightEnergy, getPtr sunScatter, getPtr density, getPtr height, getPtr heightDensity, getPtr aerialPerspective, getPtr skyAffect, getPtr fogMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetSdfgi*(self: RenderingServer; env: Rid; enable: bool; cascades: int32; minCellSize: Float; yScale: RenderingServer_EnvironmentSdfgiyScale; useOcclusion: bool; bounceFeedback: Float; readSky: bool; energy: Float; normalBias: Float; probeBias: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_sdfgi", 3519144388)
  var `?param` = [getPtr env, getPtr enable, getPtr cascades, getPtr minCellSize, getPtr yScale, getPtr useOcclusion, getPtr bounceFeedback, getPtr readSky, getPtr energy, getPtr normalBias, getPtr probeBias]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetVolumetricFog*(self: RenderingServer; env: Rid; enable: bool; density: Float; albedo: Color; emission: Color; emissionEnergy: Float; anisotropy: Float; length: Float; pDetailSpread: Float; giInject: Float; temporalReprojection: bool; temporalReprojectionAmount: Float; ambientInject: Float; skyAffect: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_volumetric_fog", 1553633833)
  var `?param` = [getPtr env, getPtr enable, getPtr density, getPtr albedo, getPtr emission, getPtr emissionEnergy, getPtr anisotropy, getPtr length, getPtr pDetailSpread, getPtr giInject, getPtr temporalReprojection, getPtr temporalReprojectionAmount, getPtr ambientInject, getPtr skyAffect]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentGlowSetUseBicubicUpscale*(self: RenderingServer; enable: bool): void =
  expandMethodBind(className RenderingServer, "environment_glow_set_use_bicubic_upscale", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetSsrRoughnessQuality*(self: RenderingServer; quality: RenderingServer_EnvironmentSsrRoughnessQuality): void =
  expandMethodBind(className RenderingServer, "environment_set_ssr_roughness_quality", 1190026788)
  var `?param` = [getPtr quality]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetSsaoQuality*(self: RenderingServer; quality: RenderingServer_EnvironmentSsaoQuality; halfSize: bool; adaptiveTarget: Float; blurPasses: int32; fadeoutFrom: Float; fadeoutTo: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_ssao_quality", 189753569)
  var `?param` = [getPtr quality, getPtr halfSize, getPtr adaptiveTarget, getPtr blurPasses, getPtr fadeoutFrom, getPtr fadeoutTo]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetSsilQuality*(self: RenderingServer; quality: RenderingServer_EnvironmentSsilQuality; halfSize: bool; adaptiveTarget: Float; blurPasses: int32; fadeoutFrom: Float; fadeoutTo: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_ssil_quality", 1713836683)
  var `?param` = [getPtr quality, getPtr halfSize, getPtr adaptiveTarget, getPtr blurPasses, getPtr fadeoutFrom, getPtr fadeoutTo]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetSdfgiRayCount*(self: RenderingServer; rayCount: RenderingServer_EnvironmentSdfgiRayCount): void =
  expandMethodBind(className RenderingServer, "environment_set_sdfgi_ray_count", 340137951)
  var `?param` = [getPtr rayCount]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetSdfgiFramesToConverge*(self: RenderingServer; frames: RenderingServer_EnvironmentSdfgiFramesToConverge): void =
  expandMethodBind(className RenderingServer, "environment_set_sdfgi_frames_to_converge", 2182444374)
  var `?param` = [getPtr frames]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetSdfgiFramesToUpdateLight*(self: RenderingServer; frames: RenderingServer_EnvironmentSdfgiFramesToUpdateLight): void =
  expandMethodBind(className RenderingServer, "environment_set_sdfgi_frames_to_update_light", 1251144068)
  var `?param` = [getPtr frames]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetVolumetricFogVolumeSize*(self: RenderingServer; size: int32; depth: int32): void =
  expandMethodBind(className RenderingServer, "environment_set_volumetric_fog_volume_size", 3937882851)
  var `?param` = [getPtr size, getPtr depth]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentSetVolumetricFogFilterActive*(self: RenderingServer; active: bool): void =
  expandMethodBind(className RenderingServer, "environment_set_volumetric_fog_filter_active", 2586408642)
  var `?param` = [getPtr active]
  methodbind.ptrcall(self, addr `?param`[0])

proc environmentBakePanorama*(self: RenderingServer; environment: Rid; bakeIrradiance: bool; size: Vector2i): gdref Image =
  expandMethodBind(className RenderingServer, "environment_bake_panorama", 2452908646)
  var `?param` = [getPtr environment, getPtr bakeIrradiance, getPtr size]
  var ret: encoded gdref Image
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Image)

proc screenSpaceRoughnessLimiterSetActive*(self: RenderingServer; enable: bool; amount: Float; limit: Float): void =
  expandMethodBind(className RenderingServer, "screen_space_roughness_limiter_set_active", 916716790)
  var `?param` = [getPtr enable, getPtr amount, getPtr limit]
  methodbind.ptrcall(self, addr `?param`[0])

proc subSurfaceScatteringSetQuality*(self: RenderingServer; quality: RenderingServer_SubSurfaceScatteringQuality): void =
  expandMethodBind(className RenderingServer, "sub_surface_scattering_set_quality", 64571803)
  var `?param` = [getPtr quality]
  methodbind.ptrcall(self, addr `?param`[0])

proc subSurfaceScatteringSetScale*(self: RenderingServer; scale: Float; depthScale: Float): void =
  expandMethodBind(className RenderingServer, "sub_surface_scattering_set_scale", 1017552074)
  var `?param` = [getPtr scale, getPtr depthScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc cameraAttributesCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "camera_attributes_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc cameraAttributesSetDofBlurQuality*(self: RenderingServer; quality: RenderingServer_DofBlurQuality; useJitter: bool): void =
  expandMethodBind(className RenderingServer, "camera_attributes_set_dof_blur_quality", 2220136795)
  var `?param` = [getPtr quality, getPtr useJitter]
  methodbind.ptrcall(self, addr `?param`[0])

proc cameraAttributesSetDofBlurBokehShape*(self: RenderingServer; shape: RenderingServer_DofBokehShape): void =
  expandMethodBind(className RenderingServer, "camera_attributes_set_dof_blur_bokeh_shape", 1205058394)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc cameraAttributesSetDofBlur*(self: RenderingServer; cameraAttributes: Rid; farEnable: bool; farDistance: Float; farTransition: Float; nearEnable: bool; nearDistance: Float; nearTransition: Float; amount: Float): void =
  expandMethodBind(className RenderingServer, "camera_attributes_set_dof_blur", 316272616)
  var `?param` = [getPtr cameraAttributes, getPtr farEnable, getPtr farDistance, getPtr farTransition, getPtr nearEnable, getPtr nearDistance, getPtr nearTransition, getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc cameraAttributesSetExposure*(self: RenderingServer; cameraAttributes: Rid; multiplier: Float; normalization: Float): void =
  expandMethodBind(className RenderingServer, "camera_attributes_set_exposure", 2513314492)
  var `?param` = [getPtr cameraAttributes, getPtr multiplier, getPtr normalization]
  methodbind.ptrcall(self, addr `?param`[0])

proc cameraAttributesSetAutoExposure*(self: RenderingServer; cameraAttributes: Rid; enable: bool; minSensitivity: Float; maxSensitivity: Float; speed: Float; scale: Float): void =
  expandMethodBind(className RenderingServer, "camera_attributes_set_auto_exposure", 4266986332)
  var `?param` = [getPtr cameraAttributes, getPtr enable, getPtr minSensitivity, getPtr maxSensitivity, getPtr speed, getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc scenarioCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "scenario_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc scenarioSetEnvironment*(self: RenderingServer; scenario: Rid; environment: Rid): void =
  expandMethodBind(className RenderingServer, "scenario_set_environment", 395945892)
  var `?param` = [getPtr scenario, getPtr environment]
  methodbind.ptrcall(self, addr `?param`[0])

proc scenarioSetFallbackEnvironment*(self: RenderingServer; scenario: Rid; environment: Rid): void =
  expandMethodBind(className RenderingServer, "scenario_set_fallback_environment", 395945892)
  var `?param` = [getPtr scenario, getPtr environment]
  methodbind.ptrcall(self, addr `?param`[0])

proc scenarioSetCameraAttributes*(self: RenderingServer; scenario: Rid; effects: Rid): void =
  expandMethodBind(className RenderingServer, "scenario_set_camera_attributes", 395945892)
  var `?param` = [getPtr scenario, getPtr effects]
  methodbind.ptrcall(self, addr `?param`[0])

proc scenarioSetCompositor*(self: RenderingServer; scenario: Rid; compositor: Rid): void =
  expandMethodBind(className RenderingServer, "scenario_set_compositor", 395945892)
  var `?param` = [getPtr scenario, getPtr compositor]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceCreate2*(self: RenderingServer; base: Rid; scenario: Rid): Rid =
  expandMethodBind(className RenderingServer, "instance_create2", 746547085)
  var `?param` = [getPtr base, getPtr scenario]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc instanceCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "instance_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc instanceSetBase*(self: RenderingServer; instance: Rid; base: Rid): void =
  expandMethodBind(className RenderingServer, "instance_set_base", 395945892)
  var `?param` = [getPtr instance, getPtr base]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceSetScenario*(self: RenderingServer; instance: Rid; scenario: Rid): void =
  expandMethodBind(className RenderingServer, "instance_set_scenario", 395945892)
  var `?param` = [getPtr instance, getPtr scenario]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceSetLayerMask*(self: RenderingServer; instance: Rid; mask: uint32): void =
  expandMethodBind(className RenderingServer, "instance_set_layer_mask", 3411492887)
  var `?param` = [getPtr instance, getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceSetPivotData*(self: RenderingServer; instance: Rid; sortingOffset: Float; useAabbCenter: bool): void =
  expandMethodBind(className RenderingServer, "instance_set_pivot_data", 1280615259)
  var `?param` = [getPtr instance, getPtr sortingOffset, getPtr useAabbCenter]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceSetTransform*(self: RenderingServer; instance: Rid; transform: Transform3D): void =
  expandMethodBind(className RenderingServer, "instance_set_transform", 3935195649)
  var `?param` = [getPtr instance, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceAttachObjectInstanceId*(self: RenderingServer; instance: Rid; id: uint64): void =
  expandMethodBind(className RenderingServer, "instance_attach_object_instance_id", 3411492887)
  var `?param` = [getPtr instance, getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceSetBlendShapeWeight*(self: RenderingServer; instance: Rid; shape: int32; weight: Float): void =
  expandMethodBind(className RenderingServer, "instance_set_blend_shape_weight", 1892459533)
  var `?param` = [getPtr instance, getPtr shape, getPtr weight]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceSetSurfaceOverrideMaterial*(self: RenderingServer; instance: Rid; surface: int32; material: Rid): void =
  expandMethodBind(className RenderingServer, "instance_set_surface_override_material", 2310537182)
  var `?param` = [getPtr instance, getPtr surface, getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceSetVisible*(self: RenderingServer; instance: Rid; visible: bool): void =
  expandMethodBind(className RenderingServer, "instance_set_visible", 1265174801)
  var `?param` = [getPtr instance, getPtr visible]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceGeometrySetTransparency*(self: RenderingServer; instance: Rid; transparency: Float): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_transparency", 1794382983)
  var `?param` = [getPtr instance, getPtr transparency]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceSetCustomAabb*(self: RenderingServer; instance: Rid; aabb: Aabb): void =
  expandMethodBind(className RenderingServer, "instance_set_custom_aabb", 3696536120)
  var `?param` = [getPtr instance, getPtr aabb]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceAttachSkeleton*(self: RenderingServer; instance: Rid; skeleton: Rid): void =
  expandMethodBind(className RenderingServer, "instance_attach_skeleton", 395945892)
  var `?param` = [getPtr instance, getPtr skeleton]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceSetExtraVisibilityMargin*(self: RenderingServer; instance: Rid; margin: Float): void =
  expandMethodBind(className RenderingServer, "instance_set_extra_visibility_margin", 1794382983)
  var `?param` = [getPtr instance, getPtr margin]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceSetVisibilityParent*(self: RenderingServer; instance: Rid; parent: Rid): void =
  expandMethodBind(className RenderingServer, "instance_set_visibility_parent", 395945892)
  var `?param` = [getPtr instance, getPtr parent]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceSetIgnoreCulling*(self: RenderingServer; instance: Rid; enabled: bool): void =
  expandMethodBind(className RenderingServer, "instance_set_ignore_culling", 1265174801)
  var `?param` = [getPtr instance, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceGeometrySetFlag*(self: RenderingServer; instance: Rid; flag: RenderingServer_InstanceFlags; enabled: bool): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_flag", 1014989537)
  var `?param` = [getPtr instance, getPtr flag, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceGeometrySetCastShadowsSetting*(self: RenderingServer; instance: Rid; shadowCastingSetting: RenderingServer_ShadowCastingSetting): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_cast_shadows_setting", 3768836020)
  var `?param` = [getPtr instance, getPtr shadowCastingSetting]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceGeometrySetMaterialOverride*(self: RenderingServer; instance: Rid; material: Rid): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_material_override", 395945892)
  var `?param` = [getPtr instance, getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceGeometrySetMaterialOverlay*(self: RenderingServer; instance: Rid; material: Rid): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_material_overlay", 395945892)
  var `?param` = [getPtr instance, getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceGeometrySetVisibilityRange*(self: RenderingServer; instance: Rid; min: Float; max: Float; minMargin: Float; maxMargin: Float; fadeMode: RenderingServer_VisibilityRangeFadeMode): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_visibility_range", 4263925858)
  var `?param` = [getPtr instance, getPtr min, getPtr max, getPtr minMargin, getPtr maxMargin, getPtr fadeMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceGeometrySetLightmap*(self: RenderingServer; instance: Rid; lightmap: Rid; lightmapUvScale: Rect2; lightmapSlice: int32): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_lightmap", 536974962)
  var `?param` = [getPtr instance, getPtr lightmap, getPtr lightmapUvScale, getPtr lightmapSlice]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceGeometrySetLodBias*(self: RenderingServer; instance: Rid; lodBias: Float): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_lod_bias", 1794382983)
  var `?param` = [getPtr instance, getPtr lodBias]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceGeometrySetShaderParameter*(self: RenderingServer; instance: Rid; parameter: StringName; value: Variant): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_shader_parameter", 3477296213)
  var `?param` = [getPtr instance, getPtr parameter, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc instanceGeometryGetShaderParameter*(self: RenderingServer; instance: Rid; parameter: StringName): Variant =
  expandMethodBind(className RenderingServer, "instance_geometry_get_shader_parameter", 2621281810)
  var `?param` = [getPtr instance, getPtr parameter]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc instanceGeometryGetShaderParameterDefaultValue*(self: RenderingServer; instance: Rid; parameter: StringName): Variant =
  expandMethodBind(className RenderingServer, "instance_geometry_get_shader_parameter_default_value", 2621281810)
  var `?param` = [getPtr instance, getPtr parameter]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc instanceGeometryGetShaderParameterList*(self: RenderingServer; instance: Rid): TypedArray[Dictionary] =
  expandMethodBind(className RenderingServer, "instance_geometry_get_shader_parameter_list", 2684255073)
  var `?param` = [getPtr instance]
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc instancesCullAabb*(self: RenderingServer; aabb: Aabb; scenario: Rid = RID()): PackedInt64Array =
  expandMethodBind(className RenderingServer, "instances_cull_aabb", 2570105777)
  var `?param` = [getPtr aabb, getPtr scenario]
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc instancesCullRay*(self: RenderingServer; `from`: Vector3; to: Vector3; scenario: Rid = RID()): PackedInt64Array =
  expandMethodBind(className RenderingServer, "instances_cull_ray", 2208759584)
  var `?param` = [getPtr `from`, getPtr to, getPtr scenario]
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc instancesCullConvex*(self: RenderingServer; convex: TypedArray[Plane]; scenario: Rid = RID()): PackedInt64Array =
  expandMethodBind(className RenderingServer, "instances_cull_convex", 2488539944)
  var `?param` = [getPtr convex, getPtr scenario]
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc bakeRenderUv2*(self: RenderingServer; base: Rid; materialOverrides: TypedArray[Rid]; imageSize: Vector2i): TypedArray[gdref Image] =
  expandMethodBind(className RenderingServer, "bake_render_uv2", 1904608558)
  var `?param` = [getPtr base, getPtr materialOverrides, getPtr imageSize]
  var ret: encoded TypedArray[gdref Image]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[gdref Image])

proc canvasCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "canvas_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc canvasSetItemMirroring*(self: RenderingServer; canvas: Rid; item: Rid; mirroring: Vector2): void =
  expandMethodBind(className RenderingServer, "canvas_set_item_mirroring", 2343975398)
  var `?param` = [getPtr canvas, getPtr item, getPtr mirroring]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasSetItemRepeat*(self: RenderingServer; item: Rid; repeatSize: Vector2; repeatTimes: int32): void =
  expandMethodBind(className RenderingServer, "canvas_set_item_repeat", 1739512717)
  var `?param` = [getPtr item, getPtr repeatSize, getPtr repeatTimes]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasSetModulate*(self: RenderingServer; canvas: Rid; color: Color): void =
  expandMethodBind(className RenderingServer, "canvas_set_modulate", 2948539648)
  var `?param` = [getPtr canvas, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasSetDisableScale*(self: RenderingServer; disable: bool): void =
  expandMethodBind(className RenderingServer, "canvas_set_disable_scale", 2586408642)
  var `?param` = [getPtr disable]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasTextureCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "canvas_texture_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc canvasTextureSetChannel*(self: RenderingServer; canvasTexture: Rid; channel: RenderingServer_CanvasTextureChannel; texture: Rid): void =
  expandMethodBind(className RenderingServer, "canvas_texture_set_channel", 3822119138)
  var `?param` = [getPtr canvasTexture, getPtr channel, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasTextureSetShadingParameters*(self: RenderingServer; canvasTexture: Rid; baseColor: Color; shininess: Float): void =
  expandMethodBind(className RenderingServer, "canvas_texture_set_shading_parameters", 2124967469)
  var `?param` = [getPtr canvasTexture, getPtr baseColor, getPtr shininess]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasTextureSetTextureFilter*(self: RenderingServer; canvasTexture: Rid; filter: RenderingServer_CanvasItemTextureFilter): void =
  expandMethodBind(className RenderingServer, "canvas_texture_set_texture_filter", 1155129294)
  var `?param` = [getPtr canvasTexture, getPtr filter]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasTextureSetTextureRepeat*(self: RenderingServer; canvasTexture: Rid; repeat: RenderingServer_CanvasItemTextureRepeat): void =
  expandMethodBind(className RenderingServer, "canvas_texture_set_texture_repeat", 1652956681)
  var `?param` = [getPtr canvasTexture, getPtr repeat]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "canvas_item_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc canvasItemSetParent*(self: RenderingServer; item: Rid; parent: Rid): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_parent", 395945892)
  var `?param` = [getPtr item, getPtr parent]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetDefaultTextureFilter*(self: RenderingServer; item: Rid; filter: RenderingServer_CanvasItemTextureFilter): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_default_texture_filter", 1155129294)
  var `?param` = [getPtr item, getPtr filter]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetDefaultTextureRepeat*(self: RenderingServer; item: Rid; repeat: RenderingServer_CanvasItemTextureRepeat): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_default_texture_repeat", 1652956681)
  var `?param` = [getPtr item, getPtr repeat]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetVisible*(self: RenderingServer; item: Rid; visible: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_visible", 1265174801)
  var `?param` = [getPtr item, getPtr visible]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetLightMask*(self: RenderingServer; item: Rid; mask: int32): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_light_mask", 3411492887)
  var `?param` = [getPtr item, getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetVisibilityLayer*(self: RenderingServer; item: Rid; visibilityLayer: uint32): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_visibility_layer", 3411492887)
  var `?param` = [getPtr item, getPtr visibilityLayer]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetTransform*(self: RenderingServer; item: Rid; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_transform", 1246044741)
  var `?param` = [getPtr item, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetClip*(self: RenderingServer; item: Rid; clip: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_clip", 1265174801)
  var `?param` = [getPtr item, getPtr clip]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetDistanceFieldMode*(self: RenderingServer; item: Rid; enabled: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_distance_field_mode", 1265174801)
  var `?param` = [getPtr item, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetCustomRect*(self: RenderingServer; item: Rid; useCustomRect: bool; rect: Rect2 = rect2(0, 0, 0, 0)): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_custom_rect", 1333997032)
  var `?param` = [getPtr item, getPtr useCustomRect, getPtr rect]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetModulate*(self: RenderingServer; item: Rid; color: Color): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_modulate", 2948539648)
  var `?param` = [getPtr item, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetSelfModulate*(self: RenderingServer; item: Rid; color: Color): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_self_modulate", 2948539648)
  var `?param` = [getPtr item, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetDrawBehindParent*(self: RenderingServer; item: Rid; enabled: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_draw_behind_parent", 1265174801)
  var `?param` = [getPtr item, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetInterpolated*(self: RenderingServer; item: Rid; interpolated: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_interpolated", 1265174801)
  var `?param` = [getPtr item, getPtr interpolated]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemResetPhysicsInterpolation*(self: RenderingServer; item: Rid): void =
  expandMethodBind(className RenderingServer, "canvas_item_reset_physics_interpolation", 2722037293)
  var `?param` = [getPtr item]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemTransformPhysicsInterpolation*(self: RenderingServer; item: Rid; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "canvas_item_transform_physics_interpolation", 1246044741)
  var `?param` = [getPtr item, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddLine*(self: RenderingServer; item: Rid; `from`: Vector2; to: Vector2; color: Color; width: Float = -1.0; antialiased: bool = false): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_line", 1819681853)
  var `?param` = [getPtr item, getPtr `from`, getPtr to, getPtr color, getPtr width, getPtr antialiased]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddPolyline*(self: RenderingServer; item: Rid; points: PackedVector2Array; colors: PackedColorArray; width: Float = -1.0; antialiased: bool = false): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_polyline", 3098767073)
  var `?param` = [getPtr item, getPtr points, getPtr colors, getPtr width, getPtr antialiased]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddMultiline*(self: RenderingServer; item: Rid; points: PackedVector2Array; colors: PackedColorArray; width: Float = -1.0; antialiased: bool = false): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_multiline", 3098767073)
  var `?param` = [getPtr item, getPtr points, getPtr colors, getPtr width, getPtr antialiased]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddRect*(self: RenderingServer; item: Rid; rect: Rect2; color: Color; antialiased: bool = false): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_rect", 3523446176)
  var `?param` = [getPtr item, getPtr rect, getPtr color, getPtr antialiased]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddCircle*(self: RenderingServer; item: Rid; pos: Vector2; radius: Float; color: Color; antialiased: bool = false): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_circle", 333077949)
  var `?param` = [getPtr item, getPtr pos, getPtr radius, getPtr color, getPtr antialiased]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddTextureRect*(self: RenderingServer; item: Rid; rect: Rect2; texture: Rid; tile: bool = false; modulate: Color = color(1, 1, 1, 1); transpose: bool = false): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_texture_rect", 324864032)
  var `?param` = [getPtr item, getPtr rect, getPtr texture, getPtr tile, getPtr modulate, getPtr transpose]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddMsdfTextureRectRegion*(self: RenderingServer; item: Rid; rect: Rect2; texture: Rid; srcRect: Rect2; modulate: Color = color(1, 1, 1, 1); outlineSize: int32 = 0; pxRange: Float = 1.0; scale: Float = 1.0): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_msdf_texture_rect_region", 97408773)
  var `?param` = [getPtr item, getPtr rect, getPtr texture, getPtr srcRect, getPtr modulate, getPtr outlineSize, getPtr pxRange, getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddLcdTextureRectRegion*(self: RenderingServer; item: Rid; rect: Rect2; texture: Rid; srcRect: Rect2; modulate: Color): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_lcd_texture_rect_region", 359793297)
  var `?param` = [getPtr item, getPtr rect, getPtr texture, getPtr srcRect, getPtr modulate]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddTextureRectRegion*(self: RenderingServer; item: Rid; rect: Rect2; texture: Rid; srcRect: Rect2; modulate: Color = color(1, 1, 1, 1); transpose: bool = false; clipUv: bool = true): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_texture_rect_region", 485157892)
  var `?param` = [getPtr item, getPtr rect, getPtr texture, getPtr srcRect, getPtr modulate, getPtr transpose, getPtr clipUv]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddNinePatch*(self: RenderingServer; item: Rid; rect: Rect2; source: Rect2; texture: Rid; topleft: Vector2; bottomright: Vector2; xAxisMode: RenderingServer_NinePatchAxisMode = ninePatchStretch; yAxisMode: RenderingServer_NinePatchAxisMode = ninePatchStretch; drawCenter: bool = true; modulate: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_nine_patch", 389957886)
  var `?param` = [getPtr item, getPtr rect, getPtr source, getPtr texture, getPtr topleft, getPtr bottomright, getPtr xAxisMode, getPtr yAxisMode, getPtr drawCenter, getPtr modulate]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddPrimitive*(self: RenderingServer; item: Rid; points: PackedVector2Array; colors: PackedColorArray; uvs: PackedVector2Array; texture: Rid): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_primitive", 3731601077)
  var `?param` = [getPtr item, getPtr points, getPtr colors, getPtr uvs, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddPolygon*(self: RenderingServer; item: Rid; points: PackedVector2Array; colors: PackedColorArray; uvs: PackedVector2Array = PackedVector2Array(); texture: Rid = RID()): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_polygon", 3580000528)
  var `?param` = [getPtr item, getPtr points, getPtr colors, getPtr uvs, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddTriangleArray*(self: RenderingServer; item: Rid; indices: PackedInt32Array; points: PackedVector2Array; colors: PackedColorArray; uvs: PackedVector2Array = PackedVector2Array(); bones: PackedInt32Array = PackedInt32Array(); weights: PackedFloat32Array = PackedFloat32Array(); texture: Rid = RID(); count: int32 = -1): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_triangle_array", 660261329)
  var `?param` = [getPtr item, getPtr indices, getPtr points, getPtr colors, getPtr uvs, getPtr bones, getPtr weights, getPtr texture, getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddMesh*(self: RenderingServer; item: Rid; mesh: Rid; transform: Transform2D = transform2D(); modulate: Color = color(1, 1, 1, 1); texture: Rid = RID()): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_mesh", 316450961)
  var `?param` = [getPtr item, getPtr mesh, getPtr transform, getPtr modulate, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddMultimesh*(self: RenderingServer; item: Rid; mesh: Rid; texture: Rid = RID()): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_multimesh", 2131855138)
  var `?param` = [getPtr item, getPtr mesh, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddParticles*(self: RenderingServer; item: Rid; particles: Rid; texture: Rid): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_particles", 2575754278)
  var `?param` = [getPtr item, getPtr particles, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddSetTransform*(self: RenderingServer; item: Rid; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_set_transform", 1246044741)
  var `?param` = [getPtr item, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddClipIgnore*(self: RenderingServer; item: Rid; ignore: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_clip_ignore", 1265174801)
  var `?param` = [getPtr item, getPtr ignore]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemAddAnimationSlice*(self: RenderingServer; item: Rid; animationLength: float64; sliceBegin: float64; sliceEnd: float64; offset: float64 = 0.0): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_animation_slice", 2646834499)
  var `?param` = [getPtr item, getPtr animationLength, getPtr sliceBegin, getPtr sliceEnd, getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetSortChildrenByY*(self: RenderingServer; item: Rid; enabled: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_sort_children_by_y", 1265174801)
  var `?param` = [getPtr item, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetZIndex*(self: RenderingServer; item: Rid; zIndex: int32): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_z_index", 3411492887)
  var `?param` = [getPtr item, getPtr zIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetZAsRelativeToParent*(self: RenderingServer; item: Rid; enabled: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_z_as_relative_to_parent", 1265174801)
  var `?param` = [getPtr item, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetCopyToBackbuffer*(self: RenderingServer; item: Rid; enabled: bool; rect: Rect2): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_copy_to_backbuffer", 2429202503)
  var `?param` = [getPtr item, getPtr enabled, getPtr rect]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemClear*(self: RenderingServer; item: Rid): void =
  expandMethodBind(className RenderingServer, "canvas_item_clear", 2722037293)
  var `?param` = [getPtr item]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetDrawIndex*(self: RenderingServer; item: Rid; index: int32): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_draw_index", 3411492887)
  var `?param` = [getPtr item, getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetMaterial*(self: RenderingServer; item: Rid; material: Rid): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_material", 395945892)
  var `?param` = [getPtr item, getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetUseParentMaterial*(self: RenderingServer; item: Rid; enabled: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_use_parent_material", 1265174801)
  var `?param` = [getPtr item, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetVisibilityNotifier*(self: RenderingServer; item: Rid; enable: bool; area: Rect2; enterCallable: Callable; exitCallable: Callable): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_visibility_notifier", 3568945579)
  var `?param` = [getPtr item, getPtr enable, getPtr area, getPtr enterCallable, getPtr exitCallable]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasItemSetCanvasGroupMode*(self: RenderingServer; item: Rid; mode: RenderingServer_CanvasGroupMode; clearMargin: Float = 5.0; fitEmpty: bool = false; fitMargin: Float = 0.0; blurMipmaps: bool = false): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_canvas_group_mode", 3973586316)
  var `?param` = [getPtr item, getPtr mode, getPtr clearMargin, getPtr fitEmpty, getPtr fitMargin, getPtr blurMipmaps]
  methodbind.ptrcall(self, addr `?param`[0])

proc debugCanvasItemGetRect*(self: RenderingServer; item: Rid): Rect2 =
  expandMethodBind(className RenderingServer, "debug_canvas_item_get_rect", 624227424)
  var `?param` = [getPtr item]
  var ret: encoded Rect2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rect2)

proc canvasLightCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "canvas_light_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc canvasLightAttachToCanvas*(self: RenderingServer; light: Rid; canvas: Rid): void =
  expandMethodBind(className RenderingServer, "canvas_light_attach_to_canvas", 395945892)
  var `?param` = [getPtr light, getPtr canvas]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetEnabled*(self: RenderingServer; light: Rid; enabled: bool): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_enabled", 1265174801)
  var `?param` = [getPtr light, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetTextureScale*(self: RenderingServer; light: Rid; scale: Float): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_texture_scale", 1794382983)
  var `?param` = [getPtr light, getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetTransform*(self: RenderingServer; light: Rid; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_transform", 1246044741)
  var `?param` = [getPtr light, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetTexture*(self: RenderingServer; light: Rid; texture: Rid): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_texture", 395945892)
  var `?param` = [getPtr light, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetTextureOffset*(self: RenderingServer; light: Rid; offset: Vector2): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_texture_offset", 3201125042)
  var `?param` = [getPtr light, getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetColor*(self: RenderingServer; light: Rid; color: Color): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_color", 2948539648)
  var `?param` = [getPtr light, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetHeight*(self: RenderingServer; light: Rid; height: Float): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_height", 1794382983)
  var `?param` = [getPtr light, getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetEnergy*(self: RenderingServer; light: Rid; energy: Float): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_energy", 1794382983)
  var `?param` = [getPtr light, getPtr energy]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetZRange*(self: RenderingServer; light: Rid; minZ: int32; maxZ: int32): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_z_range", 4288446313)
  var `?param` = [getPtr light, getPtr minZ, getPtr maxZ]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetLayerRange*(self: RenderingServer; light: Rid; minLayer: int32; maxLayer: int32): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_layer_range", 4288446313)
  var `?param` = [getPtr light, getPtr minLayer, getPtr maxLayer]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetItemCullMask*(self: RenderingServer; light: Rid; mask: int32): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_item_cull_mask", 3411492887)
  var `?param` = [getPtr light, getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetItemShadowCullMask*(self: RenderingServer; light: Rid; mask: int32): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_item_shadow_cull_mask", 3411492887)
  var `?param` = [getPtr light, getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetMode*(self: RenderingServer; light: Rid; mode: RenderingServer_CanvasLightMode): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_mode", 2957564891)
  var `?param` = [getPtr light, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetShadowEnabled*(self: RenderingServer; light: Rid; enabled: bool): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_shadow_enabled", 1265174801)
  var `?param` = [getPtr light, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetShadowFilter*(self: RenderingServer; light: Rid; filter: RenderingServer_CanvasLightShadowFilter): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_shadow_filter", 393119659)
  var `?param` = [getPtr light, getPtr filter]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetShadowColor*(self: RenderingServer; light: Rid; color: Color): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_shadow_color", 2948539648)
  var `?param` = [getPtr light, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetShadowSmooth*(self: RenderingServer; light: Rid; smooth: Float): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_shadow_smooth", 1794382983)
  var `?param` = [getPtr light, getPtr smooth]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetBlendMode*(self: RenderingServer; light: Rid; mode: RenderingServer_CanvasLightBlendMode): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_blend_mode", 804895945)
  var `?param` = [getPtr light, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightSetInterpolated*(self: RenderingServer; light: Rid; interpolated: bool): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_interpolated", 1265174801)
  var `?param` = [getPtr light, getPtr interpolated]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightResetPhysicsInterpolation*(self: RenderingServer; light: Rid): void =
  expandMethodBind(className RenderingServer, "canvas_light_reset_physics_interpolation", 2722037293)
  var `?param` = [getPtr light]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightTransformPhysicsInterpolation*(self: RenderingServer; light: Rid; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "canvas_light_transform_physics_interpolation", 1246044741)
  var `?param` = [getPtr light, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightOccluderCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc canvasLightOccluderAttachToCanvas*(self: RenderingServer; occluder: Rid; canvas: Rid): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_attach_to_canvas", 395945892)
  var `?param` = [getPtr occluder, getPtr canvas]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightOccluderSetEnabled*(self: RenderingServer; occluder: Rid; enabled: bool): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_set_enabled", 1265174801)
  var `?param` = [getPtr occluder, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightOccluderSetPolygon*(self: RenderingServer; occluder: Rid; polygon: Rid): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_set_polygon", 395945892)
  var `?param` = [getPtr occluder, getPtr polygon]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightOccluderSetAsSdfCollision*(self: RenderingServer; occluder: Rid; enable: bool): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_set_as_sdf_collision", 1265174801)
  var `?param` = [getPtr occluder, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightOccluderSetTransform*(self: RenderingServer; occluder: Rid; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_set_transform", 1246044741)
  var `?param` = [getPtr occluder, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightOccluderSetLightMask*(self: RenderingServer; occluder: Rid; mask: int32): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_set_light_mask", 3411492887)
  var `?param` = [getPtr occluder, getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightOccluderSetInterpolated*(self: RenderingServer; occluder: Rid; interpolated: bool): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_set_interpolated", 1265174801)
  var `?param` = [getPtr occluder, getPtr interpolated]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightOccluderResetPhysicsInterpolation*(self: RenderingServer; occluder: Rid): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_reset_physics_interpolation", 2722037293)
  var `?param` = [getPtr occluder]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasLightOccluderTransformPhysicsInterpolation*(self: RenderingServer; occluder: Rid; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_transform_physics_interpolation", 1246044741)
  var `?param` = [getPtr occluder, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasOccluderPolygonCreate*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "canvas_occluder_polygon_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc canvasOccluderPolygonSetShape*(self: RenderingServer; occluderPolygon: Rid; shape: PackedVector2Array; closed: bool): void =
  expandMethodBind(className RenderingServer, "canvas_occluder_polygon_set_shape", 2103882027)
  var `?param` = [getPtr occluderPolygon, getPtr shape, getPtr closed]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasOccluderPolygonSetCullMode*(self: RenderingServer; occluderPolygon: Rid; mode: RenderingServer_CanvasOccluderPolygonCullMode): void =
  expandMethodBind(className RenderingServer, "canvas_occluder_polygon_set_cull_mode", 1839404663)
  var `?param` = [getPtr occluderPolygon, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc canvasSetShadowTextureSize*(self: RenderingServer; size: int32): void =
  expandMethodBind(className RenderingServer, "canvas_set_shadow_texture_size", 1286410249)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalShaderParameterAdd*(self: RenderingServer; name: StringName; `type`: RenderingServer_GlobalShaderParameterType; defaultValue: Variant): void =
  expandMethodBind(className RenderingServer, "global_shader_parameter_add", 463390080)
  var `?param` = [getPtr name, getPtr `type`, getPtr defaultValue]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalShaderParameterRemove*(self: RenderingServer; name: StringName): void =
  expandMethodBind(className RenderingServer, "global_shader_parameter_remove", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalShaderParameterGetList*(self: RenderingServer): TypedArray[StringName] =
  expandMethodBind(className RenderingServer, "global_shader_parameter_get_list", 3995934104)
  var ret: encoded TypedArray[StringName]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[StringName])

proc globalShaderParameterSet*(self: RenderingServer; name: StringName; value: Variant): void =
  expandMethodBind(className RenderingServer, "global_shader_parameter_set", 3776071444)
  var `?param` = [getPtr name, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalShaderParameterSetOverride*(self: RenderingServer; name: StringName; value: Variant): void =
  expandMethodBind(className RenderingServer, "global_shader_parameter_set_override", 3776071444)
  var `?param` = [getPtr name, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalShaderParameterGet*(self: RenderingServer; name: StringName): Variant =
  expandMethodBind(className RenderingServer, "global_shader_parameter_get", 2760726917)
  var `?param` = [getPtr name]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc globalShaderParameterGetType*(self: RenderingServer; name: StringName): RenderingServer_GlobalShaderParameterType =
  expandMethodBind(className RenderingServer, "global_shader_parameter_get_type", 1601414142)
  var `?param` = [getPtr name]
  var ret: encoded RenderingServer_GlobalShaderParameterType
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RenderingServer_GlobalShaderParameterType)

proc freeRid*(self: RenderingServer; rid: Rid): void =
  expandMethodBind(className RenderingServer, "free_rid", 2722037293)
  var `?param` = [getPtr rid]
  methodbind.ptrcall(self, addr `?param`[0])

proc requestFrameDrawnCallback*(self: RenderingServer; callable: Callable): void =
  expandMethodBind(className RenderingServer, "request_frame_drawn_callback", 1611583062)
  var `?param` = [getPtr callable]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasChanged*(self: RenderingServer): bool =
  expandMethodBind(className RenderingServer, "has_changed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getRenderingInfo*(self: RenderingServer; info: RenderingServer_RenderingInfo): uint64 =
  expandMethodBind(className RenderingServer, "get_rendering_info", 3763192241)
  var `?param` = [getPtr info]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc getVideoAdapterName*(self: RenderingServer): String =
  expandMethodBind(className RenderingServer, "get_video_adapter_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getVideoAdapterVendor*(self: RenderingServer): String =
  expandMethodBind(className RenderingServer, "get_video_adapter_vendor", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getVideoAdapterType*(self: RenderingServer): RenderingDevice_DeviceType =
  expandMethodBind(className RenderingServer, "get_video_adapter_type", 3099547011)
  var ret: encoded RenderingDevice_DeviceType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_DeviceType)

proc getVideoAdapterApiVersion*(self: RenderingServer): String =
  expandMethodBind(className RenderingServer, "get_video_adapter_api_version", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc makeSphereMesh*(self: RenderingServer; latitudes: int32; longitudes: int32; radius: Float): Rid =
  expandMethodBind(className RenderingServer, "make_sphere_mesh", 2251015897)
  var `?param` = [getPtr latitudes, getPtr longitudes, getPtr radius]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc getTestCube*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "get_test_cube", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getTestTexture*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "get_test_texture", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getWhiteTexture*(self: RenderingServer): Rid =
  expandMethodBind(className RenderingServer, "get_white_texture", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc setBootImage*(self: RenderingServer; image: gdref Image; color: Color; scale: bool; useFilter: bool = true): void =
  expandMethodBind(className RenderingServer, "set_boot_image", 3759744527)
  var `?param` = [getPtr image, getPtr color, getPtr scale, getPtr useFilter]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDefaultClearColor*(self: RenderingServer): Color =
  expandMethodBind(className RenderingServer, "get_default_clear_color", 3200896285)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setDefaultClearColor*(self: RenderingServer; color: Color): void =
  expandMethodBind(className RenderingServer, "set_default_clear_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasOsFeature*(self: RenderingServer; feature: String): bool =
  expandMethodBind(className RenderingServer, "has_os_feature", 3927539163)
  var `?param` = [getPtr feature]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setDebugGenerateWireframes*(self: RenderingServer; generate: bool): void =
  expandMethodBind(className RenderingServer, "set_debug_generate_wireframes", 2586408642)
  var `?param` = [getPtr generate]
  methodbind.ptrcall(self, addr `?param`[0])

proc isRenderLoopEnabled*(self: RenderingServer): bool =
  expandMethodBind(className RenderingServer, "is_render_loop_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setRenderLoopEnabled*(self: RenderingServer; enabled: bool): void =
  expandMethodBind(className RenderingServer, "set_render_loop_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrameSetupTimeCpu*(self: RenderingServer): float64 =
  expandMethodBind(className RenderingServer, "get_frame_setup_time_cpu", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc forceSync*(self: RenderingServer): void =
  expandMethodBind(className RenderingServer, "force_sync", 3218959716)
  methodbind.ptrcall(self, nil)

proc forceDraw*(self: RenderingServer; swapBuffers: bool = true; frameStep: float64 = 0.0): void =
  expandMethodBind(className RenderingServer, "force_draw", 1076185472)
  var `?param` = [getPtr swapBuffers, getPtr frameStep]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRenderingDevice*(self: RenderingServer): RenderingDevice =
  expandMethodBind(className RenderingServer, "get_rendering_device", 1405107940)
  var ret: encoded RenderingDevice
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice)

proc createLocalRenderingDevice*(self: RenderingServer): RenderingDevice =
  expandMethodBind(className RenderingServer, "create_local_rendering_device", 1405107940)
  var ret: encoded RenderingDevice
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice)

proc isOnRenderThread*(self: RenderingServer): bool =
  expandMethodBind(className RenderingServer, "is_on_render_thread", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc callOnRenderThread*(self: RenderingServer; callable: Callable): void =
  expandMethodBind(className RenderingServer, "call_on_render_thread", 1611583062)
  var `?param` = [getPtr callable]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasFeature*(self: RenderingServer; feature: RenderingServer_Features): bool =
  expandMethodBind(className RenderingServer, "has_feature", 598462696)
  var `?param` = [getPtr feature]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

template renderLoopEnabled*(self: RenderingServer): untyped = self.isRenderLoopEnabled()
template `renderLoopEnabled=`*(self: RenderingServer; value) = self.setRenderLoopEnabled(value)

const RenderingServer_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RenderingServer]): Table[string, string] = RenderingServer_vmap

proc framePreDraw*(self: RenderingServer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("frame_pre_draw")
  self.emitSignal(signalname)

proc framePostDraw*(self: RenderingServer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("frame_post_draw")
  self.emitSignal(signalname)