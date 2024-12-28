{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc texture2DCreate*(self: RenderingServer; image: gdref Image): RID =
  expandMethodBind(className RenderingServer, "texture_2d_create", 2010018390)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr image], addr ret)
  (addr ret).decode_result(RID)

proc texture2DLayeredCreate*(self: RenderingServer; layers: TypedArray[Image]; layeredType: RenderingServer_TextureLayeredType): RID =
  expandMethodBind(className RenderingServer, "texture_2d_layered_create", 913689023)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr layers, getPtr layeredType], addr ret)
  (addr ret).decode_result(RID)

proc texture3DCreate*(self: RenderingServer; format: Image_Format; width: int32; height: int32; depth: int32; mipmaps: bool; data: TypedArray[Image]): RID =
  expandMethodBind(className RenderingServer, "texture_3d_create", 4036838706)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr format, getPtr width, getPtr height, getPtr depth, getPtr mipmaps, getPtr data], addr ret)
  (addr ret).decode_result(RID)

proc textureProxyCreate*(self: RenderingServer; base: RID): RID =
  expandMethodBind(className RenderingServer, "texture_proxy_create", 41030802)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr base], addr ret)
  (addr ret).decode_result(RID)

proc texture2DUpdate*(self: RenderingServer; texture: RID; image: gdref Image; layer: int32): void =
  expandMethodBind(className RenderingServer, "texture_2d_update", 999539803)
  methodbind.ptrcall(self, [getPtr texture, getPtr image, getPtr layer])

proc texture3DUpdate*(self: RenderingServer; texture: RID; data: TypedArray[Image]): void =
  expandMethodBind(className RenderingServer, "texture_3d_update", 684822712)
  methodbind.ptrcall(self, [getPtr texture, getPtr data])

proc textureProxyUpdate*(self: RenderingServer; texture: RID; proxyTo: RID): void =
  expandMethodBind(className RenderingServer, "texture_proxy_update", 395945892)
  methodbind.ptrcall(self, [getPtr texture, getPtr proxyTo])

proc texture2DPlaceholderCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "texture_2d_placeholder_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc texture2DLayeredPlaceholderCreate*(self: RenderingServer; layeredType: RenderingServer_TextureLayeredType): RID =
  expandMethodBind(className RenderingServer, "texture_2d_layered_placeholder_create", 1394585590)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr layeredType], addr ret)
  (addr ret).decode_result(RID)

proc texture3DPlaceholderCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "texture_3d_placeholder_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc texture2DGet*(self: RenderingServer; texture: RID): gdref Image =
  expandMethodBind(className RenderingServer, "texture_2d_get", 4206205781)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, [getPtr texture], addr ret)
  (addr ret).decode_result(gdref Image)

proc texture2DLayerGet*(self: RenderingServer; texture: RID; layer: int32): gdref Image =
  expandMethodBind(className RenderingServer, "texture_2d_layer_get", 2705440895)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, [getPtr texture, getPtr layer], addr ret)
  (addr ret).decode_result(gdref Image)

proc texture3DGet*(self: RenderingServer; texture: RID): TypedArray[Image] =
  expandMethodBind(className RenderingServer, "texture_3d_get", 2684255073)
  var ret: encoded TypedArray[Image]
  methodbind.ptrcall(self, [getPtr texture], addr ret)
  (addr ret).decode_result(TypedArray[Image])

proc textureReplace*(self: RenderingServer; texture: RID; byTexture: RID): void =
  expandMethodBind(className RenderingServer, "texture_replace", 395945892)
  methodbind.ptrcall(self, [getPtr texture, getPtr byTexture])

proc textureSetSizeOverride*(self: RenderingServer; texture: RID; width: int32; height: int32): void =
  expandMethodBind(className RenderingServer, "texture_set_size_override", 4288446313)
  methodbind.ptrcall(self, [getPtr texture, getPtr width, getPtr height])

proc textureSetPath*(self: RenderingServer; texture: RID; path: String): void =
  expandMethodBind(className RenderingServer, "texture_set_path", 2726140452)
  methodbind.ptrcall(self, [getPtr texture, getPtr path])

proc textureGetPath*(self: RenderingServer; texture: RID): String =
  expandMethodBind(className RenderingServer, "texture_get_path", 642473191)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr texture], addr ret)
  (addr ret).decode_result(String)

proc textureGetFormat*(self: RenderingServer; texture: RID): Image_Format =
  expandMethodBind(className RenderingServer, "texture_get_format", 1932918979)
  var ret: encoded Image_Format
  methodbind.ptrcall(self, [getPtr texture], addr ret)
  (addr ret).decode_result(Image_Format)

proc textureSetForceRedrawIfVisible*(self: RenderingServer; texture: RID; enable: bool): void =
  expandMethodBind(className RenderingServer, "texture_set_force_redraw_if_visible", 1265174801)
  methodbind.ptrcall(self, [getPtr texture, getPtr enable])

proc textureRdCreate*(self: RenderingServer; rdTexture: RID; layerType: RenderingServer_TextureLayeredType = textureLayered2DArray): RID =
  expandMethodBind(className RenderingServer, "texture_rd_create", 1434128712)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr rdTexture, getPtr layerType], addr ret)
  (addr ret).decode_result(RID)

proc textureGetRdTexture*(self: RenderingServer; texture: RID; srgb: bool = false): RID =
  expandMethodBind(className RenderingServer, "texture_get_rd_texture", 2790148051)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr texture, getPtr srgb], addr ret)
  (addr ret).decode_result(RID)

proc textureGetNativeHandle*(self: RenderingServer; texture: RID; srgb: bool = false): uint64 =
  expandMethodBind(className RenderingServer, "texture_get_native_handle", 1834114100)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr texture, getPtr srgb], addr ret)
  (addr ret).decode_result(uint64)

proc shaderCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "shader_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc shaderSetCode*(self: RenderingServer; shader: RID; code: String): void =
  expandMethodBind(className RenderingServer, "shader_set_code", 2726140452)
  methodbind.ptrcall(self, [getPtr shader, getPtr code])

proc shaderSetPathHint*(self: RenderingServer; shader: RID; path: String): void =
  expandMethodBind(className RenderingServer, "shader_set_path_hint", 2726140452)
  methodbind.ptrcall(self, [getPtr shader, getPtr path])

proc shaderGetCode*(self: RenderingServer; shader: RID): String =
  expandMethodBind(className RenderingServer, "shader_get_code", 642473191)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr shader], addr ret)
  (addr ret).decode_result(String)

proc getShaderParameterList*(self: RenderingServer; shader: RID): TypedArray[Dictionary] =
  expandMethodBind(className RenderingServer, "get_shader_parameter_list", 2684255073)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, [getPtr shader], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc shaderGetParameterDefault*(self: RenderingServer; shader: RID; name: StringName): Variant =
  expandMethodBind(className RenderingServer, "shader_get_parameter_default", 2621281810)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr shader, getPtr name], addr ret)
  (addr ret).decode_result(Variant)

proc shaderSetDefaultTextureParameter*(self: RenderingServer; shader: RID; name: StringName; texture: RID; index: int32 = 0): void =
  expandMethodBind(className RenderingServer, "shader_set_default_texture_parameter", 4094001817)
  methodbind.ptrcall(self, [getPtr shader, getPtr name, getPtr texture, getPtr index])

proc shaderGetDefaultTextureParameter*(self: RenderingServer; shader: RID; name: StringName; index: int32 = 0): RID =
  expandMethodBind(className RenderingServer, "shader_get_default_texture_parameter", 1464608890)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr shader, getPtr name, getPtr index], addr ret)
  (addr ret).decode_result(RID)

proc materialCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "material_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc materialSetShader*(self: RenderingServer; shaderMaterial: RID; shader: RID): void =
  expandMethodBind(className RenderingServer, "material_set_shader", 395945892)
  methodbind.ptrcall(self, [getPtr shaderMaterial, getPtr shader])

proc materialSetParam*(self: RenderingServer; material: RID; parameter: StringName; value: Variant): void =
  expandMethodBind(className RenderingServer, "material_set_param", 3477296213)
  methodbind.ptrcall(self, [getPtr material, getPtr parameter, getPtr value])

proc materialGetParam*(self: RenderingServer; material: RID; parameter: StringName): Variant =
  expandMethodBind(className RenderingServer, "material_get_param", 2621281810)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr material, getPtr parameter], addr ret)
  (addr ret).decode_result(Variant)

proc materialSetRenderPriority*(self: RenderingServer; material: RID; priority: int32): void =
  expandMethodBind(className RenderingServer, "material_set_render_priority", 3411492887)
  methodbind.ptrcall(self, [getPtr material, getPtr priority])

proc materialSetNextPass*(self: RenderingServer; material: RID; nextMaterial: RID): void =
  expandMethodBind(className RenderingServer, "material_set_next_pass", 395945892)
  methodbind.ptrcall(self, [getPtr material, getPtr nextMaterial])

proc meshCreateFromSurfaces*(self: RenderingServer; surfaces: TypedArray[Dictionary]; blendShapeCount: int32 = 0): RID =
  expandMethodBind(className RenderingServer, "mesh_create_from_surfaces", 4291747531)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr surfaces, getPtr blendShapeCount], addr ret)
  (addr ret).decode_result(RID)

proc meshCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "mesh_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc meshSurfaceGetFormatOffset*(self: RenderingServer; format: set[RenderingServer_ArrayFormat]; vertexCount: int32; arrayIndex: int32): uint32 =
  expandMethodBind(className RenderingServer, "mesh_surface_get_format_offset", 2981368685)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr format, getPtr vertexCount, getPtr arrayIndex], addr ret)
  (addr ret).decode_result(uint32)

proc meshSurfaceGetFormatVertexStride*(self: RenderingServer; format: set[RenderingServer_ArrayFormat]; vertexCount: int32): uint32 =
  expandMethodBind(className RenderingServer, "mesh_surface_get_format_vertex_stride", 3188363337)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr format, getPtr vertexCount], addr ret)
  (addr ret).decode_result(uint32)

proc meshSurfaceGetFormatNormalTangentStride*(self: RenderingServer; format: set[RenderingServer_ArrayFormat]; vertexCount: int32): uint32 =
  expandMethodBind(className RenderingServer, "mesh_surface_get_format_normal_tangent_stride", 3188363337)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr format, getPtr vertexCount], addr ret)
  (addr ret).decode_result(uint32)

proc meshSurfaceGetFormatAttributeStride*(self: RenderingServer; format: set[RenderingServer_ArrayFormat]; vertexCount: int32): uint32 =
  expandMethodBind(className RenderingServer, "mesh_surface_get_format_attribute_stride", 3188363337)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr format, getPtr vertexCount], addr ret)
  (addr ret).decode_result(uint32)

proc meshSurfaceGetFormatSkinStride*(self: RenderingServer; format: set[RenderingServer_ArrayFormat]; vertexCount: int32): uint32 =
  expandMethodBind(className RenderingServer, "mesh_surface_get_format_skin_stride", 3188363337)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr format, getPtr vertexCount], addr ret)
  (addr ret).decode_result(uint32)

proc meshAddSurface*(self: RenderingServer; mesh: RID; surface: Dictionary): void =
  expandMethodBind(className RenderingServer, "mesh_add_surface", 1217542888)
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface])

proc meshAddSurfaceFromArrays*(self: RenderingServer; mesh: RID; primitive: RenderingServer_PrimitiveType; arrays: Array; blendShapes: Array = gdarray(); lods: Dictionary = dictionary(); compressFormat: set[RenderingServer_ArrayFormat] = {}): void =
  expandMethodBind(className RenderingServer, "mesh_add_surface_from_arrays", 2342446560)
  methodbind.ptrcall(self, [getPtr mesh, getPtr primitive, getPtr arrays, getPtr blendShapes, getPtr lods, getPtr compressFormat])

proc meshGetBlendShapeCount*(self: RenderingServer; mesh: RID): int32 =
  expandMethodBind(className RenderingServer, "mesh_get_blend_shape_count", 2198884583)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr mesh], addr ret)
  (addr ret).decode_result(int32)

proc meshSetBlendShapeMode*(self: RenderingServer; mesh: RID; mode: RenderingServer_BlendShapeMode): void =
  expandMethodBind(className RenderingServer, "mesh_set_blend_shape_mode", 1294662092)
  methodbind.ptrcall(self, [getPtr mesh, getPtr mode])

proc meshGetBlendShapeMode*(self: RenderingServer; mesh: RID): RenderingServer_BlendShapeMode =
  expandMethodBind(className RenderingServer, "mesh_get_blend_shape_mode", 4282291819)
  var ret: encoded RenderingServer_BlendShapeMode
  methodbind.ptrcall(self, [getPtr mesh], addr ret)
  (addr ret).decode_result(RenderingServer_BlendShapeMode)

proc meshSurfaceSetMaterial*(self: RenderingServer; mesh: RID; surface: int32; material: RID): void =
  expandMethodBind(className RenderingServer, "mesh_surface_set_material", 2310537182)
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface, getPtr material])

proc meshSurfaceGetMaterial*(self: RenderingServer; mesh: RID; surface: int32): RID =
  expandMethodBind(className RenderingServer, "mesh_surface_get_material", 1066463050)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface], addr ret)
  (addr ret).decode_result(RID)

proc meshGetSurface*(self: RenderingServer; mesh: RID; surface: int32): Dictionary =
  expandMethodBind(className RenderingServer, "mesh_get_surface", 186674697)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface], addr ret)
  (addr ret).decode_result(Dictionary)

proc meshSurfaceGetArrays*(self: RenderingServer; mesh: RID; surface: int32): Array =
  expandMethodBind(className RenderingServer, "mesh_surface_get_arrays", 1778388067)
  var ret: encoded Array
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface], addr ret)
  (addr ret).decode_result(Array)

proc meshSurfaceGetBlendShapeArrays*(self: RenderingServer; mesh: RID; surface: int32): TypedArray[Array] =
  expandMethodBind(className RenderingServer, "mesh_surface_get_blend_shape_arrays", 1778388067)
  var ret: encoded TypedArray[Array]
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface], addr ret)
  (addr ret).decode_result(TypedArray[Array])

proc meshGetSurfaceCount*(self: RenderingServer; mesh: RID): int32 =
  expandMethodBind(className RenderingServer, "mesh_get_surface_count", 2198884583)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr mesh], addr ret)
  (addr ret).decode_result(int32)

proc meshSetCustomAabb*(self: RenderingServer; mesh: RID; aabb: AABB): void =
  expandMethodBind(className RenderingServer, "mesh_set_custom_aabb", 3696536120)
  methodbind.ptrcall(self, [getPtr mesh, getPtr aabb])

proc meshGetCustomAabb*(self: RenderingServer; mesh: RID): AABB =
  expandMethodBind(className RenderingServer, "mesh_get_custom_aabb", 974181306)
  var ret: encoded AABB
  methodbind.ptrcall(self, [getPtr mesh], addr ret)
  (addr ret).decode_result(AABB)

proc meshClear*(self: RenderingServer; mesh: RID): void =
  expandMethodBind(className RenderingServer, "mesh_clear", 2722037293)
  methodbind.ptrcall(self, [getPtr mesh])

proc meshSurfaceUpdateVertexRegion*(self: RenderingServer; mesh: RID; surface: int32; offset: int32; data: PackedByteArray): void =
  expandMethodBind(className RenderingServer, "mesh_surface_update_vertex_region", 2900195149)
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface, getPtr offset, getPtr data])

proc meshSurfaceUpdateAttributeRegion*(self: RenderingServer; mesh: RID; surface: int32; offset: int32; data: PackedByteArray): void =
  expandMethodBind(className RenderingServer, "mesh_surface_update_attribute_region", 2900195149)
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface, getPtr offset, getPtr data])

proc meshSurfaceUpdateSkinRegion*(self: RenderingServer; mesh: RID; surface: int32; offset: int32; data: PackedByteArray): void =
  expandMethodBind(className RenderingServer, "mesh_surface_update_skin_region", 2900195149)
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface, getPtr offset, getPtr data])

proc meshSetShadowMesh*(self: RenderingServer; mesh: RID; shadowMesh: RID): void =
  expandMethodBind(className RenderingServer, "mesh_set_shadow_mesh", 395945892)
  methodbind.ptrcall(self, [getPtr mesh, getPtr shadowMesh])

proc multimeshCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "multimesh_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc multimeshAllocateData*(self: RenderingServer; multimesh: RID; instances: int32; transformFormat: RenderingServer_MultimeshTransformFormat; colorFormat: bool = false; customDataFormat: bool = false): void =
  expandMethodBind(className RenderingServer, "multimesh_allocate_data", 283685892)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr instances, getPtr transformFormat, getPtr colorFormat, getPtr customDataFormat])

proc multimeshGetInstanceCount*(self: RenderingServer; multimesh: RID): int32 =
  expandMethodBind(className RenderingServer, "multimesh_get_instance_count", 2198884583)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr multimesh], addr ret)
  (addr ret).decode_result(int32)

proc multimeshSetMesh*(self: RenderingServer; multimesh: RID; mesh: RID): void =
  expandMethodBind(className RenderingServer, "multimesh_set_mesh", 395945892)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr mesh])

proc multimeshInstanceSetTransform*(self: RenderingServer; multimesh: RID; index: int32; transform: Transform3D): void =
  expandMethodBind(className RenderingServer, "multimesh_instance_set_transform", 675327471)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr index, getPtr transform])

proc multimeshInstanceSetTransform2D*(self: RenderingServer; multimesh: RID; index: int32; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "multimesh_instance_set_transform_2d", 736082694)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr index, getPtr transform])

proc multimeshInstanceSetColor*(self: RenderingServer; multimesh: RID; index: int32; color: Color): void =
  expandMethodBind(className RenderingServer, "multimesh_instance_set_color", 176975443)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr index, getPtr color])

proc multimeshInstanceSetCustomData*(self: RenderingServer; multimesh: RID; index: int32; customData: Color): void =
  expandMethodBind(className RenderingServer, "multimesh_instance_set_custom_data", 176975443)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr index, getPtr customData])

proc multimeshGetMesh*(self: RenderingServer; multimesh: RID): RID =
  expandMethodBind(className RenderingServer, "multimesh_get_mesh", 3814569979)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr multimesh], addr ret)
  (addr ret).decode_result(RID)

proc multimeshGetAabb*(self: RenderingServer; multimesh: RID): AABB =
  expandMethodBind(className RenderingServer, "multimesh_get_aabb", 974181306)
  var ret: encoded AABB
  methodbind.ptrcall(self, [getPtr multimesh], addr ret)
  (addr ret).decode_result(AABB)

proc multimeshSetCustomAabb*(self: RenderingServer; multimesh: RID; aabb: AABB): void =
  expandMethodBind(className RenderingServer, "multimesh_set_custom_aabb", 3696536120)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr aabb])

proc multimeshGetCustomAabb*(self: RenderingServer; multimesh: RID): AABB =
  expandMethodBind(className RenderingServer, "multimesh_get_custom_aabb", 974181306)
  var ret: encoded AABB
  methodbind.ptrcall(self, [getPtr multimesh], addr ret)
  (addr ret).decode_result(AABB)

proc multimeshInstanceGetTransform*(self: RenderingServer; multimesh: RID; index: int32): Transform3D =
  expandMethodBind(className RenderingServer, "multimesh_instance_get_transform", 1050775521)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr multimesh, getPtr index], addr ret)
  (addr ret).decode_result(Transform3D)

proc multimeshInstanceGetTransform2D*(self: RenderingServer; multimesh: RID; index: int32): Transform2D =
  expandMethodBind(className RenderingServer, "multimesh_instance_get_transform_2d", 1324854622)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, [getPtr multimesh, getPtr index], addr ret)
  (addr ret).decode_result(Transform2D)

proc multimeshInstanceGetColor*(self: RenderingServer; multimesh: RID; index: int32): Color =
  expandMethodBind(className RenderingServer, "multimesh_instance_get_color", 2946315076)
  var ret: encoded Color
  methodbind.ptrcall(self, [getPtr multimesh, getPtr index], addr ret)
  (addr ret).decode_result(Color)

proc multimeshInstanceGetCustomData*(self: RenderingServer; multimesh: RID; index: int32): Color =
  expandMethodBind(className RenderingServer, "multimesh_instance_get_custom_data", 2946315076)
  var ret: encoded Color
  methodbind.ptrcall(self, [getPtr multimesh, getPtr index], addr ret)
  (addr ret).decode_result(Color)

proc multimeshSetVisibleInstances*(self: RenderingServer; multimesh: RID; visible: int32): void =
  expandMethodBind(className RenderingServer, "multimesh_set_visible_instances", 3411492887)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr visible])

proc multimeshGetVisibleInstances*(self: RenderingServer; multimesh: RID): int32 =
  expandMethodBind(className RenderingServer, "multimesh_get_visible_instances", 2198884583)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr multimesh], addr ret)
  (addr ret).decode_result(int32)

proc multimeshSetBuffer*(self: RenderingServer; multimesh: RID; buffer: PackedFloat32Array): void =
  expandMethodBind(className RenderingServer, "multimesh_set_buffer", 2960552364)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr buffer])

proc multimeshGetBuffer*(self: RenderingServer; multimesh: RID): PackedFloat32Array =
  expandMethodBind(className RenderingServer, "multimesh_get_buffer", 3964669176)
  var ret: encoded PackedFloat32Array
  methodbind.ptrcall(self, [getPtr multimesh], addr ret)
  (addr ret).decode_result(PackedFloat32Array)

proc skeletonCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "skeleton_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc skeletonAllocateData*(self: RenderingServer; skeleton: RID; bones: int32; is2DSkeleton: bool = false): void =
  expandMethodBind(className RenderingServer, "skeleton_allocate_data", 1904426712)
  methodbind.ptrcall(self, [getPtr skeleton, getPtr bones, getPtr is2DSkeleton])

proc skeletonGetBoneCount*(self: RenderingServer; skeleton: RID): int32 =
  expandMethodBind(className RenderingServer, "skeleton_get_bone_count", 2198884583)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr skeleton], addr ret)
  (addr ret).decode_result(int32)

proc skeletonBoneSetTransform*(self: RenderingServer; skeleton: RID; bone: int32; transform: Transform3D): void =
  expandMethodBind(className RenderingServer, "skeleton_bone_set_transform", 675327471)
  methodbind.ptrcall(self, [getPtr skeleton, getPtr bone, getPtr transform])

proc skeletonBoneGetTransform*(self: RenderingServer; skeleton: RID; bone: int32): Transform3D =
  expandMethodBind(className RenderingServer, "skeleton_bone_get_transform", 1050775521)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr skeleton, getPtr bone], addr ret)
  (addr ret).decode_result(Transform3D)

proc skeletonBoneSetTransform2D*(self: RenderingServer; skeleton: RID; bone: int32; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "skeleton_bone_set_transform_2d", 736082694)
  methodbind.ptrcall(self, [getPtr skeleton, getPtr bone, getPtr transform])

proc skeletonBoneGetTransform2D*(self: RenderingServer; skeleton: RID; bone: int32): Transform2D =
  expandMethodBind(className RenderingServer, "skeleton_bone_get_transform_2d", 1324854622)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, [getPtr skeleton, getPtr bone], addr ret)
  (addr ret).decode_result(Transform2D)

proc skeletonSetBaseTransform2D*(self: RenderingServer; skeleton: RID; baseTransform: Transform2D): void =
  expandMethodBind(className RenderingServer, "skeleton_set_base_transform_2d", 1246044741)
  methodbind.ptrcall(self, [getPtr skeleton, getPtr baseTransform])

proc directionalLightCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "directional_light_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc omniLightCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "omni_light_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc spotLightCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "spot_light_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc lightSetColor*(self: RenderingServer; light: RID; color: Color): void =
  expandMethodBind(className RenderingServer, "light_set_color", 2948539648)
  methodbind.ptrcall(self, [getPtr light, getPtr color])

proc lightSetParam*(self: RenderingServer; light: RID; param: RenderingServer_LightParam; value: Float): void =
  expandMethodBind(className RenderingServer, "light_set_param", 501936875)
  methodbind.ptrcall(self, [getPtr light, getPtr param, getPtr value])

proc lightSetShadow*(self: RenderingServer; light: RID; enabled: bool): void =
  expandMethodBind(className RenderingServer, "light_set_shadow", 1265174801)
  methodbind.ptrcall(self, [getPtr light, getPtr enabled])

proc lightSetProjector*(self: RenderingServer; light: RID; texture: RID): void =
  expandMethodBind(className RenderingServer, "light_set_projector", 395945892)
  methodbind.ptrcall(self, [getPtr light, getPtr texture])

proc lightSetNegative*(self: RenderingServer; light: RID; enable: bool): void =
  expandMethodBind(className RenderingServer, "light_set_negative", 1265174801)
  methodbind.ptrcall(self, [getPtr light, getPtr enable])

proc lightSetCullMask*(self: RenderingServer; light: RID; mask: uint32): void =
  expandMethodBind(className RenderingServer, "light_set_cull_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr light, getPtr mask])

proc lightSetDistanceFade*(self: RenderingServer; decal: RID; enabled: bool; begin: Float; shadow: Float; length: Float): void =
  expandMethodBind(className RenderingServer, "light_set_distance_fade", 1622292572)
  methodbind.ptrcall(self, [getPtr decal, getPtr enabled, getPtr begin, getPtr shadow, getPtr length])

proc lightSetReverseCullFaceMode*(self: RenderingServer; light: RID; enabled: bool): void =
  expandMethodBind(className RenderingServer, "light_set_reverse_cull_face_mode", 1265174801)
  methodbind.ptrcall(self, [getPtr light, getPtr enabled])

proc lightSetBakeMode*(self: RenderingServer; light: RID; bakeMode: RenderingServer_LightBakeMode): void =
  expandMethodBind(className RenderingServer, "light_set_bake_mode", 1048525260)
  methodbind.ptrcall(self, [getPtr light, getPtr bakeMode])

proc lightSetMaxSdfgiCascade*(self: RenderingServer; light: RID; cascade: uint32): void =
  expandMethodBind(className RenderingServer, "light_set_max_sdfgi_cascade", 3411492887)
  methodbind.ptrcall(self, [getPtr light, getPtr cascade])

proc lightOmniSetShadowMode*(self: RenderingServer; light: RID; mode: RenderingServer_LightOmniShadowMode): void =
  expandMethodBind(className RenderingServer, "light_omni_set_shadow_mode", 2552677200)
  methodbind.ptrcall(self, [getPtr light, getPtr mode])

proc lightDirectionalSetShadowMode*(self: RenderingServer; light: RID; mode: RenderingServer_LightDirectionalShadowMode): void =
  expandMethodBind(className RenderingServer, "light_directional_set_shadow_mode", 380462970)
  methodbind.ptrcall(self, [getPtr light, getPtr mode])

proc lightDirectionalSetBlendSplits*(self: RenderingServer; light: RID; enable: bool): void =
  expandMethodBind(className RenderingServer, "light_directional_set_blend_splits", 1265174801)
  methodbind.ptrcall(self, [getPtr light, getPtr enable])

proc lightDirectionalSetSkyMode*(self: RenderingServer; light: RID; mode: RenderingServer_LightDirectionalSkyMode): void =
  expandMethodBind(className RenderingServer, "light_directional_set_sky_mode", 2559740754)
  methodbind.ptrcall(self, [getPtr light, getPtr mode])

proc lightProjectorsSetFilter*(self: RenderingServer; filter: RenderingServer_LightProjectorFilter): void =
  expandMethodBind(className RenderingServer, "light_projectors_set_filter", 43944325)
  methodbind.ptrcall(self, [getPtr filter])

proc positionalSoftShadowFilterSetQuality*(self: RenderingServer; quality: RenderingServer_ShadowQuality): void =
  expandMethodBind(className RenderingServer, "positional_soft_shadow_filter_set_quality", 3613045266)
  methodbind.ptrcall(self, [getPtr quality])

proc directionalSoftShadowFilterSetQuality*(self: RenderingServer; quality: RenderingServer_ShadowQuality): void =
  expandMethodBind(className RenderingServer, "directional_soft_shadow_filter_set_quality", 3613045266)
  methodbind.ptrcall(self, [getPtr quality])

proc directionalShadowAtlasSetSize*(self: RenderingServer; size: int32; is16Bits: bool): void =
  expandMethodBind(className RenderingServer, "directional_shadow_atlas_set_size", 300928843)
  methodbind.ptrcall(self, [getPtr size, getPtr is16Bits])

proc reflectionProbeCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "reflection_probe_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc reflectionProbeSetUpdateMode*(self: RenderingServer; probe: RID; mode: RenderingServer_ReflectionProbeUpdateMode): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_update_mode", 3853670147)
  methodbind.ptrcall(self, [getPtr probe, getPtr mode])

proc reflectionProbeSetIntensity*(self: RenderingServer; probe: RID; intensity: Float): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_intensity", 1794382983)
  methodbind.ptrcall(self, [getPtr probe, getPtr intensity])

proc reflectionProbeSetAmbientMode*(self: RenderingServer; probe: RID; mode: RenderingServer_ReflectionProbeAmbientMode): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_ambient_mode", 184163074)
  methodbind.ptrcall(self, [getPtr probe, getPtr mode])

proc reflectionProbeSetAmbientColor*(self: RenderingServer; probe: RID; color: Color): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_ambient_color", 2948539648)
  methodbind.ptrcall(self, [getPtr probe, getPtr color])

proc reflectionProbeSetAmbientEnergy*(self: RenderingServer; probe: RID; energy: Float): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_ambient_energy", 1794382983)
  methodbind.ptrcall(self, [getPtr probe, getPtr energy])

proc reflectionProbeSetMaxDistance*(self: RenderingServer; probe: RID; distance: Float): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_max_distance", 1794382983)
  methodbind.ptrcall(self, [getPtr probe, getPtr distance])

proc reflectionProbeSetSize*(self: RenderingServer; probe: RID; size: Vector3): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_size", 3227306858)
  methodbind.ptrcall(self, [getPtr probe, getPtr size])

proc reflectionProbeSetOriginOffset*(self: RenderingServer; probe: RID; offset: Vector3): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_origin_offset", 3227306858)
  methodbind.ptrcall(self, [getPtr probe, getPtr offset])

proc reflectionProbeSetAsInterior*(self: RenderingServer; probe: RID; enable: bool): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_as_interior", 1265174801)
  methodbind.ptrcall(self, [getPtr probe, getPtr enable])

proc reflectionProbeSetEnableBoxProjection*(self: RenderingServer; probe: RID; enable: bool): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_enable_box_projection", 1265174801)
  methodbind.ptrcall(self, [getPtr probe, getPtr enable])

proc reflectionProbeSetEnableShadows*(self: RenderingServer; probe: RID; enable: bool): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_enable_shadows", 1265174801)
  methodbind.ptrcall(self, [getPtr probe, getPtr enable])

proc reflectionProbeSetCullMask*(self: RenderingServer; probe: RID; layers: uint32): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_cull_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr probe, getPtr layers])

proc reflectionProbeSetReflectionMask*(self: RenderingServer; probe: RID; layers: uint32): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_reflection_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr probe, getPtr layers])

proc reflectionProbeSetResolution*(self: RenderingServer; probe: RID; resolution: int32): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_resolution", 3411492887)
  methodbind.ptrcall(self, [getPtr probe, getPtr resolution])

proc reflectionProbeSetMeshLodThreshold*(self: RenderingServer; probe: RID; pixels: Float): void =
  expandMethodBind(className RenderingServer, "reflection_probe_set_mesh_lod_threshold", 1794382983)
  methodbind.ptrcall(self, [getPtr probe, getPtr pixels])

proc decalCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "decal_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc decalSetSize*(self: RenderingServer; decal: RID; size: Vector3): void =
  expandMethodBind(className RenderingServer, "decal_set_size", 3227306858)
  methodbind.ptrcall(self, [getPtr decal, getPtr size])

proc decalSetTexture*(self: RenderingServer; decal: RID; `type`: RenderingServer_DecalTexture; texture: RID): void =
  expandMethodBind(className RenderingServer, "decal_set_texture", 3953344054)
  methodbind.ptrcall(self, [getPtr decal, getPtr `type`, getPtr texture])

proc decalSetEmissionEnergy*(self: RenderingServer; decal: RID; energy: Float): void =
  expandMethodBind(className RenderingServer, "decal_set_emission_energy", 1794382983)
  methodbind.ptrcall(self, [getPtr decal, getPtr energy])

proc decalSetAlbedoMix*(self: RenderingServer; decal: RID; albedoMix: Float): void =
  expandMethodBind(className RenderingServer, "decal_set_albedo_mix", 1794382983)
  methodbind.ptrcall(self, [getPtr decal, getPtr albedoMix])

proc decalSetModulate*(self: RenderingServer; decal: RID; color: Color): void =
  expandMethodBind(className RenderingServer, "decal_set_modulate", 2948539648)
  methodbind.ptrcall(self, [getPtr decal, getPtr color])

proc decalSetCullMask*(self: RenderingServer; decal: RID; mask: uint32): void =
  expandMethodBind(className RenderingServer, "decal_set_cull_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr decal, getPtr mask])

proc decalSetDistanceFade*(self: RenderingServer; decal: RID; enabled: bool; begin: Float; length: Float): void =
  expandMethodBind(className RenderingServer, "decal_set_distance_fade", 2972769666)
  methodbind.ptrcall(self, [getPtr decal, getPtr enabled, getPtr begin, getPtr length])

proc decalSetFade*(self: RenderingServer; decal: RID; above: Float; below: Float): void =
  expandMethodBind(className RenderingServer, "decal_set_fade", 2513314492)
  methodbind.ptrcall(self, [getPtr decal, getPtr above, getPtr below])

proc decalSetNormalFade*(self: RenderingServer; decal: RID; fade: Float): void =
  expandMethodBind(className RenderingServer, "decal_set_normal_fade", 1794382983)
  methodbind.ptrcall(self, [getPtr decal, getPtr fade])

proc decalsSetFilter*(self: RenderingServer; filter: RenderingServer_DecalFilter): void =
  expandMethodBind(className RenderingServer, "decals_set_filter", 3519875702)
  methodbind.ptrcall(self, [getPtr filter])

proc giSetUseHalfResolution*(self: RenderingServer; halfResolution: bool): void =
  expandMethodBind(className RenderingServer, "gi_set_use_half_resolution", 2586408642)
  methodbind.ptrcall(self, [getPtr halfResolution])

proc voxelGiCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "voxel_gi_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc voxelGiAllocateData*(self: RenderingServer; voxelGi: RID; toCellXform: Transform3D; aabb: AABB; octreeSize: Vector3i; octreeCells: PackedByteArray; dataCells: PackedByteArray; distanceField: PackedByteArray; levelCounts: PackedInt32Array): void =
  expandMethodBind(className RenderingServer, "voxel_gi_allocate_data", 4108223027)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr toCellXform, getPtr aabb, getPtr octreeSize, getPtr octreeCells, getPtr dataCells, getPtr distanceField, getPtr levelCounts])

proc voxelGiGetOctreeSize*(self: RenderingServer; voxelGi: RID): Vector3i =
  expandMethodBind(className RenderingServer, "voxel_gi_get_octree_size", 2607699645)
  var ret: encoded Vector3i
  methodbind.ptrcall(self, [getPtr voxelGi], addr ret)
  (addr ret).decode_result(Vector3i)

proc voxelGiGetOctreeCells*(self: RenderingServer; voxelGi: RID): PackedByteArray =
  expandMethodBind(className RenderingServer, "voxel_gi_get_octree_cells", 3348040486)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr voxelGi], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc voxelGiGetDataCells*(self: RenderingServer; voxelGi: RID): PackedByteArray =
  expandMethodBind(className RenderingServer, "voxel_gi_get_data_cells", 3348040486)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr voxelGi], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc voxelGiGetDistanceField*(self: RenderingServer; voxelGi: RID): PackedByteArray =
  expandMethodBind(className RenderingServer, "voxel_gi_get_distance_field", 3348040486)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr voxelGi], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc voxelGiGetLevelCounts*(self: RenderingServer; voxelGi: RID): PackedInt32Array =
  expandMethodBind(className RenderingServer, "voxel_gi_get_level_counts", 788230395)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr voxelGi], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc voxelGiGetToCellXform*(self: RenderingServer; voxelGi: RID): Transform3D =
  expandMethodBind(className RenderingServer, "voxel_gi_get_to_cell_xform", 1128465797)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr voxelGi], addr ret)
  (addr ret).decode_result(Transform3D)

proc voxelGiSetDynamicRange*(self: RenderingServer; voxelGi: RID; range: Float): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_dynamic_range", 1794382983)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr range])

proc voxelGiSetPropagation*(self: RenderingServer; voxelGi: RID; amount: Float): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_propagation", 1794382983)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr amount])

proc voxelGiSetEnergy*(self: RenderingServer; voxelGi: RID; energy: Float): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_energy", 1794382983)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr energy])

proc voxelGiSetBakedExposureNormalization*(self: RenderingServer; voxelGi: RID; bakedExposure: Float): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_baked_exposure_normalization", 1794382983)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr bakedExposure])

proc voxelGiSetBias*(self: RenderingServer; voxelGi: RID; bias: Float): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_bias", 1794382983)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr bias])

proc voxelGiSetNormalBias*(self: RenderingServer; voxelGi: RID; bias: Float): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_normal_bias", 1794382983)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr bias])

proc voxelGiSetInterior*(self: RenderingServer; voxelGi: RID; enable: bool): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_interior", 1265174801)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr enable])

proc voxelGiSetUseTwoBounces*(self: RenderingServer; voxelGi: RID; enable: bool): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_use_two_bounces", 1265174801)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr enable])

proc voxelGiSetQuality*(self: RenderingServer; quality: RenderingServer_VoxelGIQuality): void =
  expandMethodBind(className RenderingServer, "voxel_gi_set_quality", 1538689978)
  methodbind.ptrcall(self, [getPtr quality])

proc lightmapCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "lightmap_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc lightmapSetTextures*(self: RenderingServer; lightmap: RID; light: RID; usesSh: bool): void =
  expandMethodBind(className RenderingServer, "lightmap_set_textures", 2646464759)
  methodbind.ptrcall(self, [getPtr lightmap, getPtr light, getPtr usesSh])

proc lightmapSetProbeBounds*(self: RenderingServer; lightmap: RID; bounds: AABB): void =
  expandMethodBind(className RenderingServer, "lightmap_set_probe_bounds", 3696536120)
  methodbind.ptrcall(self, [getPtr lightmap, getPtr bounds])

proc lightmapSetProbeInterior*(self: RenderingServer; lightmap: RID; interior: bool): void =
  expandMethodBind(className RenderingServer, "lightmap_set_probe_interior", 1265174801)
  methodbind.ptrcall(self, [getPtr lightmap, getPtr interior])

proc lightmapSetProbeCaptureData*(self: RenderingServer; lightmap: RID; points: PackedVector3Array; pointSh: PackedColorArray; tetrahedra: PackedInt32Array; bspTree: PackedInt32Array): void =
  expandMethodBind(className RenderingServer, "lightmap_set_probe_capture_data", 3217845880)
  methodbind.ptrcall(self, [getPtr lightmap, getPtr points, getPtr pointSh, getPtr tetrahedra, getPtr bspTree])

proc lightmapGetProbeCapturePoints*(self: RenderingServer; lightmap: RID): PackedVector3Array =
  expandMethodBind(className RenderingServer, "lightmap_get_probe_capture_points", 808965560)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, [getPtr lightmap], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc lightmapGetProbeCaptureSh*(self: RenderingServer; lightmap: RID): PackedColorArray =
  expandMethodBind(className RenderingServer, "lightmap_get_probe_capture_sh", 1569415609)
  var ret: encoded PackedColorArray
  methodbind.ptrcall(self, [getPtr lightmap], addr ret)
  (addr ret).decode_result(PackedColorArray)

proc lightmapGetProbeCaptureTetrahedra*(self: RenderingServer; lightmap: RID): PackedInt32Array =
  expandMethodBind(className RenderingServer, "lightmap_get_probe_capture_tetrahedra", 788230395)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr lightmap], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc lightmapGetProbeCaptureBspTree*(self: RenderingServer; lightmap: RID): PackedInt32Array =
  expandMethodBind(className RenderingServer, "lightmap_get_probe_capture_bsp_tree", 788230395)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr lightmap], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc lightmapSetBakedExposureNormalization*(self: RenderingServer; lightmap: RID; bakedExposure: Float): void =
  expandMethodBind(className RenderingServer, "lightmap_set_baked_exposure_normalization", 1794382983)
  methodbind.ptrcall(self, [getPtr lightmap, getPtr bakedExposure])

proc lightmapSetProbeCaptureUpdateSpeed*(self: RenderingServer; speed: Float): void =
  expandMethodBind(className RenderingServer, "lightmap_set_probe_capture_update_speed", 373806689)
  methodbind.ptrcall(self, [getPtr speed])

proc particlesCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "particles_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc particlesSetMode*(self: RenderingServer; particles: RID; mode: RenderingServer_ParticlesMode): void =
  expandMethodBind(className RenderingServer, "particles_set_mode", 3492270028)
  methodbind.ptrcall(self, [getPtr particles, getPtr mode])

proc particlesSetEmitting*(self: RenderingServer; particles: RID; emitting: bool): void =
  expandMethodBind(className RenderingServer, "particles_set_emitting", 1265174801)
  methodbind.ptrcall(self, [getPtr particles, getPtr emitting])

proc particlesGetEmitting*(self: RenderingServer; particles: RID): bool =
  expandMethodBind(className RenderingServer, "particles_get_emitting", 3521089500)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr particles], addr ret)
  (addr ret).decode_result(bool)

proc particlesSetAmount*(self: RenderingServer; particles: RID; amount: int32): void =
  expandMethodBind(className RenderingServer, "particles_set_amount", 3411492887)
  methodbind.ptrcall(self, [getPtr particles, getPtr amount])

proc particlesSetAmountRatio*(self: RenderingServer; particles: RID; ratio: Float): void =
  expandMethodBind(className RenderingServer, "particles_set_amount_ratio", 1794382983)
  methodbind.ptrcall(self, [getPtr particles, getPtr ratio])

proc particlesSetLifetime*(self: RenderingServer; particles: RID; lifetime: float64): void =
  expandMethodBind(className RenderingServer, "particles_set_lifetime", 1794382983)
  methodbind.ptrcall(self, [getPtr particles, getPtr lifetime])

proc particlesSetOneShot*(self: RenderingServer; particles: RID; oneShot: bool): void =
  expandMethodBind(className RenderingServer, "particles_set_one_shot", 1265174801)
  methodbind.ptrcall(self, [getPtr particles, getPtr oneShot])

proc particlesSetPreProcessTime*(self: RenderingServer; particles: RID; time: float64): void =
  expandMethodBind(className RenderingServer, "particles_set_pre_process_time", 1794382983)
  methodbind.ptrcall(self, [getPtr particles, getPtr time])

proc particlesSetExplosivenessRatio*(self: RenderingServer; particles: RID; ratio: Float): void =
  expandMethodBind(className RenderingServer, "particles_set_explosiveness_ratio", 1794382983)
  methodbind.ptrcall(self, [getPtr particles, getPtr ratio])

proc particlesSetRandomnessRatio*(self: RenderingServer; particles: RID; ratio: Float): void =
  expandMethodBind(className RenderingServer, "particles_set_randomness_ratio", 1794382983)
  methodbind.ptrcall(self, [getPtr particles, getPtr ratio])

proc particlesSetInterpToEnd*(self: RenderingServer; particles: RID; factor: Float): void =
  expandMethodBind(className RenderingServer, "particles_set_interp_to_end", 1794382983)
  methodbind.ptrcall(self, [getPtr particles, getPtr factor])

proc particlesSetEmitterVelocity*(self: RenderingServer; particles: RID; velocity: Vector3): void =
  expandMethodBind(className RenderingServer, "particles_set_emitter_velocity", 3227306858)
  methodbind.ptrcall(self, [getPtr particles, getPtr velocity])

proc particlesSetCustomAabb*(self: RenderingServer; particles: RID; aabb: AABB): void =
  expandMethodBind(className RenderingServer, "particles_set_custom_aabb", 3696536120)
  methodbind.ptrcall(self, [getPtr particles, getPtr aabb])

proc particlesSetSpeedScale*(self: RenderingServer; particles: RID; scale: float64): void =
  expandMethodBind(className RenderingServer, "particles_set_speed_scale", 1794382983)
  methodbind.ptrcall(self, [getPtr particles, getPtr scale])

proc particlesSetUseLocalCoordinates*(self: RenderingServer; particles: RID; enable: bool): void =
  expandMethodBind(className RenderingServer, "particles_set_use_local_coordinates", 1265174801)
  methodbind.ptrcall(self, [getPtr particles, getPtr enable])

proc particlesSetProcessMaterial*(self: RenderingServer; particles: RID; material: RID): void =
  expandMethodBind(className RenderingServer, "particles_set_process_material", 395945892)
  methodbind.ptrcall(self, [getPtr particles, getPtr material])

proc particlesSetFixedFps*(self: RenderingServer; particles: RID; fps: int32): void =
  expandMethodBind(className RenderingServer, "particles_set_fixed_fps", 3411492887)
  methodbind.ptrcall(self, [getPtr particles, getPtr fps])

proc particlesSetInterpolate*(self: RenderingServer; particles: RID; enable: bool): void =
  expandMethodBind(className RenderingServer, "particles_set_interpolate", 1265174801)
  methodbind.ptrcall(self, [getPtr particles, getPtr enable])

proc particlesSetFractionalDelta*(self: RenderingServer; particles: RID; enable: bool): void =
  expandMethodBind(className RenderingServer, "particles_set_fractional_delta", 1265174801)
  methodbind.ptrcall(self, [getPtr particles, getPtr enable])

proc particlesSetCollisionBaseSize*(self: RenderingServer; particles: RID; size: Float): void =
  expandMethodBind(className RenderingServer, "particles_set_collision_base_size", 1794382983)
  methodbind.ptrcall(self, [getPtr particles, getPtr size])

proc particlesSetTransformAlign*(self: RenderingServer; particles: RID; align: RenderingServer_ParticlesTransformAlign): void =
  expandMethodBind(className RenderingServer, "particles_set_transform_align", 3264971368)
  methodbind.ptrcall(self, [getPtr particles, getPtr align])

proc particlesSetTrails*(self: RenderingServer; particles: RID; enable: bool; lengthSec: Float): void =
  expandMethodBind(className RenderingServer, "particles_set_trails", 2010054925)
  methodbind.ptrcall(self, [getPtr particles, getPtr enable, getPtr lengthSec])

proc particlesSetTrailBindPoses*(self: RenderingServer; particles: RID; bindPoses: TypedArray[Transform3D]): void =
  expandMethodBind(className RenderingServer, "particles_set_trail_bind_poses", 684822712)
  methodbind.ptrcall(self, [getPtr particles, getPtr bindPoses])

proc particlesIsInactive*(self: RenderingServer; particles: RID): bool =
  expandMethodBind(className RenderingServer, "particles_is_inactive", 3521089500)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr particles], addr ret)
  (addr ret).decode_result(bool)

proc particlesRequestProcess*(self: RenderingServer; particles: RID): void =
  expandMethodBind(className RenderingServer, "particles_request_process", 2722037293)
  methodbind.ptrcall(self, [getPtr particles])

proc particlesRestart*(self: RenderingServer; particles: RID): void =
  expandMethodBind(className RenderingServer, "particles_restart", 2722037293)
  methodbind.ptrcall(self, [getPtr particles])

proc particlesSetSubemitter*(self: RenderingServer; particles: RID; subemitterParticles: RID): void =
  expandMethodBind(className RenderingServer, "particles_set_subemitter", 395945892)
  methodbind.ptrcall(self, [getPtr particles, getPtr subemitterParticles])

proc particlesEmit*(self: RenderingServer; particles: RID; transform: Transform3D; velocity: Vector3; color: Color; custom: Color; emitFlags: uint32): void =
  expandMethodBind(className RenderingServer, "particles_emit", 4043136117)
  methodbind.ptrcall(self, [getPtr particles, getPtr transform, getPtr velocity, getPtr color, getPtr custom, getPtr emitFlags])

proc particlesSetDrawOrder*(self: RenderingServer; particles: RID; order: RenderingServer_ParticlesDrawOrder): void =
  expandMethodBind(className RenderingServer, "particles_set_draw_order", 935028487)
  methodbind.ptrcall(self, [getPtr particles, getPtr order])

proc particlesSetDrawPasses*(self: RenderingServer; particles: RID; count: int32): void =
  expandMethodBind(className RenderingServer, "particles_set_draw_passes", 3411492887)
  methodbind.ptrcall(self, [getPtr particles, getPtr count])

proc particlesSetDrawPassMesh*(self: RenderingServer; particles: RID; pass: int32; mesh: RID): void =
  expandMethodBind(className RenderingServer, "particles_set_draw_pass_mesh", 2310537182)
  methodbind.ptrcall(self, [getPtr particles, getPtr pass, getPtr mesh])

proc particlesGetCurrentAabb*(self: RenderingServer; particles: RID): AABB =
  expandMethodBind(className RenderingServer, "particles_get_current_aabb", 3952830260)
  var ret: encoded AABB
  methodbind.ptrcall(self, [getPtr particles], addr ret)
  (addr ret).decode_result(AABB)

proc particlesSetEmissionTransform*(self: RenderingServer; particles: RID; transform: Transform3D): void =
  expandMethodBind(className RenderingServer, "particles_set_emission_transform", 3935195649)
  methodbind.ptrcall(self, [getPtr particles, getPtr transform])

proc particlesCollisionCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "particles_collision_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc particlesCollisionSetCollisionType*(self: RenderingServer; particlesCollision: RID; `type`: RenderingServer_ParticlesCollisionType): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_collision_type", 1497044930)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr `type`])

proc particlesCollisionSetCullMask*(self: RenderingServer; particlesCollision: RID; mask: uint32): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_cull_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr mask])

proc particlesCollisionSetSphereRadius*(self: RenderingServer; particlesCollision: RID; radius: Float): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_sphere_radius", 1794382983)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr radius])

proc particlesCollisionSetBoxExtents*(self: RenderingServer; particlesCollision: RID; extents: Vector3): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_box_extents", 3227306858)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr extents])

proc particlesCollisionSetAttractorStrength*(self: RenderingServer; particlesCollision: RID; strength: Float): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_attractor_strength", 1794382983)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr strength])

proc particlesCollisionSetAttractorDirectionality*(self: RenderingServer; particlesCollision: RID; amount: Float): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_attractor_directionality", 1794382983)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr amount])

proc particlesCollisionSetAttractorAttenuation*(self: RenderingServer; particlesCollision: RID; curve: Float): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_attractor_attenuation", 1794382983)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr curve])

proc particlesCollisionSetFieldTexture*(self: RenderingServer; particlesCollision: RID; texture: RID): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_field_texture", 395945892)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr texture])

proc particlesCollisionHeightFieldUpdate*(self: RenderingServer; particlesCollision: RID): void =
  expandMethodBind(className RenderingServer, "particles_collision_height_field_update", 2722037293)
  methodbind.ptrcall(self, [getPtr particlesCollision])

proc particlesCollisionSetHeightFieldResolution*(self: RenderingServer; particlesCollision: RID; resolution: RenderingServer_ParticlesCollisionHeightfieldResolution): void =
  expandMethodBind(className RenderingServer, "particles_collision_set_height_field_resolution", 962977297)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr resolution])

proc fogVolumeCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "fog_volume_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc fogVolumeSetShape*(self: RenderingServer; fogVolume: RID; shape: RenderingServer_FogVolumeShape): void =
  expandMethodBind(className RenderingServer, "fog_volume_set_shape", 3818703106)
  methodbind.ptrcall(self, [getPtr fogVolume, getPtr shape])

proc fogVolumeSetSize*(self: RenderingServer; fogVolume: RID; size: Vector3): void =
  expandMethodBind(className RenderingServer, "fog_volume_set_size", 3227306858)
  methodbind.ptrcall(self, [getPtr fogVolume, getPtr size])

proc fogVolumeSetMaterial*(self: RenderingServer; fogVolume: RID; material: RID): void =
  expandMethodBind(className RenderingServer, "fog_volume_set_material", 395945892)
  methodbind.ptrcall(self, [getPtr fogVolume, getPtr material])

proc visibilityNotifierCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "visibility_notifier_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc visibilityNotifierSetAabb*(self: RenderingServer; notifier: RID; aabb: AABB): void =
  expandMethodBind(className RenderingServer, "visibility_notifier_set_aabb", 3696536120)
  methodbind.ptrcall(self, [getPtr notifier, getPtr aabb])

proc visibilityNotifierSetCallbacks*(self: RenderingServer; notifier: RID; enterCallable: Callable; exitCallable: Callable): void =
  expandMethodBind(className RenderingServer, "visibility_notifier_set_callbacks", 2689735388)
  methodbind.ptrcall(self, [getPtr notifier, getPtr enterCallable, getPtr exitCallable])

proc occluderCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "occluder_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc occluderSetMesh*(self: RenderingServer; occluder: RID; vertices: PackedVector3Array; indices: PackedInt32Array): void =
  expandMethodBind(className RenderingServer, "occluder_set_mesh", 3854404263)
  methodbind.ptrcall(self, [getPtr occluder, getPtr vertices, getPtr indices])

proc cameraCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "camera_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc cameraSetPerspective*(self: RenderingServer; camera: RID; fovyDegrees: Float; zNear: Float; zFar: Float): void =
  expandMethodBind(className RenderingServer, "camera_set_perspective", 157498339)
  methodbind.ptrcall(self, [getPtr camera, getPtr fovyDegrees, getPtr zNear, getPtr zFar])

proc cameraSetOrthogonal*(self: RenderingServer; camera: RID; size: Float; zNear: Float; zFar: Float): void =
  expandMethodBind(className RenderingServer, "camera_set_orthogonal", 157498339)
  methodbind.ptrcall(self, [getPtr camera, getPtr size, getPtr zNear, getPtr zFar])

proc cameraSetFrustum*(self: RenderingServer; camera: RID; size: Float; offset: Vector2; zNear: Float; zFar: Float): void =
  expandMethodBind(className RenderingServer, "camera_set_frustum", 1889878953)
  methodbind.ptrcall(self, [getPtr camera, getPtr size, getPtr offset, getPtr zNear, getPtr zFar])

proc cameraSetTransform*(self: RenderingServer; camera: RID; transform: Transform3D): void =
  expandMethodBind(className RenderingServer, "camera_set_transform", 3935195649)
  methodbind.ptrcall(self, [getPtr camera, getPtr transform])

proc cameraSetCullMask*(self: RenderingServer; camera: RID; layers: uint32): void =
  expandMethodBind(className RenderingServer, "camera_set_cull_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr camera, getPtr layers])

proc cameraSetEnvironment*(self: RenderingServer; camera: RID; env: RID): void =
  expandMethodBind(className RenderingServer, "camera_set_environment", 395945892)
  methodbind.ptrcall(self, [getPtr camera, getPtr env])

proc cameraSetCameraAttributes*(self: RenderingServer; camera: RID; effects: RID): void =
  expandMethodBind(className RenderingServer, "camera_set_camera_attributes", 395945892)
  methodbind.ptrcall(self, [getPtr camera, getPtr effects])

proc cameraSetCompositor*(self: RenderingServer; camera: RID; compositor: RID): void =
  expandMethodBind(className RenderingServer, "camera_set_compositor", 395945892)
  methodbind.ptrcall(self, [getPtr camera, getPtr compositor])

proc cameraSetUseVerticalAspect*(self: RenderingServer; camera: RID; enable: bool): void =
  expandMethodBind(className RenderingServer, "camera_set_use_vertical_aspect", 1265174801)
  methodbind.ptrcall(self, [getPtr camera, getPtr enable])

proc viewportCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "viewport_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc viewportSetUseXr*(self: RenderingServer; viewport: RID; useXr: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_use_xr", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr useXr])

proc viewportSetSize*(self: RenderingServer; viewport: RID; width: int32; height: int32): void =
  expandMethodBind(className RenderingServer, "viewport_set_size", 4288446313)
  methodbind.ptrcall(self, [getPtr viewport, getPtr width, getPtr height])

proc viewportSetActive*(self: RenderingServer; viewport: RID; active: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_active", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr active])

proc viewportSetParentViewport*(self: RenderingServer; viewport: RID; parentViewport: RID): void =
  expandMethodBind(className RenderingServer, "viewport_set_parent_viewport", 395945892)
  methodbind.ptrcall(self, [getPtr viewport, getPtr parentViewport])

proc viewportAttachToScreen*(self: RenderingServer; viewport: RID; rect: Rect2 = rect2(0, 0, 0, 0); screen: int32 = 0): void =
  expandMethodBind(className RenderingServer, "viewport_attach_to_screen", 1062245816)
  methodbind.ptrcall(self, [getPtr viewport, getPtr rect, getPtr screen])

proc viewportSetRenderDirectToScreen*(self: RenderingServer; viewport: RID; enabled: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_render_direct_to_screen", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enabled])

proc viewportSetCanvasCullMask*(self: RenderingServer; viewport: RID; canvasCullMask: uint32): void =
  expandMethodBind(className RenderingServer, "viewport_set_canvas_cull_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr viewport, getPtr canvasCullMask])

proc viewportSetScaling3DMode*(self: RenderingServer; viewport: RID; scaling3DMode: RenderingServer_ViewportScaling3DMode): void =
  expandMethodBind(className RenderingServer, "viewport_set_scaling_3d_mode", 2386524376)
  methodbind.ptrcall(self, [getPtr viewport, getPtr scaling3DMode])

proc viewportSetScaling3DScale*(self: RenderingServer; viewport: RID; scale: Float): void =
  expandMethodBind(className RenderingServer, "viewport_set_scaling_3d_scale", 1794382983)
  methodbind.ptrcall(self, [getPtr viewport, getPtr scale])

proc viewportSetFsrSharpness*(self: RenderingServer; viewport: RID; sharpness: Float): void =
  expandMethodBind(className RenderingServer, "viewport_set_fsr_sharpness", 1794382983)
  methodbind.ptrcall(self, [getPtr viewport, getPtr sharpness])

proc viewportSetTextureMipmapBias*(self: RenderingServer; viewport: RID; mipmapBias: Float): void =
  expandMethodBind(className RenderingServer, "viewport_set_texture_mipmap_bias", 1794382983)
  methodbind.ptrcall(self, [getPtr viewport, getPtr mipmapBias])

proc viewportSetUpdateMode*(self: RenderingServer; viewport: RID; updateMode: RenderingServer_ViewportUpdateMode): void =
  expandMethodBind(className RenderingServer, "viewport_set_update_mode", 3161116010)
  methodbind.ptrcall(self, [getPtr viewport, getPtr updateMode])

proc viewportGetUpdateMode*(self: RenderingServer; viewport: RID): RenderingServer_ViewportUpdateMode =
  expandMethodBind(className RenderingServer, "viewport_get_update_mode", 3803901472)
  var ret: encoded RenderingServer_ViewportUpdateMode
  methodbind.ptrcall(self, [getPtr viewport], addr ret)
  (addr ret).decode_result(RenderingServer_ViewportUpdateMode)

proc viewportSetClearMode*(self: RenderingServer; viewport: RID; clearMode: RenderingServer_ViewportClearMode): void =
  expandMethodBind(className RenderingServer, "viewport_set_clear_mode", 3628367896)
  methodbind.ptrcall(self, [getPtr viewport, getPtr clearMode])

proc viewportGetRenderTarget*(self: RenderingServer; viewport: RID): RID =
  expandMethodBind(className RenderingServer, "viewport_get_render_target", 3814569979)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr viewport], addr ret)
  (addr ret).decode_result(RID)

proc viewportGetTexture*(self: RenderingServer; viewport: RID): RID =
  expandMethodBind(className RenderingServer, "viewport_get_texture", 3814569979)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr viewport], addr ret)
  (addr ret).decode_result(RID)

proc viewportSetDisable3D*(self: RenderingServer; viewport: RID; disable: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_disable_3d", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr disable])

proc viewportSetDisable2D*(self: RenderingServer; viewport: RID; disable: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_disable_2d", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr disable])

proc viewportSetEnvironmentMode*(self: RenderingServer; viewport: RID; mode: RenderingServer_ViewportEnvironmentMode): void =
  expandMethodBind(className RenderingServer, "viewport_set_environment_mode", 2196892182)
  methodbind.ptrcall(self, [getPtr viewport, getPtr mode])

proc viewportAttachCamera*(self: RenderingServer; viewport: RID; camera: RID): void =
  expandMethodBind(className RenderingServer, "viewport_attach_camera", 395945892)
  methodbind.ptrcall(self, [getPtr viewport, getPtr camera])

proc viewportSetScenario*(self: RenderingServer; viewport: RID; scenario: RID): void =
  expandMethodBind(className RenderingServer, "viewport_set_scenario", 395945892)
  methodbind.ptrcall(self, [getPtr viewport, getPtr scenario])

proc viewportAttachCanvas*(self: RenderingServer; viewport: RID; canvas: RID): void =
  expandMethodBind(className RenderingServer, "viewport_attach_canvas", 395945892)
  methodbind.ptrcall(self, [getPtr viewport, getPtr canvas])

proc viewportRemoveCanvas*(self: RenderingServer; viewport: RID; canvas: RID): void =
  expandMethodBind(className RenderingServer, "viewport_remove_canvas", 395945892)
  methodbind.ptrcall(self, [getPtr viewport, getPtr canvas])

proc viewportSetSnap2DTransformsToPixel*(self: RenderingServer; viewport: RID; enabled: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_snap_2d_transforms_to_pixel", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enabled])

proc viewportSetSnap2DVerticesToPixel*(self: RenderingServer; viewport: RID; enabled: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_snap_2d_vertices_to_pixel", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enabled])

proc viewportSetDefaultCanvasItemTextureFilter*(self: RenderingServer; viewport: RID; filter: RenderingServer_CanvasItemTextureFilter): void =
  expandMethodBind(className RenderingServer, "viewport_set_default_canvas_item_texture_filter", 1155129294)
  methodbind.ptrcall(self, [getPtr viewport, getPtr filter])

proc viewportSetDefaultCanvasItemTextureRepeat*(self: RenderingServer; viewport: RID; repeat: RenderingServer_CanvasItemTextureRepeat): void =
  expandMethodBind(className RenderingServer, "viewport_set_default_canvas_item_texture_repeat", 1652956681)
  methodbind.ptrcall(self, [getPtr viewport, getPtr repeat])

proc viewportSetCanvasTransform*(self: RenderingServer; viewport: RID; canvas: RID; offset: Transform2D): void =
  expandMethodBind(className RenderingServer, "viewport_set_canvas_transform", 3608606053)
  methodbind.ptrcall(self, [getPtr viewport, getPtr canvas, getPtr offset])

proc viewportSetCanvasStacking*(self: RenderingServer; viewport: RID; canvas: RID; layer: int32; sublayer: int32): void =
  expandMethodBind(className RenderingServer, "viewport_set_canvas_stacking", 3713930247)
  methodbind.ptrcall(self, [getPtr viewport, getPtr canvas, getPtr layer, getPtr sublayer])

proc viewportSetTransparentBackground*(self: RenderingServer; viewport: RID; enabled: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_transparent_background", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enabled])

proc viewportSetGlobalCanvasTransform*(self: RenderingServer; viewport: RID; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "viewport_set_global_canvas_transform", 1246044741)
  methodbind.ptrcall(self, [getPtr viewport, getPtr transform])

proc viewportSetSdfOversizeAndScale*(self: RenderingServer; viewport: RID; oversize: RenderingServer_ViewportSDFOversize; scale: RenderingServer_ViewportSDFScale): void =
  expandMethodBind(className RenderingServer, "viewport_set_sdf_oversize_and_scale", 1329198632)
  methodbind.ptrcall(self, [getPtr viewport, getPtr oversize, getPtr scale])

proc viewportSetPositionalShadowAtlasSize*(self: RenderingServer; viewport: RID; size: int32; use16Bits: bool = false): void =
  expandMethodBind(className RenderingServer, "viewport_set_positional_shadow_atlas_size", 1904426712)
  methodbind.ptrcall(self, [getPtr viewport, getPtr size, getPtr use16Bits])

proc viewportSetPositionalShadowAtlasQuadrantSubdivision*(self: RenderingServer; viewport: RID; quadrant: int32; subdivision: int32): void =
  expandMethodBind(className RenderingServer, "viewport_set_positional_shadow_atlas_quadrant_subdivision", 4288446313)
  methodbind.ptrcall(self, [getPtr viewport, getPtr quadrant, getPtr subdivision])

proc viewportSetMsaa3D*(self: RenderingServer; viewport: RID; msaa: RenderingServer_ViewportMSAA): void =
  expandMethodBind(className RenderingServer, "viewport_set_msaa_3d", 3764433340)
  methodbind.ptrcall(self, [getPtr viewport, getPtr msaa])

proc viewportSetMsaa2D*(self: RenderingServer; viewport: RID; msaa: RenderingServer_ViewportMSAA): void =
  expandMethodBind(className RenderingServer, "viewport_set_msaa_2d", 3764433340)
  methodbind.ptrcall(self, [getPtr viewport, getPtr msaa])

proc viewportSetUseHdr2D*(self: RenderingServer; viewport: RID; enabled: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_use_hdr_2d", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enabled])

proc viewportSetScreenSpaceAa*(self: RenderingServer; viewport: RID; mode: RenderingServer_ViewportScreenSpaceAA): void =
  expandMethodBind(className RenderingServer, "viewport_set_screen_space_aa", 1447279591)
  methodbind.ptrcall(self, [getPtr viewport, getPtr mode])

proc viewportSetUseTaa*(self: RenderingServer; viewport: RID; enable: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_use_taa", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enable])

proc viewportSetUseDebanding*(self: RenderingServer; viewport: RID; enable: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_use_debanding", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enable])

proc viewportSetUseOcclusionCulling*(self: RenderingServer; viewport: RID; enable: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_use_occlusion_culling", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enable])

proc viewportSetOcclusionRaysPerThread*(self: RenderingServer; raysPerThread: int32): void =
  expandMethodBind(className RenderingServer, "viewport_set_occlusion_rays_per_thread", 1286410249)
  methodbind.ptrcall(self, [getPtr raysPerThread])

proc viewportSetOcclusionCullingBuildQuality*(self: RenderingServer; quality: RenderingServer_ViewportOcclusionCullingBuildQuality): void =
  expandMethodBind(className RenderingServer, "viewport_set_occlusion_culling_build_quality", 2069725696)
  methodbind.ptrcall(self, [getPtr quality])

proc viewportGetRenderInfo*(self: RenderingServer; viewport: RID; `type`: RenderingServer_ViewportRenderInfoType; info: RenderingServer_ViewportRenderInfo): int32 =
  expandMethodBind(className RenderingServer, "viewport_get_render_info", 2041262392)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr viewport, getPtr `type`, getPtr info], addr ret)
  (addr ret).decode_result(int32)

proc viewportSetDebugDraw*(self: RenderingServer; viewport: RID; draw: RenderingServer_ViewportDebugDraw): void =
  expandMethodBind(className RenderingServer, "viewport_set_debug_draw", 2089420930)
  methodbind.ptrcall(self, [getPtr viewport, getPtr draw])

proc viewportSetMeasureRenderTime*(self: RenderingServer; viewport: RID; enable: bool): void =
  expandMethodBind(className RenderingServer, "viewport_set_measure_render_time", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enable])

proc viewportGetMeasuredRenderTimeCpu*(self: RenderingServer; viewport: RID): float64 =
  expandMethodBind(className RenderingServer, "viewport_get_measured_render_time_cpu", 866169185)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr viewport], addr ret)
  (addr ret).decode_result(float64)

proc viewportGetMeasuredRenderTimeGpu*(self: RenderingServer; viewport: RID): float64 =
  expandMethodBind(className RenderingServer, "viewport_get_measured_render_time_gpu", 866169185)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr viewport], addr ret)
  (addr ret).decode_result(float64)

proc viewportSetVrsMode*(self: RenderingServer; viewport: RID; mode: RenderingServer_ViewportVRSMode): void =
  expandMethodBind(className RenderingServer, "viewport_set_vrs_mode", 398809874)
  methodbind.ptrcall(self, [getPtr viewport, getPtr mode])

proc viewportSetVrsUpdateMode*(self: RenderingServer; viewport: RID; mode: RenderingServer_ViewportVRSUpdateMode): void =
  expandMethodBind(className RenderingServer, "viewport_set_vrs_update_mode", 2696154815)
  methodbind.ptrcall(self, [getPtr viewport, getPtr mode])

proc viewportSetVrsTexture*(self: RenderingServer; viewport: RID; texture: RID): void =
  expandMethodBind(className RenderingServer, "viewport_set_vrs_texture", 395945892)
  methodbind.ptrcall(self, [getPtr viewport, getPtr texture])

proc skyCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "sky_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc skySetRadianceSize*(self: RenderingServer; sky: RID; radianceSize: int32): void =
  expandMethodBind(className RenderingServer, "sky_set_radiance_size", 3411492887)
  methodbind.ptrcall(self, [getPtr sky, getPtr radianceSize])

proc skySetMode*(self: RenderingServer; sky: RID; mode: RenderingServer_SkyMode): void =
  expandMethodBind(className RenderingServer, "sky_set_mode", 3279019937)
  methodbind.ptrcall(self, [getPtr sky, getPtr mode])

proc skySetMaterial*(self: RenderingServer; sky: RID; material: RID): void =
  expandMethodBind(className RenderingServer, "sky_set_material", 395945892)
  methodbind.ptrcall(self, [getPtr sky, getPtr material])

proc skyBakePanorama*(self: RenderingServer; sky: RID; energy: Float; bakeIrradiance: bool; size: Vector2i): gdref Image =
  expandMethodBind(className RenderingServer, "sky_bake_panorama", 3875285818)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, [getPtr sky, getPtr energy, getPtr bakeIrradiance, getPtr size], addr ret)
  (addr ret).decode_result(gdref Image)

proc compositorEffectCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "compositor_effect_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc compositorEffectSetEnabled*(self: RenderingServer; effect: RID; enabled: bool): void =
  expandMethodBind(className RenderingServer, "compositor_effect_set_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr effect, getPtr enabled])

proc compositorEffectSetCallback*(self: RenderingServer; effect: RID; callbackType: RenderingServer_CompositorEffectCallbackType; callback: Callable): void =
  expandMethodBind(className RenderingServer, "compositor_effect_set_callback", 487412485)
  methodbind.ptrcall(self, [getPtr effect, getPtr callbackType, getPtr callback])

proc compositorEffectSetFlag*(self: RenderingServer; effect: RID; flag: RenderingServer_CompositorEffectFlags; set: bool): void =
  expandMethodBind(className RenderingServer, "compositor_effect_set_flag", 3659527075)
  methodbind.ptrcall(self, [getPtr effect, getPtr flag, getPtr set])

proc compositorCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "compositor_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc compositorSetCompositorEffects*(self: RenderingServer; compositor: RID; effects: TypedArray[RID]): void =
  expandMethodBind(className RenderingServer, "compositor_set_compositor_effects", 684822712)
  methodbind.ptrcall(self, [getPtr compositor, getPtr effects])

proc environmentCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "environment_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc environmentSetBackground*(self: RenderingServer; env: RID; bg: RenderingServer_EnvironmentBG): void =
  expandMethodBind(className RenderingServer, "environment_set_background", 3937328877)
  methodbind.ptrcall(self, [getPtr env, getPtr bg])

proc environmentSetSky*(self: RenderingServer; env: RID; sky: RID): void =
  expandMethodBind(className RenderingServer, "environment_set_sky", 395945892)
  methodbind.ptrcall(self, [getPtr env, getPtr sky])

proc environmentSetSkyCustomFov*(self: RenderingServer; env: RID; scale: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_sky_custom_fov", 1794382983)
  methodbind.ptrcall(self, [getPtr env, getPtr scale])

proc environmentSetSkyOrientation*(self: RenderingServer; env: RID; orientation: Basis): void =
  expandMethodBind(className RenderingServer, "environment_set_sky_orientation", 1735850857)
  methodbind.ptrcall(self, [getPtr env, getPtr orientation])

proc environmentSetBgColor*(self: RenderingServer; env: RID; color: Color): void =
  expandMethodBind(className RenderingServer, "environment_set_bg_color", 2948539648)
  methodbind.ptrcall(self, [getPtr env, getPtr color])

proc environmentSetBgEnergy*(self: RenderingServer; env: RID; multiplier: Float; exposureValue: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_bg_energy", 2513314492)
  methodbind.ptrcall(self, [getPtr env, getPtr multiplier, getPtr exposureValue])

proc environmentSetCanvasMaxLayer*(self: RenderingServer; env: RID; maxLayer: int32): void =
  expandMethodBind(className RenderingServer, "environment_set_canvas_max_layer", 3411492887)
  methodbind.ptrcall(self, [getPtr env, getPtr maxLayer])

proc environmentSetAmbientLight*(self: RenderingServer; env: RID; color: Color; ambient: RenderingServer_EnvironmentAmbientSource = envAmbientSourceBg; energy: Float = 1.0; skyContibution: Float = 0.0; reflectionSource: RenderingServer_EnvironmentReflectionSource = envReflectionSourceBg): void =
  expandMethodBind(className RenderingServer, "environment_set_ambient_light", 1214961493)
  methodbind.ptrcall(self, [getPtr env, getPtr color, getPtr ambient, getPtr energy, getPtr skyContibution, getPtr reflectionSource])

proc environmentSetGlow*(self: RenderingServer; env: RID; enable: bool; levels: PackedFloat32Array; intensity: Float; strength: Float; mix: Float; bloomThreshold: Float; blendMode: RenderingServer_EnvironmentGlowBlendMode; hdrBleedThreshold: Float; hdrBleedScale: Float; hdrLuminanceCap: Float; glowMapStrength: Float; glowMap: RID): void =
  expandMethodBind(className RenderingServer, "environment_set_glow", 2421724940)
  methodbind.ptrcall(self, [getPtr env, getPtr enable, getPtr levels, getPtr intensity, getPtr strength, getPtr mix, getPtr bloomThreshold, getPtr blendMode, getPtr hdrBleedThreshold, getPtr hdrBleedScale, getPtr hdrLuminanceCap, getPtr glowMapStrength, getPtr glowMap])

proc environmentSetTonemap*(self: RenderingServer; env: RID; toneMapper: RenderingServer_EnvironmentToneMapper; exposure: Float; white: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_tonemap", 2914312638)
  methodbind.ptrcall(self, [getPtr env, getPtr toneMapper, getPtr exposure, getPtr white])

proc environmentSetAdjustment*(self: RenderingServer; env: RID; enable: bool; brightness: Float; contrast: Float; saturation: Float; use1DColorCorrection: bool; colorCorrection: RID): void =
  expandMethodBind(className RenderingServer, "environment_set_adjustment", 876799838)
  methodbind.ptrcall(self, [getPtr env, getPtr enable, getPtr brightness, getPtr contrast, getPtr saturation, getPtr use1DColorCorrection, getPtr colorCorrection])

proc environmentSetSsr*(self: RenderingServer; env: RID; enable: bool; maxSteps: int32; fadeIn: Float; fadeOut: Float; depthTolerance: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_ssr", 3607294374)
  methodbind.ptrcall(self, [getPtr env, getPtr enable, getPtr maxSteps, getPtr fadeIn, getPtr fadeOut, getPtr depthTolerance])

proc environmentSetSsao*(self: RenderingServer; env: RID; enable: bool; radius: Float; intensity: Float; power: Float; detail: Float; horizon: Float; sharpness: Float; lightAffect: Float; aoChannelAffect: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_ssao", 3994732740)
  methodbind.ptrcall(self, [getPtr env, getPtr enable, getPtr radius, getPtr intensity, getPtr power, getPtr detail, getPtr horizon, getPtr sharpness, getPtr lightAffect, getPtr aoChannelAffect])

proc environmentSetFog*(self: RenderingServer; env: RID; enable: bool; lightColor: Color; lightEnergy: Float; sunScatter: Float; density: Float; height: Float; heightDensity: Float; aerialPerspective: Float; skyAffect: Float; fogMode: RenderingServer_EnvironmentFogMode = envFogModeExponential): void =
  expandMethodBind(className RenderingServer, "environment_set_fog", 105051629)
  methodbind.ptrcall(self, [getPtr env, getPtr enable, getPtr lightColor, getPtr lightEnergy, getPtr sunScatter, getPtr density, getPtr height, getPtr heightDensity, getPtr aerialPerspective, getPtr skyAffect, getPtr fogMode])

proc environmentSetSdfgi*(self: RenderingServer; env: RID; enable: bool; cascades: int32; minCellSize: Float; yScale: RenderingServer_EnvironmentSDFGIYScale; useOcclusion: bool; bounceFeedback: Float; readSky: bool; energy: Float; normalBias: Float; probeBias: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_sdfgi", 3519144388)
  methodbind.ptrcall(self, [getPtr env, getPtr enable, getPtr cascades, getPtr minCellSize, getPtr yScale, getPtr useOcclusion, getPtr bounceFeedback, getPtr readSky, getPtr energy, getPtr normalBias, getPtr probeBias])

proc environmentSetVolumetricFog*(self: RenderingServer; env: RID; enable: bool; density: Float; albedo: Color; emission: Color; emissionEnergy: Float; anisotropy: Float; length: Float; pDetailSpread: Float; giInject: Float; temporalReprojection: bool; temporalReprojectionAmount: Float; ambientInject: Float; skyAffect: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_volumetric_fog", 1553633833)
  methodbind.ptrcall(self, [getPtr env, getPtr enable, getPtr density, getPtr albedo, getPtr emission, getPtr emissionEnergy, getPtr anisotropy, getPtr length, getPtr pDetailSpread, getPtr giInject, getPtr temporalReprojection, getPtr temporalReprojectionAmount, getPtr ambientInject, getPtr skyAffect])

proc environmentGlowSetUseBicubicUpscale*(self: RenderingServer; enable: bool): void =
  expandMethodBind(className RenderingServer, "environment_glow_set_use_bicubic_upscale", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc environmentSetSsrRoughnessQuality*(self: RenderingServer; quality: RenderingServer_EnvironmentSSRRoughnessQuality): void =
  expandMethodBind(className RenderingServer, "environment_set_ssr_roughness_quality", 1190026788)
  methodbind.ptrcall(self, [getPtr quality])

proc environmentSetSsaoQuality*(self: RenderingServer; quality: RenderingServer_EnvironmentSSAOQuality; halfSize: bool; adaptiveTarget: Float; blurPasses: int32; fadeoutFrom: Float; fadeoutTo: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_ssao_quality", 189753569)
  methodbind.ptrcall(self, [getPtr quality, getPtr halfSize, getPtr adaptiveTarget, getPtr blurPasses, getPtr fadeoutFrom, getPtr fadeoutTo])

proc environmentSetSsilQuality*(self: RenderingServer; quality: RenderingServer_EnvironmentSSILQuality; halfSize: bool; adaptiveTarget: Float; blurPasses: int32; fadeoutFrom: Float; fadeoutTo: Float): void =
  expandMethodBind(className RenderingServer, "environment_set_ssil_quality", 1713836683)
  methodbind.ptrcall(self, [getPtr quality, getPtr halfSize, getPtr adaptiveTarget, getPtr blurPasses, getPtr fadeoutFrom, getPtr fadeoutTo])

proc environmentSetSdfgiRayCount*(self: RenderingServer; rayCount: RenderingServer_EnvironmentSDFGIRayCount): void =
  expandMethodBind(className RenderingServer, "environment_set_sdfgi_ray_count", 340137951)
  methodbind.ptrcall(self, [getPtr rayCount])

proc environmentSetSdfgiFramesToConverge*(self: RenderingServer; frames: RenderingServer_EnvironmentSDFGIFramesToConverge): void =
  expandMethodBind(className RenderingServer, "environment_set_sdfgi_frames_to_converge", 2182444374)
  methodbind.ptrcall(self, [getPtr frames])

proc environmentSetSdfgiFramesToUpdateLight*(self: RenderingServer; frames: RenderingServer_EnvironmentSDFGIFramesToUpdateLight): void =
  expandMethodBind(className RenderingServer, "environment_set_sdfgi_frames_to_update_light", 1251144068)
  methodbind.ptrcall(self, [getPtr frames])

proc environmentSetVolumetricFogVolumeSize*(self: RenderingServer; size: int32; depth: int32): void =
  expandMethodBind(className RenderingServer, "environment_set_volumetric_fog_volume_size", 3937882851)
  methodbind.ptrcall(self, [getPtr size, getPtr depth])

proc environmentSetVolumetricFogFilterActive*(self: RenderingServer; active: bool): void =
  expandMethodBind(className RenderingServer, "environment_set_volumetric_fog_filter_active", 2586408642)
  methodbind.ptrcall(self, [getPtr active])

proc environmentBakePanorama*(self: RenderingServer; environment: RID; bakeIrradiance: bool; size: Vector2i): gdref Image =
  expandMethodBind(className RenderingServer, "environment_bake_panorama", 2452908646)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, [getPtr environment, getPtr bakeIrradiance, getPtr size], addr ret)
  (addr ret).decode_result(gdref Image)

proc screenSpaceRoughnessLimiterSetActive*(self: RenderingServer; enable: bool; amount: Float; limit: Float): void =
  expandMethodBind(className RenderingServer, "screen_space_roughness_limiter_set_active", 916716790)
  methodbind.ptrcall(self, [getPtr enable, getPtr amount, getPtr limit])

proc subSurfaceScatteringSetQuality*(self: RenderingServer; quality: RenderingServer_SubSurfaceScatteringQuality): void =
  expandMethodBind(className RenderingServer, "sub_surface_scattering_set_quality", 64571803)
  methodbind.ptrcall(self, [getPtr quality])

proc subSurfaceScatteringSetScale*(self: RenderingServer; scale: Float; depthScale: Float): void =
  expandMethodBind(className RenderingServer, "sub_surface_scattering_set_scale", 1017552074)
  methodbind.ptrcall(self, [getPtr scale, getPtr depthScale])

proc cameraAttributesCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "camera_attributes_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc cameraAttributesSetDofBlurQuality*(self: RenderingServer; quality: RenderingServer_DOFBlurQuality; useJitter: bool): void =
  expandMethodBind(className RenderingServer, "camera_attributes_set_dof_blur_quality", 2220136795)
  methodbind.ptrcall(self, [getPtr quality, getPtr useJitter])

proc cameraAttributesSetDofBlurBokehShape*(self: RenderingServer; shape: RenderingServer_DOFBokehShape): void =
  expandMethodBind(className RenderingServer, "camera_attributes_set_dof_blur_bokeh_shape", 1205058394)
  methodbind.ptrcall(self, [getPtr shape])

proc cameraAttributesSetDofBlur*(self: RenderingServer; cameraAttributes: RID; farEnable: bool; farDistance: Float; farTransition: Float; nearEnable: bool; nearDistance: Float; nearTransition: Float; amount: Float): void =
  expandMethodBind(className RenderingServer, "camera_attributes_set_dof_blur", 316272616)
  methodbind.ptrcall(self, [getPtr cameraAttributes, getPtr farEnable, getPtr farDistance, getPtr farTransition, getPtr nearEnable, getPtr nearDistance, getPtr nearTransition, getPtr amount])

proc cameraAttributesSetExposure*(self: RenderingServer; cameraAttributes: RID; multiplier: Float; normalization: Float): void =
  expandMethodBind(className RenderingServer, "camera_attributes_set_exposure", 2513314492)
  methodbind.ptrcall(self, [getPtr cameraAttributes, getPtr multiplier, getPtr normalization])

proc cameraAttributesSetAutoExposure*(self: RenderingServer; cameraAttributes: RID; enable: bool; minSensitivity: Float; maxSensitivity: Float; speed: Float; scale: Float): void =
  expandMethodBind(className RenderingServer, "camera_attributes_set_auto_exposure", 4266986332)
  methodbind.ptrcall(self, [getPtr cameraAttributes, getPtr enable, getPtr minSensitivity, getPtr maxSensitivity, getPtr speed, getPtr scale])

proc scenarioCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "scenario_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc scenarioSetEnvironment*(self: RenderingServer; scenario: RID; environment: RID): void =
  expandMethodBind(className RenderingServer, "scenario_set_environment", 395945892)
  methodbind.ptrcall(self, [getPtr scenario, getPtr environment])

proc scenarioSetFallbackEnvironment*(self: RenderingServer; scenario: RID; environment: RID): void =
  expandMethodBind(className RenderingServer, "scenario_set_fallback_environment", 395945892)
  methodbind.ptrcall(self, [getPtr scenario, getPtr environment])

proc scenarioSetCameraAttributes*(self: RenderingServer; scenario: RID; effects: RID): void =
  expandMethodBind(className RenderingServer, "scenario_set_camera_attributes", 395945892)
  methodbind.ptrcall(self, [getPtr scenario, getPtr effects])

proc scenarioSetCompositor*(self: RenderingServer; scenario: RID; compositor: RID): void =
  expandMethodBind(className RenderingServer, "scenario_set_compositor", 395945892)
  methodbind.ptrcall(self, [getPtr scenario, getPtr compositor])

proc instanceCreate2*(self: RenderingServer; base: RID; scenario: RID): RID =
  expandMethodBind(className RenderingServer, "instance_create2", 746547085)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr base, getPtr scenario], addr ret)
  (addr ret).decode_result(RID)

proc instanceCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "instance_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc instanceSetBase*(self: RenderingServer; instance: RID; base: RID): void =
  expandMethodBind(className RenderingServer, "instance_set_base", 395945892)
  methodbind.ptrcall(self, [getPtr instance, getPtr base])

proc instanceSetScenario*(self: RenderingServer; instance: RID; scenario: RID): void =
  expandMethodBind(className RenderingServer, "instance_set_scenario", 395945892)
  methodbind.ptrcall(self, [getPtr instance, getPtr scenario])

proc instanceSetLayerMask*(self: RenderingServer; instance: RID; mask: uint32): void =
  expandMethodBind(className RenderingServer, "instance_set_layer_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr instance, getPtr mask])

proc instanceSetPivotData*(self: RenderingServer; instance: RID; sortingOffset: Float; useAabbCenter: bool): void =
  expandMethodBind(className RenderingServer, "instance_set_pivot_data", 1280615259)
  methodbind.ptrcall(self, [getPtr instance, getPtr sortingOffset, getPtr useAabbCenter])

proc instanceSetTransform*(self: RenderingServer; instance: RID; transform: Transform3D): void =
  expandMethodBind(className RenderingServer, "instance_set_transform", 3935195649)
  methodbind.ptrcall(self, [getPtr instance, getPtr transform])

proc instanceAttachObjectInstanceId*(self: RenderingServer; instance: RID; id: uint64): void =
  expandMethodBind(className RenderingServer, "instance_attach_object_instance_id", 3411492887)
  methodbind.ptrcall(self, [getPtr instance, getPtr id])

proc instanceSetBlendShapeWeight*(self: RenderingServer; instance: RID; shape: int32; weight: Float): void =
  expandMethodBind(className RenderingServer, "instance_set_blend_shape_weight", 1892459533)
  methodbind.ptrcall(self, [getPtr instance, getPtr shape, getPtr weight])

proc instanceSetSurfaceOverrideMaterial*(self: RenderingServer; instance: RID; surface: int32; material: RID): void =
  expandMethodBind(className RenderingServer, "instance_set_surface_override_material", 2310537182)
  methodbind.ptrcall(self, [getPtr instance, getPtr surface, getPtr material])

proc instanceSetVisible*(self: RenderingServer; instance: RID; visible: bool): void =
  expandMethodBind(className RenderingServer, "instance_set_visible", 1265174801)
  methodbind.ptrcall(self, [getPtr instance, getPtr visible])

proc instanceGeometrySetTransparency*(self: RenderingServer; instance: RID; transparency: Float): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_transparency", 1794382983)
  methodbind.ptrcall(self, [getPtr instance, getPtr transparency])

proc instanceSetCustomAabb*(self: RenderingServer; instance: RID; aabb: AABB): void =
  expandMethodBind(className RenderingServer, "instance_set_custom_aabb", 3696536120)
  methodbind.ptrcall(self, [getPtr instance, getPtr aabb])

proc instanceAttachSkeleton*(self: RenderingServer; instance: RID; skeleton: RID): void =
  expandMethodBind(className RenderingServer, "instance_attach_skeleton", 395945892)
  methodbind.ptrcall(self, [getPtr instance, getPtr skeleton])

proc instanceSetExtraVisibilityMargin*(self: RenderingServer; instance: RID; margin: Float): void =
  expandMethodBind(className RenderingServer, "instance_set_extra_visibility_margin", 1794382983)
  methodbind.ptrcall(self, [getPtr instance, getPtr margin])

proc instanceSetVisibilityParent*(self: RenderingServer; instance: RID; parent: RID): void =
  expandMethodBind(className RenderingServer, "instance_set_visibility_parent", 395945892)
  methodbind.ptrcall(self, [getPtr instance, getPtr parent])

proc instanceSetIgnoreCulling*(self: RenderingServer; instance: RID; enabled: bool): void =
  expandMethodBind(className RenderingServer, "instance_set_ignore_culling", 1265174801)
  methodbind.ptrcall(self, [getPtr instance, getPtr enabled])

proc instanceGeometrySetFlag*(self: RenderingServer; instance: RID; flag: RenderingServer_InstanceFlags; enabled: bool): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_flag", 1014989537)
  methodbind.ptrcall(self, [getPtr instance, getPtr flag, getPtr enabled])

proc instanceGeometrySetCastShadowsSetting*(self: RenderingServer; instance: RID; shadowCastingSetting: RenderingServer_ShadowCastingSetting): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_cast_shadows_setting", 3768836020)
  methodbind.ptrcall(self, [getPtr instance, getPtr shadowCastingSetting])

proc instanceGeometrySetMaterialOverride*(self: RenderingServer; instance: RID; material: RID): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_material_override", 395945892)
  methodbind.ptrcall(self, [getPtr instance, getPtr material])

proc instanceGeometrySetMaterialOverlay*(self: RenderingServer; instance: RID; material: RID): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_material_overlay", 395945892)
  methodbind.ptrcall(self, [getPtr instance, getPtr material])

proc instanceGeometrySetVisibilityRange*(self: RenderingServer; instance: RID; min: Float; max: Float; minMargin: Float; maxMargin: Float; fadeMode: RenderingServer_VisibilityRangeFadeMode): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_visibility_range", 4263925858)
  methodbind.ptrcall(self, [getPtr instance, getPtr min, getPtr max, getPtr minMargin, getPtr maxMargin, getPtr fadeMode])

proc instanceGeometrySetLightmap*(self: RenderingServer; instance: RID; lightmap: RID; lightmapUvScale: Rect2; lightmapSlice: int32): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_lightmap", 536974962)
  methodbind.ptrcall(self, [getPtr instance, getPtr lightmap, getPtr lightmapUvScale, getPtr lightmapSlice])

proc instanceGeometrySetLodBias*(self: RenderingServer; instance: RID; lodBias: Float): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_lod_bias", 1794382983)
  methodbind.ptrcall(self, [getPtr instance, getPtr lodBias])

proc instanceGeometrySetShaderParameter*(self: RenderingServer; instance: RID; parameter: StringName; value: Variant): void =
  expandMethodBind(className RenderingServer, "instance_geometry_set_shader_parameter", 3477296213)
  methodbind.ptrcall(self, [getPtr instance, getPtr parameter, getPtr value])

proc instanceGeometryGetShaderParameter*(self: RenderingServer; instance: RID; parameter: StringName): Variant =
  expandMethodBind(className RenderingServer, "instance_geometry_get_shader_parameter", 2621281810)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr instance, getPtr parameter], addr ret)
  (addr ret).decode_result(Variant)

proc instanceGeometryGetShaderParameterDefaultValue*(self: RenderingServer; instance: RID; parameter: StringName): Variant =
  expandMethodBind(className RenderingServer, "instance_geometry_get_shader_parameter_default_value", 2621281810)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr instance, getPtr parameter], addr ret)
  (addr ret).decode_result(Variant)

proc instanceGeometryGetShaderParameterList*(self: RenderingServer; instance: RID): TypedArray[Dictionary] =
  expandMethodBind(className RenderingServer, "instance_geometry_get_shader_parameter_list", 2684255073)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, [getPtr instance], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc instancesCullAabb*(self: RenderingServer; aabb: AABB; scenario: RID = RID()): PackedInt64Array =
  expandMethodBind(className RenderingServer, "instances_cull_aabb", 2570105777)
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, [getPtr aabb, getPtr scenario], addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc instancesCullRay*(self: RenderingServer; `from`: Vector3; to: Vector3; scenario: RID = RID()): PackedInt64Array =
  expandMethodBind(className RenderingServer, "instances_cull_ray", 2208759584)
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, [getPtr `from`, getPtr to, getPtr scenario], addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc instancesCullConvex*(self: RenderingServer; convex: TypedArray[Plane]; scenario: RID = RID()): PackedInt64Array =
  expandMethodBind(className RenderingServer, "instances_cull_convex", 2488539944)
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, [getPtr convex, getPtr scenario], addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc bakeRenderUv2*(self: RenderingServer; base: RID; materialOverrides: TypedArray[RID]; imageSize: Vector2i): TypedArray[Image] =
  expandMethodBind(className RenderingServer, "bake_render_uv2", 1904608558)
  var ret: encoded TypedArray[Image]
  methodbind.ptrcall(self, [getPtr base, getPtr materialOverrides, getPtr imageSize], addr ret)
  (addr ret).decode_result(TypedArray[Image])

proc canvasCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "canvas_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc canvasSetItemMirroring*(self: RenderingServer; canvas: RID; item: RID; mirroring: Vector2): void =
  expandMethodBind(className RenderingServer, "canvas_set_item_mirroring", 2343975398)
  methodbind.ptrcall(self, [getPtr canvas, getPtr item, getPtr mirroring])

proc canvasSetItemRepeat*(self: RenderingServer; item: RID; repeatSize: Vector2; repeatTimes: int32): void =
  expandMethodBind(className RenderingServer, "canvas_set_item_repeat", 1739512717)
  methodbind.ptrcall(self, [getPtr item, getPtr repeatSize, getPtr repeatTimes])

proc canvasSetModulate*(self: RenderingServer; canvas: RID; color: Color): void =
  expandMethodBind(className RenderingServer, "canvas_set_modulate", 2948539648)
  methodbind.ptrcall(self, [getPtr canvas, getPtr color])

proc canvasSetDisableScale*(self: RenderingServer; disable: bool): void =
  expandMethodBind(className RenderingServer, "canvas_set_disable_scale", 2586408642)
  methodbind.ptrcall(self, [getPtr disable])

proc canvasTextureCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "canvas_texture_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc canvasTextureSetChannel*(self: RenderingServer; canvasTexture: RID; channel: RenderingServer_CanvasTextureChannel; texture: RID): void =
  expandMethodBind(className RenderingServer, "canvas_texture_set_channel", 3822119138)
  methodbind.ptrcall(self, [getPtr canvasTexture, getPtr channel, getPtr texture])

proc canvasTextureSetShadingParameters*(self: RenderingServer; canvasTexture: RID; baseColor: Color; shininess: Float): void =
  expandMethodBind(className RenderingServer, "canvas_texture_set_shading_parameters", 2124967469)
  methodbind.ptrcall(self, [getPtr canvasTexture, getPtr baseColor, getPtr shininess])

proc canvasTextureSetTextureFilter*(self: RenderingServer; canvasTexture: RID; filter: RenderingServer_CanvasItemTextureFilter): void =
  expandMethodBind(className RenderingServer, "canvas_texture_set_texture_filter", 1155129294)
  methodbind.ptrcall(self, [getPtr canvasTexture, getPtr filter])

proc canvasTextureSetTextureRepeat*(self: RenderingServer; canvasTexture: RID; repeat: RenderingServer_CanvasItemTextureRepeat): void =
  expandMethodBind(className RenderingServer, "canvas_texture_set_texture_repeat", 1652956681)
  methodbind.ptrcall(self, [getPtr canvasTexture, getPtr repeat])

proc canvasItemCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "canvas_item_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc canvasItemSetParent*(self: RenderingServer; item: RID; parent: RID): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_parent", 395945892)
  methodbind.ptrcall(self, [getPtr item, getPtr parent])

proc canvasItemSetDefaultTextureFilter*(self: RenderingServer; item: RID; filter: RenderingServer_CanvasItemTextureFilter): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_default_texture_filter", 1155129294)
  methodbind.ptrcall(self, [getPtr item, getPtr filter])

proc canvasItemSetDefaultTextureRepeat*(self: RenderingServer; item: RID; repeat: RenderingServer_CanvasItemTextureRepeat): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_default_texture_repeat", 1652956681)
  methodbind.ptrcall(self, [getPtr item, getPtr repeat])

proc canvasItemSetVisible*(self: RenderingServer; item: RID; visible: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_visible", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr visible])

proc canvasItemSetLightMask*(self: RenderingServer; item: RID; mask: int32): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_light_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr item, getPtr mask])

proc canvasItemSetVisibilityLayer*(self: RenderingServer; item: RID; visibilityLayer: uint32): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_visibility_layer", 3411492887)
  methodbind.ptrcall(self, [getPtr item, getPtr visibilityLayer])

proc canvasItemSetTransform*(self: RenderingServer; item: RID; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_transform", 1246044741)
  methodbind.ptrcall(self, [getPtr item, getPtr transform])

proc canvasItemSetClip*(self: RenderingServer; item: RID; clip: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_clip", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr clip])

proc canvasItemSetDistanceFieldMode*(self: RenderingServer; item: RID; enabled: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_distance_field_mode", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr enabled])

proc canvasItemSetCustomRect*(self: RenderingServer; item: RID; useCustomRect: bool; rect: Rect2 = rect2(0, 0, 0, 0)): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_custom_rect", 1333997032)
  methodbind.ptrcall(self, [getPtr item, getPtr useCustomRect, getPtr rect])

proc canvasItemSetModulate*(self: RenderingServer; item: RID; color: Color): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_modulate", 2948539648)
  methodbind.ptrcall(self, [getPtr item, getPtr color])

proc canvasItemSetSelfModulate*(self: RenderingServer; item: RID; color: Color): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_self_modulate", 2948539648)
  methodbind.ptrcall(self, [getPtr item, getPtr color])

proc canvasItemSetDrawBehindParent*(self: RenderingServer; item: RID; enabled: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_draw_behind_parent", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr enabled])

proc canvasItemSetInterpolated*(self: RenderingServer; item: RID; interpolated: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_interpolated", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr interpolated])

proc canvasItemResetPhysicsInterpolation*(self: RenderingServer; item: RID): void =
  expandMethodBind(className RenderingServer, "canvas_item_reset_physics_interpolation", 2722037293)
  methodbind.ptrcall(self, [getPtr item])

proc canvasItemTransformPhysicsInterpolation*(self: RenderingServer; item: RID; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "canvas_item_transform_physics_interpolation", 1246044741)
  methodbind.ptrcall(self, [getPtr item, getPtr transform])

proc canvasItemAddLine*(self: RenderingServer; item: RID; `from`: Vector2; to: Vector2; color: Color; width: Float = -1.0; antialiased: bool = false): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_line", 1819681853)
  methodbind.ptrcall(self, [getPtr item, getPtr `from`, getPtr to, getPtr color, getPtr width, getPtr antialiased])

proc canvasItemAddPolyline*(self: RenderingServer; item: RID; points: PackedVector2Array; colors: PackedColorArray; width: Float = -1.0; antialiased: bool = false): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_polyline", 3098767073)
  methodbind.ptrcall(self, [getPtr item, getPtr points, getPtr colors, getPtr width, getPtr antialiased])

proc canvasItemAddMultiline*(self: RenderingServer; item: RID; points: PackedVector2Array; colors: PackedColorArray; width: Float = -1.0; antialiased: bool = false): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_multiline", 3098767073)
  methodbind.ptrcall(self, [getPtr item, getPtr points, getPtr colors, getPtr width, getPtr antialiased])

proc canvasItemAddRect*(self: RenderingServer; item: RID; rect: Rect2; color: Color; antialiased: bool = false): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_rect", 3523446176)
  methodbind.ptrcall(self, [getPtr item, getPtr rect, getPtr color, getPtr antialiased])

proc canvasItemAddCircle*(self: RenderingServer; item: RID; pos: Vector2; radius: Float; color: Color; antialiased: bool = false): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_circle", 333077949)
  methodbind.ptrcall(self, [getPtr item, getPtr pos, getPtr radius, getPtr color, getPtr antialiased])

proc canvasItemAddTextureRect*(self: RenderingServer; item: RID; rect: Rect2; texture: RID; tile: bool = false; modulate: Color = color(1, 1, 1, 1); transpose: bool = false): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_texture_rect", 324864032)
  methodbind.ptrcall(self, [getPtr item, getPtr rect, getPtr texture, getPtr tile, getPtr modulate, getPtr transpose])

proc canvasItemAddMsdfTextureRectRegion*(self: RenderingServer; item: RID; rect: Rect2; texture: RID; srcRect: Rect2; modulate: Color = color(1, 1, 1, 1); outlineSize: int32 = 0; pxRange: Float = 1.0; scale: Float = 1.0): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_msdf_texture_rect_region", 97408773)
  methodbind.ptrcall(self, [getPtr item, getPtr rect, getPtr texture, getPtr srcRect, getPtr modulate, getPtr outlineSize, getPtr pxRange, getPtr scale])

proc canvasItemAddLcdTextureRectRegion*(self: RenderingServer; item: RID; rect: Rect2; texture: RID; srcRect: Rect2; modulate: Color): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_lcd_texture_rect_region", 359793297)
  methodbind.ptrcall(self, [getPtr item, getPtr rect, getPtr texture, getPtr srcRect, getPtr modulate])

proc canvasItemAddTextureRectRegion*(self: RenderingServer; item: RID; rect: Rect2; texture: RID; srcRect: Rect2; modulate: Color = color(1, 1, 1, 1); transpose: bool = false; clipUv: bool = true): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_texture_rect_region", 485157892)
  methodbind.ptrcall(self, [getPtr item, getPtr rect, getPtr texture, getPtr srcRect, getPtr modulate, getPtr transpose, getPtr clipUv])

proc canvasItemAddNinePatch*(self: RenderingServer; item: RID; rect: Rect2; source: Rect2; texture: RID; topleft: Vector2; bottomright: Vector2; xAxisMode: RenderingServer_NinePatchAxisMode = ninePatchStretch; yAxisMode: RenderingServer_NinePatchAxisMode = ninePatchStretch; drawCenter: bool = true; modulate: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_nine_patch", 389957886)
  methodbind.ptrcall(self, [getPtr item, getPtr rect, getPtr source, getPtr texture, getPtr topleft, getPtr bottomright, getPtr xAxisMode, getPtr yAxisMode, getPtr drawCenter, getPtr modulate])

proc canvasItemAddPrimitive*(self: RenderingServer; item: RID; points: PackedVector2Array; colors: PackedColorArray; uvs: PackedVector2Array; texture: RID): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_primitive", 3731601077)
  methodbind.ptrcall(self, [getPtr item, getPtr points, getPtr colors, getPtr uvs, getPtr texture])

proc canvasItemAddPolygon*(self: RenderingServer; item: RID; points: PackedVector2Array; colors: PackedColorArray; uvs: PackedVector2Array = PackedVector2Array(); texture: RID = RID()): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_polygon", 3580000528)
  methodbind.ptrcall(self, [getPtr item, getPtr points, getPtr colors, getPtr uvs, getPtr texture])

proc canvasItemAddTriangleArray*(self: RenderingServer; item: RID; indices: PackedInt32Array; points: PackedVector2Array; colors: PackedColorArray; uvs: PackedVector2Array = PackedVector2Array(); bones: PackedInt32Array = PackedInt32Array(); weights: PackedFloat32Array = PackedFloat32Array(); texture: RID = RID(); count: int32 = -1): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_triangle_array", 660261329)
  methodbind.ptrcall(self, [getPtr item, getPtr indices, getPtr points, getPtr colors, getPtr uvs, getPtr bones, getPtr weights, getPtr texture, getPtr count])

proc canvasItemAddMesh*(self: RenderingServer; item: RID; mesh: RID; transform: Transform2D = transform2D(); modulate: Color = color(1, 1, 1, 1); texture: RID = RID()): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_mesh", 316450961)
  methodbind.ptrcall(self, [getPtr item, getPtr mesh, getPtr transform, getPtr modulate, getPtr texture])

proc canvasItemAddMultimesh*(self: RenderingServer; item: RID; mesh: RID; texture: RID = RID()): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_multimesh", 2131855138)
  methodbind.ptrcall(self, [getPtr item, getPtr mesh, getPtr texture])

proc canvasItemAddParticles*(self: RenderingServer; item: RID; particles: RID; texture: RID): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_particles", 2575754278)
  methodbind.ptrcall(self, [getPtr item, getPtr particles, getPtr texture])

proc canvasItemAddSetTransform*(self: RenderingServer; item: RID; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_set_transform", 1246044741)
  methodbind.ptrcall(self, [getPtr item, getPtr transform])

proc canvasItemAddClipIgnore*(self: RenderingServer; item: RID; ignore: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_clip_ignore", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr ignore])

proc canvasItemAddAnimationSlice*(self: RenderingServer; item: RID; animationLength: float64; sliceBegin: float64; sliceEnd: float64; offset: float64 = 0.0): void =
  expandMethodBind(className RenderingServer, "canvas_item_add_animation_slice", 2646834499)
  methodbind.ptrcall(self, [getPtr item, getPtr animationLength, getPtr sliceBegin, getPtr sliceEnd, getPtr offset])

proc canvasItemSetSortChildrenByY*(self: RenderingServer; item: RID; enabled: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_sort_children_by_y", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr enabled])

proc canvasItemSetZIndex*(self: RenderingServer; item: RID; zIndex: int32): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_z_index", 3411492887)
  methodbind.ptrcall(self, [getPtr item, getPtr zIndex])

proc canvasItemSetZAsRelativeToParent*(self: RenderingServer; item: RID; enabled: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_z_as_relative_to_parent", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr enabled])

proc canvasItemSetCopyToBackbuffer*(self: RenderingServer; item: RID; enabled: bool; rect: Rect2): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_copy_to_backbuffer", 2429202503)
  methodbind.ptrcall(self, [getPtr item, getPtr enabled, getPtr rect])

proc canvasItemClear*(self: RenderingServer; item: RID): void =
  expandMethodBind(className RenderingServer, "canvas_item_clear", 2722037293)
  methodbind.ptrcall(self, [getPtr item])

proc canvasItemSetDrawIndex*(self: RenderingServer; item: RID; index: int32): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_draw_index", 3411492887)
  methodbind.ptrcall(self, [getPtr item, getPtr index])

proc canvasItemSetMaterial*(self: RenderingServer; item: RID; material: RID): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_material", 395945892)
  methodbind.ptrcall(self, [getPtr item, getPtr material])

proc canvasItemSetUseParentMaterial*(self: RenderingServer; item: RID; enabled: bool): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_use_parent_material", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr enabled])

proc canvasItemSetVisibilityNotifier*(self: RenderingServer; item: RID; enable: bool; area: Rect2; enterCallable: Callable; exitCallable: Callable): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_visibility_notifier", 3568945579)
  methodbind.ptrcall(self, [getPtr item, getPtr enable, getPtr area, getPtr enterCallable, getPtr exitCallable])

proc canvasItemSetCanvasGroupMode*(self: RenderingServer; item: RID; mode: RenderingServer_CanvasGroupMode; clearMargin: Float = 5.0; fitEmpty: bool = false; fitMargin: Float = 0.0; blurMipmaps: bool = false): void =
  expandMethodBind(className RenderingServer, "canvas_item_set_canvas_group_mode", 3973586316)
  methodbind.ptrcall(self, [getPtr item, getPtr mode, getPtr clearMargin, getPtr fitEmpty, getPtr fitMargin, getPtr blurMipmaps])

proc debugCanvasItemGetRect*(self: RenderingServer; item: RID): Rect2 =
  expandMethodBind(className RenderingServer, "debug_canvas_item_get_rect", 624227424)
  var ret: encoded Rect2
  methodbind.ptrcall(self, [getPtr item], addr ret)
  (addr ret).decode_result(Rect2)

proc canvasLightCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "canvas_light_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc canvasLightAttachToCanvas*(self: RenderingServer; light: RID; canvas: RID): void =
  expandMethodBind(className RenderingServer, "canvas_light_attach_to_canvas", 395945892)
  methodbind.ptrcall(self, [getPtr light, getPtr canvas])

proc canvasLightSetEnabled*(self: RenderingServer; light: RID; enabled: bool): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr light, getPtr enabled])

proc canvasLightSetTextureScale*(self: RenderingServer; light: RID; scale: Float): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_texture_scale", 1794382983)
  methodbind.ptrcall(self, [getPtr light, getPtr scale])

proc canvasLightSetTransform*(self: RenderingServer; light: RID; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_transform", 1246044741)
  methodbind.ptrcall(self, [getPtr light, getPtr transform])

proc canvasLightSetTexture*(self: RenderingServer; light: RID; texture: RID): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_texture", 395945892)
  methodbind.ptrcall(self, [getPtr light, getPtr texture])

proc canvasLightSetTextureOffset*(self: RenderingServer; light: RID; offset: Vector2): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_texture_offset", 3201125042)
  methodbind.ptrcall(self, [getPtr light, getPtr offset])

proc canvasLightSetColor*(self: RenderingServer; light: RID; color: Color): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_color", 2948539648)
  methodbind.ptrcall(self, [getPtr light, getPtr color])

proc canvasLightSetHeight*(self: RenderingServer; light: RID; height: Float): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_height", 1794382983)
  methodbind.ptrcall(self, [getPtr light, getPtr height])

proc canvasLightSetEnergy*(self: RenderingServer; light: RID; energy: Float): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_energy", 1794382983)
  methodbind.ptrcall(self, [getPtr light, getPtr energy])

proc canvasLightSetZRange*(self: RenderingServer; light: RID; minZ: int32; maxZ: int32): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_z_range", 4288446313)
  methodbind.ptrcall(self, [getPtr light, getPtr minZ, getPtr maxZ])

proc canvasLightSetLayerRange*(self: RenderingServer; light: RID; minLayer: int32; maxLayer: int32): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_layer_range", 4288446313)
  methodbind.ptrcall(self, [getPtr light, getPtr minLayer, getPtr maxLayer])

proc canvasLightSetItemCullMask*(self: RenderingServer; light: RID; mask: int32): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_item_cull_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr light, getPtr mask])

proc canvasLightSetItemShadowCullMask*(self: RenderingServer; light: RID; mask: int32): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_item_shadow_cull_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr light, getPtr mask])

proc canvasLightSetMode*(self: RenderingServer; light: RID; mode: RenderingServer_CanvasLightMode): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_mode", 2957564891)
  methodbind.ptrcall(self, [getPtr light, getPtr mode])

proc canvasLightSetShadowEnabled*(self: RenderingServer; light: RID; enabled: bool): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_shadow_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr light, getPtr enabled])

proc canvasLightSetShadowFilter*(self: RenderingServer; light: RID; filter: RenderingServer_CanvasLightShadowFilter): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_shadow_filter", 393119659)
  methodbind.ptrcall(self, [getPtr light, getPtr filter])

proc canvasLightSetShadowColor*(self: RenderingServer; light: RID; color: Color): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_shadow_color", 2948539648)
  methodbind.ptrcall(self, [getPtr light, getPtr color])

proc canvasLightSetShadowSmooth*(self: RenderingServer; light: RID; smooth: Float): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_shadow_smooth", 1794382983)
  methodbind.ptrcall(self, [getPtr light, getPtr smooth])

proc canvasLightSetBlendMode*(self: RenderingServer; light: RID; mode: RenderingServer_CanvasLightBlendMode): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_blend_mode", 804895945)
  methodbind.ptrcall(self, [getPtr light, getPtr mode])

proc canvasLightSetInterpolated*(self: RenderingServer; light: RID; interpolated: bool): void =
  expandMethodBind(className RenderingServer, "canvas_light_set_interpolated", 1265174801)
  methodbind.ptrcall(self, [getPtr light, getPtr interpolated])

proc canvasLightResetPhysicsInterpolation*(self: RenderingServer; light: RID): void =
  expandMethodBind(className RenderingServer, "canvas_light_reset_physics_interpolation", 2722037293)
  methodbind.ptrcall(self, [getPtr light])

proc canvasLightTransformPhysicsInterpolation*(self: RenderingServer; light: RID; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "canvas_light_transform_physics_interpolation", 1246044741)
  methodbind.ptrcall(self, [getPtr light, getPtr transform])

proc canvasLightOccluderCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc canvasLightOccluderAttachToCanvas*(self: RenderingServer; occluder: RID; canvas: RID): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_attach_to_canvas", 395945892)
  methodbind.ptrcall(self, [getPtr occluder, getPtr canvas])

proc canvasLightOccluderSetEnabled*(self: RenderingServer; occluder: RID; enabled: bool): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_set_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr occluder, getPtr enabled])

proc canvasLightOccluderSetPolygon*(self: RenderingServer; occluder: RID; polygon: RID): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_set_polygon", 395945892)
  methodbind.ptrcall(self, [getPtr occluder, getPtr polygon])

proc canvasLightOccluderSetAsSdfCollision*(self: RenderingServer; occluder: RID; enable: bool): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_set_as_sdf_collision", 1265174801)
  methodbind.ptrcall(self, [getPtr occluder, getPtr enable])

proc canvasLightOccluderSetTransform*(self: RenderingServer; occluder: RID; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_set_transform", 1246044741)
  methodbind.ptrcall(self, [getPtr occluder, getPtr transform])

proc canvasLightOccluderSetLightMask*(self: RenderingServer; occluder: RID; mask: int32): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_set_light_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr occluder, getPtr mask])

proc canvasLightOccluderSetInterpolated*(self: RenderingServer; occluder: RID; interpolated: bool): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_set_interpolated", 1265174801)
  methodbind.ptrcall(self, [getPtr occluder, getPtr interpolated])

proc canvasLightOccluderResetPhysicsInterpolation*(self: RenderingServer; occluder: RID): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_reset_physics_interpolation", 2722037293)
  methodbind.ptrcall(self, [getPtr occluder])

proc canvasLightOccluderTransformPhysicsInterpolation*(self: RenderingServer; occluder: RID; transform: Transform2D): void =
  expandMethodBind(className RenderingServer, "canvas_light_occluder_transform_physics_interpolation", 1246044741)
  methodbind.ptrcall(self, [getPtr occluder, getPtr transform])

proc canvasOccluderPolygonCreate*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "canvas_occluder_polygon_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc canvasOccluderPolygonSetShape*(self: RenderingServer; occluderPolygon: RID; shape: PackedVector2Array; closed: bool): void =
  expandMethodBind(className RenderingServer, "canvas_occluder_polygon_set_shape", 2103882027)
  methodbind.ptrcall(self, [getPtr occluderPolygon, getPtr shape, getPtr closed])

proc canvasOccluderPolygonSetCullMode*(self: RenderingServer; occluderPolygon: RID; mode: RenderingServer_CanvasOccluderPolygonCullMode): void =
  expandMethodBind(className RenderingServer, "canvas_occluder_polygon_set_cull_mode", 1839404663)
  methodbind.ptrcall(self, [getPtr occluderPolygon, getPtr mode])

proc canvasSetShadowTextureSize*(self: RenderingServer; size: int32): void =
  expandMethodBind(className RenderingServer, "canvas_set_shadow_texture_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size])

proc globalShaderParameterAdd*(self: RenderingServer; name: StringName; `type`: RenderingServer_GlobalShaderParameterType; defaultValue: Variant): void =
  expandMethodBind(className RenderingServer, "global_shader_parameter_add", 463390080)
  methodbind.ptrcall(self, [getPtr name, getPtr `type`, getPtr defaultValue])

proc globalShaderParameterRemove*(self: RenderingServer; name: StringName): void =
  expandMethodBind(className RenderingServer, "global_shader_parameter_remove", 3304788590)
  methodbind.ptrcall(self, [getPtr name])

proc globalShaderParameterGetList*(self: RenderingServer): TypedArray[StringName] =
  expandMethodBind(className RenderingServer, "global_shader_parameter_get_list", 3995934104)
  var ret: encoded TypedArray[StringName]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[StringName])

proc globalShaderParameterSet*(self: RenderingServer; name: StringName; value: Variant): void =
  expandMethodBind(className RenderingServer, "global_shader_parameter_set", 3776071444)
  methodbind.ptrcall(self, [getPtr name, getPtr value])

proc globalShaderParameterSetOverride*(self: RenderingServer; name: StringName; value: Variant): void =
  expandMethodBind(className RenderingServer, "global_shader_parameter_set_override", 3776071444)
  methodbind.ptrcall(self, [getPtr name, getPtr value])

proc globalShaderParameterGet*(self: RenderingServer; name: StringName): Variant =
  expandMethodBind(className RenderingServer, "global_shader_parameter_get", 2760726917)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(Variant)

proc globalShaderParameterGetType*(self: RenderingServer; name: StringName): RenderingServer_GlobalShaderParameterType =
  expandMethodBind(className RenderingServer, "global_shader_parameter_get_type", 1601414142)
  var ret: encoded RenderingServer_GlobalShaderParameterType
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(RenderingServer_GlobalShaderParameterType)

proc freeRid*(self: RenderingServer; rid: RID): void =
  expandMethodBind(className RenderingServer, "free_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid])

proc requestFrameDrawnCallback*(self: RenderingServer; callable: Callable): void =
  expandMethodBind(className RenderingServer, "request_frame_drawn_callback", 1611583062)
  methodbind.ptrcall(self, [getPtr callable])

proc hasChanged*(self: RenderingServer): bool =
  expandMethodBind(className RenderingServer, "has_changed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getRenderingInfo*(self: RenderingServer; info: RenderingServer_RenderingInfo): uint64 =
  expandMethodBind(className RenderingServer, "get_rendering_info", 3763192241)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr info], addr ret)
  (addr ret).decode_result(uint64)

proc getVideoAdapterName*(self: RenderingServer): String =
  expandMethodBind(className RenderingServer, "get_video_adapter_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getVideoAdapterVendor*(self: RenderingServer): String =
  expandMethodBind(className RenderingServer, "get_video_adapter_vendor", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getVideoAdapterType*(self: RenderingServer): RenderingDevice_DeviceType =
  expandMethodBind(className RenderingServer, "get_video_adapter_type", 3099547011)
  var ret: encoded RenderingDevice_DeviceType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_DeviceType)

proc getVideoAdapterApiVersion*(self: RenderingServer): String =
  expandMethodBind(className RenderingServer, "get_video_adapter_api_version", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc makeSphereMesh*(self: RenderingServer; latitudes: int32; longitudes: int32; radius: Float): RID =
  expandMethodBind(className RenderingServer, "make_sphere_mesh", 2251015897)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr latitudes, getPtr longitudes, getPtr radius], addr ret)
  (addr ret).decode_result(RID)

proc getTestCube*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "get_test_cube", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc getTestTexture*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "get_test_texture", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc getWhiteTexture*(self: RenderingServer): RID =
  expandMethodBind(className RenderingServer, "get_white_texture", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc setBootImage*(self: RenderingServer; image: gdref Image; color: Color; scale: bool; useFilter: bool = true): void =
  expandMethodBind(className RenderingServer, "set_boot_image", 3759744527)
  methodbind.ptrcall(self, [getPtr image, getPtr color, getPtr scale, getPtr useFilter])

proc getDefaultClearColor*(self: RenderingServer): Color =
  expandMethodBind(className RenderingServer, "get_default_clear_color", 3200896285)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setDefaultClearColor*(self: RenderingServer; color: Color): void =
  expandMethodBind(className RenderingServer, "set_default_clear_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc hasOsFeature*(self: RenderingServer; feature: String): bool =
  expandMethodBind(className RenderingServer, "has_os_feature", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr feature], addr ret)
  (addr ret).decode_result(bool)

proc setDebugGenerateWireframes*(self: RenderingServer; generate: bool): void =
  expandMethodBind(className RenderingServer, "set_debug_generate_wireframes", 2586408642)
  methodbind.ptrcall(self, [getPtr generate])

proc isRenderLoopEnabled*(self: RenderingServer): bool =
  expandMethodBind(className RenderingServer, "is_render_loop_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setRenderLoopEnabled*(self: RenderingServer; enabled: bool): void =
  expandMethodBind(className RenderingServer, "set_render_loop_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getFrameSetupTimeCpu*(self: RenderingServer): float64 =
  expandMethodBind(className RenderingServer, "get_frame_setup_time_cpu", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc forceSync*(self: RenderingServer): void =
  expandMethodBind(className RenderingServer, "force_sync", 3218959716)
  methodbind.ptrcall(self, [])

proc forceDraw*(self: RenderingServer; swapBuffers: bool = true; frameStep: float64 = 0.0): void =
  expandMethodBind(className RenderingServer, "force_draw", 1076185472)
  methodbind.ptrcall(self, [getPtr swapBuffers, getPtr frameStep])

proc getRenderingDevice*(self: RenderingServer): RenderingDevice =
  expandMethodBind(className RenderingServer, "get_rendering_device", 1405107940)
  var ret: encoded RenderingDevice
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice)

proc createLocalRenderingDevice*(self: RenderingServer): RenderingDevice =
  expandMethodBind(className RenderingServer, "create_local_rendering_device", 1405107940)
  var ret: encoded RenderingDevice
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice)

proc isOnRenderThread*(self: RenderingServer): bool =
  expandMethodBind(className RenderingServer, "is_on_render_thread", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc callOnRenderThread*(self: RenderingServer; callable: Callable): void =
  expandMethodBind(className RenderingServer, "call_on_render_thread", 1611583062)
  methodbind.ptrcall(self, [getPtr callable])

proc hasFeature*(self: RenderingServer; feature: RenderingServer_Features): bool =
  expandMethodBind(className RenderingServer, "has_feature", 598462696)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr feature], addr ret)
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