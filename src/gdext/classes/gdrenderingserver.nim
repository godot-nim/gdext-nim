{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(RenderingServer, Object)

const NoIndexArray* = -1
const ArrayWeightsSize* = 4
const CanvasItemZMin* = -4096
const CanvasItemZMax* = 4096
const CanvasLayerMin* = -2147483648
const CanvasLayerMax* = 2147483647
const MaxGlowLevels* = 7
const MaxCursors* = 8
const Max2DDirectionalLights* = 8
const MaxMeshSurfaces* = 256
const MaterialRenderPriorityMin* = -128
const MaterialRenderPriorityMax* = 127
const ArrayCustomCount* = 4
const ParticlesEmitFlagPosition* = 1
const ParticlesEmitFlagRotationScale* = 2
const ParticlesEmitFlagVelocity* = 4
const ParticlesEmitFlagColor* = 8
const ParticlesEmitFlagCustom* = 16

proc texture2DCreate*(self: RenderingServer; image: gdref Image): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_2d_create", 2010018390)
  methodbind.ptrcall(self, [getPtr image], RID)

proc texture2DLayeredCreate*(self: RenderingServer; layers: TypedArray[gdref Image]; layeredType: RenderingServer_TextureLayeredType): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_2d_layered_create", 913689023)
  methodbind.ptrcall(self, [getPtr layers, getPtr layeredType], RID)

proc texture3DCreate*(self: RenderingServer; format: Image_Format; width: int32; height: int32; depth: int32; mipmaps: bool; data: TypedArray[gdref Image]): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_3d_create", 4036838706)
  methodbind.ptrcall(self, [getPtr format, getPtr width, getPtr height, getPtr depth, getPtr mipmaps, getPtr data], RID)

proc textureProxyCreate*(self: RenderingServer; base: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_proxy_create", 41030802)
  methodbind.ptrcall(self, [getPtr base], RID)

proc textureCreateFromNativeHandle*(self: RenderingServer; `type`: RenderingServer_TextureType; format: Image_Format; nativeHandle: uint64; width: int32; height: int32; depth: int32; layers: int32 = 1; layeredType: RenderingServer_TextureLayeredType = textureLayered2DArray): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_create_from_native_handle", 1682977582)
  methodbind.ptrcall(self, [getPtr `type`, getPtr format, getPtr nativeHandle, getPtr width, getPtr height, getPtr depth, getPtr layers, getPtr layeredType], RID)

proc texture2DUpdate*(self: RenderingServer; texture: RID; image: gdref Image; layer: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_2d_update", 999539803)
  methodbind.ptrcall(self, [getPtr texture, getPtr image, getPtr layer], void)

proc texture3DUpdate*(self: RenderingServer; texture: RID; data: TypedArray[gdref Image]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_3d_update", 684822712)
  methodbind.ptrcall(self, [getPtr texture, getPtr data], void)

proc textureProxyUpdate*(self: RenderingServer; texture: RID; proxyTo: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_proxy_update", 395945892)
  methodbind.ptrcall(self, [getPtr texture, getPtr proxyTo], void)

proc texture2DPlaceholderCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_2d_placeholder_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc texture2DLayeredPlaceholderCreate*(self: RenderingServer; layeredType: RenderingServer_TextureLayeredType): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_2d_layered_placeholder_create", 1394585590)
  methodbind.ptrcall(self, [getPtr layeredType], RID)

proc texture3DPlaceholderCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_3d_placeholder_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc texture2DGet*(self: RenderingServer; texture: RID): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_2d_get", 4206205781)
  methodbind.ptrcall(self, [getPtr texture], gdref Image)

proc texture2DLayerGet*(self: RenderingServer; texture: RID; layer: int32): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_2d_layer_get", 2705440895)
  methodbind.ptrcall(self, [getPtr texture, getPtr layer], gdref Image)

proc texture3DGet*(self: RenderingServer; texture: RID): TypedArray[gdref Image] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_3d_get", 2684255073)
  methodbind.ptrcall(self, [getPtr texture], TypedArray[gdref Image])

proc textureReplace*(self: RenderingServer; texture: RID; byTexture: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_replace", 395945892)
  methodbind.ptrcall(self, [getPtr texture, getPtr byTexture], void)

proc textureSetSizeOverride*(self: RenderingServer; texture: RID; width: int32; height: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_set_size_override", 4288446313)
  methodbind.ptrcall(self, [getPtr texture, getPtr width, getPtr height], void)

proc textureSetPath*(self: RenderingServer; texture: RID; path: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_set_path", 2726140452)
  methodbind.ptrcall(self, [getPtr texture, getPtr path], void)

proc textureGetPath*(self: RenderingServer; texture: RID): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_get_path", 642473191)
  methodbind.ptrcall(self, [getPtr texture], String)

proc textureGetFormat*(self: RenderingServer; texture: RID): Image_Format =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_get_format", 1932918979)
  methodbind.ptrcall(self, [getPtr texture], Image_Format)

proc textureSetForceRedrawIfVisible*(self: RenderingServer; texture: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_set_force_redraw_if_visible", 1265174801)
  methodbind.ptrcall(self, [getPtr texture, getPtr enable], void)

proc textureRdCreate*(self: RenderingServer; rdTexture: RID; layerType: RenderingServer_TextureLayeredType = textureLayered2DArray): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_rd_create", 1434128712)
  methodbind.ptrcall(self, [getPtr rdTexture, getPtr layerType], RID)

proc textureGetRdTexture*(self: RenderingServer; texture: RID; srgb: bool = false): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_get_rd_texture", 2790148051)
  methodbind.ptrcall(self, [getPtr texture, getPtr srgb], RID)

proc textureGetNativeHandle*(self: RenderingServer; texture: RID; srgb: bool = false): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "texture_get_native_handle", 1834114100)
  methodbind.ptrcall(self, [getPtr texture, getPtr srgb], uint64)

proc shaderCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "shader_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc shaderSetCode*(self: RenderingServer; shader: RID; code: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "shader_set_code", 2726140452)
  methodbind.ptrcall(self, [getPtr shader, getPtr code], void)

proc shaderSetPathHint*(self: RenderingServer; shader: RID; path: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "shader_set_path_hint", 2726140452)
  methodbind.ptrcall(self, [getPtr shader, getPtr path], void)

proc shaderGetCode*(self: RenderingServer; shader: RID): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "shader_get_code", 642473191)
  methodbind.ptrcall(self, [getPtr shader], String)

proc getShaderParameterList*(self: RenderingServer; shader: RID): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "get_shader_parameter_list", 2684255073)
  methodbind.ptrcall(self, [getPtr shader], TypedArray[Dictionary])

proc shaderGetParameterDefault*(self: RenderingServer; shader: RID; name: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "shader_get_parameter_default", 2621281810)
  methodbind.ptrcall(self, [getPtr shader, getPtr name], Variant)

proc shaderSetDefaultTextureParameter*(self: RenderingServer; shader: RID; name: StringName; texture: RID; index: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "shader_set_default_texture_parameter", 4094001817)
  methodbind.ptrcall(self, [getPtr shader, getPtr name, getPtr texture, getPtr index], void)

proc shaderGetDefaultTextureParameter*(self: RenderingServer; shader: RID; name: StringName; index: int32 = 0): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "shader_get_default_texture_parameter", 1464608890)
  methodbind.ptrcall(self, [getPtr shader, getPtr name, getPtr index], RID)

proc materialCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "material_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc materialSetShader*(self: RenderingServer; shaderMaterial: RID; shader: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "material_set_shader", 395945892)
  methodbind.ptrcall(self, [getPtr shaderMaterial, getPtr shader], void)

proc materialSetParam*(self: RenderingServer; material: RID; parameter: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "material_set_param", 3477296213)
  methodbind.ptrcall(self, [getPtr material, getPtr parameter, getPtr value], void)

proc materialGetParam*(self: RenderingServer; material: RID; parameter: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "material_get_param", 2621281810)
  methodbind.ptrcall(self, [getPtr material, getPtr parameter], Variant)

proc materialSetRenderPriority*(self: RenderingServer; material: RID; priority: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "material_set_render_priority", 3411492887)
  methodbind.ptrcall(self, [getPtr material, getPtr priority], void)

proc materialSetNextPass*(self: RenderingServer; material: RID; nextMaterial: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "material_set_next_pass", 395945892)
  methodbind.ptrcall(self, [getPtr material, getPtr nextMaterial], void)

proc meshCreateFromSurfaces*(self: RenderingServer; surfaces: TypedArray[Dictionary]; blendShapeCount: int32 = 0): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_create_from_surfaces", 4291747531)
  methodbind.ptrcall(self, [getPtr surfaces, getPtr blendShapeCount], RID)

proc meshCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc meshSurfaceGetFormatOffset*(self: RenderingServer; format: set[RenderingServer_ArrayFormat]; vertexCount: int32; arrayIndex: int32): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_surface_get_format_offset", 2981368685)
  methodbind.ptrcall(self, [getPtr format, getPtr vertexCount, getPtr arrayIndex], uint32)

proc meshSurfaceGetFormatVertexStride*(self: RenderingServer; format: set[RenderingServer_ArrayFormat]; vertexCount: int32): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_surface_get_format_vertex_stride", 3188363337)
  methodbind.ptrcall(self, [getPtr format, getPtr vertexCount], uint32)

proc meshSurfaceGetFormatNormalTangentStride*(self: RenderingServer; format: set[RenderingServer_ArrayFormat]; vertexCount: int32): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_surface_get_format_normal_tangent_stride", 3188363337)
  methodbind.ptrcall(self, [getPtr format, getPtr vertexCount], uint32)

proc meshSurfaceGetFormatAttributeStride*(self: RenderingServer; format: set[RenderingServer_ArrayFormat]; vertexCount: int32): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_surface_get_format_attribute_stride", 3188363337)
  methodbind.ptrcall(self, [getPtr format, getPtr vertexCount], uint32)

proc meshSurfaceGetFormatSkinStride*(self: RenderingServer; format: set[RenderingServer_ArrayFormat]; vertexCount: int32): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_surface_get_format_skin_stride", 3188363337)
  methodbind.ptrcall(self, [getPtr format, getPtr vertexCount], uint32)

proc meshSurfaceGetFormatIndexStride*(self: RenderingServer; format: set[RenderingServer_ArrayFormat]; vertexCount: int32): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_surface_get_format_index_stride", 3188363337)
  methodbind.ptrcall(self, [getPtr format, getPtr vertexCount], uint32)

proc meshAddSurface*(self: RenderingServer; mesh: RID; surface: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_add_surface", 1217542888)
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface], void)

proc meshAddSurfaceFromArrays*(self: RenderingServer; mesh: RID; primitive: RenderingServer_PrimitiveType; arrays: Array; blendShapes: Array = newArray(); lods: Dictionary = newDictionary(); compressFormat: set[RenderingServer_ArrayFormat] = {}): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_add_surface_from_arrays", 2342446560)
  methodbind.ptrcall(self, [getPtr mesh, getPtr primitive, getPtr arrays, getPtr blendShapes, getPtr lods, getPtr compressFormat], void)

proc meshGetBlendShapeCount*(self: RenderingServer; mesh: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_get_blend_shape_count", 2198884583)
  methodbind.ptrcall(self, [getPtr mesh], int32)

proc meshSetBlendShapeMode*(self: RenderingServer; mesh: RID; mode: RenderingServer_BlendShapeMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_set_blend_shape_mode", 1294662092)
  methodbind.ptrcall(self, [getPtr mesh, getPtr mode], void)

proc meshGetBlendShapeMode*(self: RenderingServer; mesh: RID): RenderingServer_BlendShapeMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_get_blend_shape_mode", 4282291819)
  methodbind.ptrcall(self, [getPtr mesh], RenderingServer_BlendShapeMode)

proc meshSurfaceSetMaterial*(self: RenderingServer; mesh: RID; surface: int32; material: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_surface_set_material", 2310537182)
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface, getPtr material], void)

proc meshSurfaceGetMaterial*(self: RenderingServer; mesh: RID; surface: int32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_surface_get_material", 1066463050)
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface], RID)

proc meshGetSurface*(self: RenderingServer; mesh: RID; surface: int32): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_get_surface", 186674697)
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface], Dictionary)

proc meshSurfaceGetArrays*(self: RenderingServer; mesh: RID; surface: int32): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_surface_get_arrays", 1778388067)
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface], Array)

proc meshSurfaceGetBlendShapeArrays*(self: RenderingServer; mesh: RID; surface: int32): TypedArray[Array] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_surface_get_blend_shape_arrays", 1778388067)
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface], TypedArray[Array])

proc meshGetSurfaceCount*(self: RenderingServer; mesh: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_get_surface_count", 2198884583)
  methodbind.ptrcall(self, [getPtr mesh], int32)

proc meshSetCustomAabb*(self: RenderingServer; mesh: RID; aabb: AABB): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_set_custom_aabb", 3696536120)
  methodbind.ptrcall(self, [getPtr mesh, getPtr aabb], void)

proc meshGetCustomAabb*(self: RenderingServer; mesh: RID): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_get_custom_aabb", 974181306)
  methodbind.ptrcall(self, [getPtr mesh], AABB)

proc meshSurfaceRemove*(self: RenderingServer; mesh: RID; surface: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_surface_remove", 3411492887)
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface], void)

proc meshClear*(self: RenderingServer; mesh: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_clear", 2722037293)
  methodbind.ptrcall(self, [getPtr mesh], void)

proc meshSurfaceUpdateVertexRegion*(self: RenderingServer; mesh: RID; surface: int32; offset: int32; data: PackedByteArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_surface_update_vertex_region", 2900195149)
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface, getPtr offset, getPtr data], void)

proc meshSurfaceUpdateAttributeRegion*(self: RenderingServer; mesh: RID; surface: int32; offset: int32; data: PackedByteArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_surface_update_attribute_region", 2900195149)
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface, getPtr offset, getPtr data], void)

proc meshSurfaceUpdateSkinRegion*(self: RenderingServer; mesh: RID; surface: int32; offset: int32; data: PackedByteArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_surface_update_skin_region", 2900195149)
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface, getPtr offset, getPtr data], void)

proc meshSurfaceUpdateIndexRegion*(self: RenderingServer; mesh: RID; surface: int32; offset: int32; data: PackedByteArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_surface_update_index_region", 2900195149)
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface, getPtr offset, getPtr data], void)

proc meshSetShadowMesh*(self: RenderingServer; mesh: RID; shadowMesh: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "mesh_set_shadow_mesh", 395945892)
  methodbind.ptrcall(self, [getPtr mesh, getPtr shadowMesh], void)

proc multimeshCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc multimeshAllocateData*(self: RenderingServer; multimesh: RID; instances: int32; transformFormat: RenderingServer_MultimeshTransformFormat; colorFormat: bool = false; customDataFormat: bool = false; useIndirect: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_allocate_data", 557240154)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr instances, getPtr transformFormat, getPtr colorFormat, getPtr customDataFormat, getPtr useIndirect], void)

proc multimeshGetInstanceCount*(self: RenderingServer; multimesh: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_get_instance_count", 2198884583)
  methodbind.ptrcall(self, [getPtr multimesh], int32)

proc multimeshSetMesh*(self: RenderingServer; multimesh: RID; mesh: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_set_mesh", 395945892)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr mesh], void)

proc multimeshInstanceSetTransform*(self: RenderingServer; multimesh: RID; index: int32; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_instance_set_transform", 675327471)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr index, getPtr transform], void)

proc multimeshInstanceSetTransform2D*(self: RenderingServer; multimesh: RID; index: int32; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_instance_set_transform_2d", 736082694)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr index, getPtr transform], void)

proc multimeshInstanceSetColor*(self: RenderingServer; multimesh: RID; index: int32; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_instance_set_color", 176975443)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr index, getPtr color], void)

proc multimeshInstanceSetCustomData*(self: RenderingServer; multimesh: RID; index: int32; customData: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_instance_set_custom_data", 176975443)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr index, getPtr customData], void)

proc multimeshGetMesh*(self: RenderingServer; multimesh: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_get_mesh", 3814569979)
  methodbind.ptrcall(self, [getPtr multimesh], RID)

proc multimeshGetAabb*(self: RenderingServer; multimesh: RID): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_get_aabb", 974181306)
  methodbind.ptrcall(self, [getPtr multimesh], AABB)

proc multimeshSetCustomAabb*(self: RenderingServer; multimesh: RID; aabb: AABB): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_set_custom_aabb", 3696536120)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr aabb], void)

proc multimeshGetCustomAabb*(self: RenderingServer; multimesh: RID): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_get_custom_aabb", 974181306)
  methodbind.ptrcall(self, [getPtr multimesh], AABB)

proc multimeshInstanceGetTransform*(self: RenderingServer; multimesh: RID; index: int32): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_instance_get_transform", 1050775521)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr index], Transform3D)

proc multimeshInstanceGetTransform2D*(self: RenderingServer; multimesh: RID; index: int32): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_instance_get_transform_2d", 1324854622)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr index], Transform2D)

proc multimeshInstanceGetColor*(self: RenderingServer; multimesh: RID; index: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_instance_get_color", 2946315076)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr index], Color)

proc multimeshInstanceGetCustomData*(self: RenderingServer; multimesh: RID; index: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_instance_get_custom_data", 2946315076)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr index], Color)

proc multimeshSetVisibleInstances*(self: RenderingServer; multimesh: RID; visible: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_set_visible_instances", 3411492887)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr visible], void)

proc multimeshGetVisibleInstances*(self: RenderingServer; multimesh: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_get_visible_instances", 2198884583)
  methodbind.ptrcall(self, [getPtr multimesh], int32)

proc multimeshSetBuffer*(self: RenderingServer; multimesh: RID; buffer: PackedFloat32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_set_buffer", 2960552364)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr buffer], void)

proc multimeshGetCommandBufferRdRid*(self: RenderingServer; multimesh: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_get_command_buffer_rd_rid", 3814569979)
  methodbind.ptrcall(self, [getPtr multimesh], RID)

proc multimeshGetBufferRdRid*(self: RenderingServer; multimesh: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_get_buffer_rd_rid", 3814569979)
  methodbind.ptrcall(self, [getPtr multimesh], RID)

proc multimeshGetBuffer*(self: RenderingServer; multimesh: RID): PackedFloat32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_get_buffer", 3964669176)
  methodbind.ptrcall(self, [getPtr multimesh], PackedFloat32Array)

proc multimeshSetBufferInterpolated*(self: RenderingServer; multimesh: RID; buffer: PackedFloat32Array; bufferPrevious: PackedFloat32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_set_buffer_interpolated", 659844711)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr buffer, getPtr bufferPrevious], void)

proc multimeshSetPhysicsInterpolated*(self: RenderingServer; multimesh: RID; interpolated: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_set_physics_interpolated", 1265174801)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr interpolated], void)

proc multimeshSetPhysicsInterpolationQuality*(self: RenderingServer; multimesh: RID; quality: RenderingServer_MultimeshPhysicsInterpolationQuality): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_set_physics_interpolation_quality", 3934808223)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr quality], void)

proc multimeshInstanceResetPhysicsInterpolation*(self: RenderingServer; multimesh: RID; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "multimesh_instance_reset_physics_interpolation", 3411492887)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr index], void)

proc skeletonCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "skeleton_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc skeletonAllocateData*(self: RenderingServer; skeleton: RID; bones: int32; is2DSkeleton: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "skeleton_allocate_data", 1904426712)
  methodbind.ptrcall(self, [getPtr skeleton, getPtr bones, getPtr is2DSkeleton], void)

proc skeletonGetBoneCount*(self: RenderingServer; skeleton: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "skeleton_get_bone_count", 2198884583)
  methodbind.ptrcall(self, [getPtr skeleton], int32)

proc skeletonBoneSetTransform*(self: RenderingServer; skeleton: RID; bone: int32; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "skeleton_bone_set_transform", 675327471)
  methodbind.ptrcall(self, [getPtr skeleton, getPtr bone, getPtr transform], void)

proc skeletonBoneGetTransform*(self: RenderingServer; skeleton: RID; bone: int32): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "skeleton_bone_get_transform", 1050775521)
  methodbind.ptrcall(self, [getPtr skeleton, getPtr bone], Transform3D)

proc skeletonBoneSetTransform2D*(self: RenderingServer; skeleton: RID; bone: int32; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "skeleton_bone_set_transform_2d", 736082694)
  methodbind.ptrcall(self, [getPtr skeleton, getPtr bone, getPtr transform], void)

proc skeletonBoneGetTransform2D*(self: RenderingServer; skeleton: RID; bone: int32): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "skeleton_bone_get_transform_2d", 1324854622)
  methodbind.ptrcall(self, [getPtr skeleton, getPtr bone], Transform2D)

proc skeletonSetBaseTransform2D*(self: RenderingServer; skeleton: RID; baseTransform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "skeleton_set_base_transform_2d", 1246044741)
  methodbind.ptrcall(self, [getPtr skeleton, getPtr baseTransform], void)

proc directionalLightCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "directional_light_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc omniLightCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "omni_light_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc spotLightCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "spot_light_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc lightSetColor*(self: RenderingServer; light: RID; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "light_set_color", 2948539648)
  methodbind.ptrcall(self, [getPtr light, getPtr color], void)

proc lightSetParam*(self: RenderingServer; light: RID; param: RenderingServer_LightParam; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "light_set_param", 501936875)
  methodbind.ptrcall(self, [getPtr light, getPtr param, getPtr value], void)

proc lightSetShadow*(self: RenderingServer; light: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "light_set_shadow", 1265174801)
  methodbind.ptrcall(self, [getPtr light, getPtr enabled], void)

proc lightSetProjector*(self: RenderingServer; light: RID; texture: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "light_set_projector", 395945892)
  methodbind.ptrcall(self, [getPtr light, getPtr texture], void)

proc lightSetNegative*(self: RenderingServer; light: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "light_set_negative", 1265174801)
  methodbind.ptrcall(self, [getPtr light, getPtr enable], void)

proc lightSetCullMask*(self: RenderingServer; light: RID; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "light_set_cull_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr light, getPtr mask], void)

proc lightSetDistanceFade*(self: RenderingServer; decal: RID; enabled: bool; begin: Float; shadow: Float; length: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "light_set_distance_fade", 1622292572)
  methodbind.ptrcall(self, [getPtr decal, getPtr enabled, getPtr begin, getPtr shadow, getPtr length], void)

proc lightSetReverseCullFaceMode*(self: RenderingServer; light: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "light_set_reverse_cull_face_mode", 1265174801)
  methodbind.ptrcall(self, [getPtr light, getPtr enabled], void)

proc lightSetShadowCasterMask*(self: RenderingServer; light: RID; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "light_set_shadow_caster_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr light, getPtr mask], void)

proc lightSetBakeMode*(self: RenderingServer; light: RID; bakeMode: RenderingServer_LightBakeMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "light_set_bake_mode", 1048525260)
  methodbind.ptrcall(self, [getPtr light, getPtr bakeMode], void)

proc lightSetMaxSdfgiCascade*(self: RenderingServer; light: RID; cascade: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "light_set_max_sdfgi_cascade", 3411492887)
  methodbind.ptrcall(self, [getPtr light, getPtr cascade], void)

proc lightOmniSetShadowMode*(self: RenderingServer; light: RID; mode: RenderingServer_LightOmniShadowMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "light_omni_set_shadow_mode", 2552677200)
  methodbind.ptrcall(self, [getPtr light, getPtr mode], void)

proc lightDirectionalSetShadowMode*(self: RenderingServer; light: RID; mode: RenderingServer_LightDirectionalShadowMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "light_directional_set_shadow_mode", 380462970)
  methodbind.ptrcall(self, [getPtr light, getPtr mode], void)

proc lightDirectionalSetBlendSplits*(self: RenderingServer; light: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "light_directional_set_blend_splits", 1265174801)
  methodbind.ptrcall(self, [getPtr light, getPtr enable], void)

proc lightDirectionalSetSkyMode*(self: RenderingServer; light: RID; mode: RenderingServer_LightDirectionalSkyMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "light_directional_set_sky_mode", 2559740754)
  methodbind.ptrcall(self, [getPtr light, getPtr mode], void)

proc lightProjectorsSetFilter*(self: RenderingServer; filter: RenderingServer_LightProjectorFilter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "light_projectors_set_filter", 43944325)
  methodbind.ptrcall(self, [getPtr filter], void)

proc lightmapsSetBicubicFilter*(self: RenderingServer; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "lightmaps_set_bicubic_filter", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc positionalSoftShadowFilterSetQuality*(self: RenderingServer; quality: RenderingServer_ShadowQuality): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "positional_soft_shadow_filter_set_quality", 3613045266)
  methodbind.ptrcall(self, [getPtr quality], void)

proc directionalSoftShadowFilterSetQuality*(self: RenderingServer; quality: RenderingServer_ShadowQuality): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "directional_soft_shadow_filter_set_quality", 3613045266)
  methodbind.ptrcall(self, [getPtr quality], void)

proc directionalShadowAtlasSetSize*(self: RenderingServer; size: int32; is16Bits: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "directional_shadow_atlas_set_size", 300928843)
  methodbind.ptrcall(self, [getPtr size, getPtr is16Bits], void)

proc reflectionProbeCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "reflection_probe_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc reflectionProbeSetUpdateMode*(self: RenderingServer; probe: RID; mode: RenderingServer_ReflectionProbeUpdateMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "reflection_probe_set_update_mode", 3853670147)
  methodbind.ptrcall(self, [getPtr probe, getPtr mode], void)

proc reflectionProbeSetIntensity*(self: RenderingServer; probe: RID; intensity: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "reflection_probe_set_intensity", 1794382983)
  methodbind.ptrcall(self, [getPtr probe, getPtr intensity], void)

proc reflectionProbeSetBlendDistance*(self: RenderingServer; probe: RID; blendDistance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "reflection_probe_set_blend_distance", 1794382983)
  methodbind.ptrcall(self, [getPtr probe, getPtr blendDistance], void)

proc reflectionProbeSetAmbientMode*(self: RenderingServer; probe: RID; mode: RenderingServer_ReflectionProbeAmbientMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "reflection_probe_set_ambient_mode", 184163074)
  methodbind.ptrcall(self, [getPtr probe, getPtr mode], void)

proc reflectionProbeSetAmbientColor*(self: RenderingServer; probe: RID; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "reflection_probe_set_ambient_color", 2948539648)
  methodbind.ptrcall(self, [getPtr probe, getPtr color], void)

proc reflectionProbeSetAmbientEnergy*(self: RenderingServer; probe: RID; energy: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "reflection_probe_set_ambient_energy", 1794382983)
  methodbind.ptrcall(self, [getPtr probe, getPtr energy], void)

proc reflectionProbeSetMaxDistance*(self: RenderingServer; probe: RID; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "reflection_probe_set_max_distance", 1794382983)
  methodbind.ptrcall(self, [getPtr probe, getPtr distance], void)

proc reflectionProbeSetSize*(self: RenderingServer; probe: RID; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "reflection_probe_set_size", 3227306858)
  methodbind.ptrcall(self, [getPtr probe, getPtr size], void)

proc reflectionProbeSetOriginOffset*(self: RenderingServer; probe: RID; offset: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "reflection_probe_set_origin_offset", 3227306858)
  methodbind.ptrcall(self, [getPtr probe, getPtr offset], void)

proc reflectionProbeSetAsInterior*(self: RenderingServer; probe: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "reflection_probe_set_as_interior", 1265174801)
  methodbind.ptrcall(self, [getPtr probe, getPtr enable], void)

proc reflectionProbeSetEnableBoxProjection*(self: RenderingServer; probe: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "reflection_probe_set_enable_box_projection", 1265174801)
  methodbind.ptrcall(self, [getPtr probe, getPtr enable], void)

proc reflectionProbeSetEnableShadows*(self: RenderingServer; probe: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "reflection_probe_set_enable_shadows", 1265174801)
  methodbind.ptrcall(self, [getPtr probe, getPtr enable], void)

proc reflectionProbeSetCullMask*(self: RenderingServer; probe: RID; layers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "reflection_probe_set_cull_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr probe, getPtr layers], void)

proc reflectionProbeSetReflectionMask*(self: RenderingServer; probe: RID; layers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "reflection_probe_set_reflection_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr probe, getPtr layers], void)

proc reflectionProbeSetResolution*(self: RenderingServer; probe: RID; resolution: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "reflection_probe_set_resolution", 3411492887)
  methodbind.ptrcall(self, [getPtr probe, getPtr resolution], void)

proc reflectionProbeSetMeshLodThreshold*(self: RenderingServer; probe: RID; pixels: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "reflection_probe_set_mesh_lod_threshold", 1794382983)
  methodbind.ptrcall(self, [getPtr probe, getPtr pixels], void)

proc decalCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "decal_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc decalSetSize*(self: RenderingServer; decal: RID; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "decal_set_size", 3227306858)
  methodbind.ptrcall(self, [getPtr decal, getPtr size], void)

proc decalSetTexture*(self: RenderingServer; decal: RID; `type`: RenderingServer_DecalTexture; texture: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "decal_set_texture", 3953344054)
  methodbind.ptrcall(self, [getPtr decal, getPtr `type`, getPtr texture], void)

proc decalSetEmissionEnergy*(self: RenderingServer; decal: RID; energy: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "decal_set_emission_energy", 1794382983)
  methodbind.ptrcall(self, [getPtr decal, getPtr energy], void)

proc decalSetAlbedoMix*(self: RenderingServer; decal: RID; albedoMix: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "decal_set_albedo_mix", 1794382983)
  methodbind.ptrcall(self, [getPtr decal, getPtr albedoMix], void)

proc decalSetModulate*(self: RenderingServer; decal: RID; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "decal_set_modulate", 2948539648)
  methodbind.ptrcall(self, [getPtr decal, getPtr color], void)

proc decalSetCullMask*(self: RenderingServer; decal: RID; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "decal_set_cull_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr decal, getPtr mask], void)

proc decalSetDistanceFade*(self: RenderingServer; decal: RID; enabled: bool; begin: Float; length: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "decal_set_distance_fade", 2972769666)
  methodbind.ptrcall(self, [getPtr decal, getPtr enabled, getPtr begin, getPtr length], void)

proc decalSetFade*(self: RenderingServer; decal: RID; above: Float; below: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "decal_set_fade", 2513314492)
  methodbind.ptrcall(self, [getPtr decal, getPtr above, getPtr below], void)

proc decalSetNormalFade*(self: RenderingServer; decal: RID; fade: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "decal_set_normal_fade", 1794382983)
  methodbind.ptrcall(self, [getPtr decal, getPtr fade], void)

proc decalsSetFilter*(self: RenderingServer; filter: RenderingServer_DecalFilter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "decals_set_filter", 3519875702)
  methodbind.ptrcall(self, [getPtr filter], void)

proc giSetUseHalfResolution*(self: RenderingServer; halfResolution: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "gi_set_use_half_resolution", 2586408642)
  methodbind.ptrcall(self, [getPtr halfResolution], void)

proc voxelGiCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "voxel_gi_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc voxelGiAllocateData*(self: RenderingServer; voxelGi: RID; toCellXform: Transform3D; aabb: AABB; octreeSize: Vector3i; octreeCells: PackedByteArray; dataCells: PackedByteArray; distanceField: PackedByteArray; levelCounts: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "voxel_gi_allocate_data", 4108223027)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr toCellXform, getPtr aabb, getPtr octreeSize, getPtr octreeCells, getPtr dataCells, getPtr distanceField, getPtr levelCounts], void)

proc voxelGiGetOctreeSize*(self: RenderingServer; voxelGi: RID): Vector3i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "voxel_gi_get_octree_size", 2607699645)
  methodbind.ptrcall(self, [getPtr voxelGi], Vector3i)

proc voxelGiGetOctreeCells*(self: RenderingServer; voxelGi: RID): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "voxel_gi_get_octree_cells", 3348040486)
  methodbind.ptrcall(self, [getPtr voxelGi], PackedByteArray)

proc voxelGiGetDataCells*(self: RenderingServer; voxelGi: RID): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "voxel_gi_get_data_cells", 3348040486)
  methodbind.ptrcall(self, [getPtr voxelGi], PackedByteArray)

proc voxelGiGetDistanceField*(self: RenderingServer; voxelGi: RID): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "voxel_gi_get_distance_field", 3348040486)
  methodbind.ptrcall(self, [getPtr voxelGi], PackedByteArray)

proc voxelGiGetLevelCounts*(self: RenderingServer; voxelGi: RID): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "voxel_gi_get_level_counts", 788230395)
  methodbind.ptrcall(self, [getPtr voxelGi], PackedInt32Array)

proc voxelGiGetToCellXform*(self: RenderingServer; voxelGi: RID): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "voxel_gi_get_to_cell_xform", 1128465797)
  methodbind.ptrcall(self, [getPtr voxelGi], Transform3D)

proc voxelGiSetDynamicRange*(self: RenderingServer; voxelGi: RID; range: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "voxel_gi_set_dynamic_range", 1794382983)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr range], void)

proc voxelGiSetPropagation*(self: RenderingServer; voxelGi: RID; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "voxel_gi_set_propagation", 1794382983)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr amount], void)

proc voxelGiSetEnergy*(self: RenderingServer; voxelGi: RID; energy: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "voxel_gi_set_energy", 1794382983)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr energy], void)

proc voxelGiSetBakedExposureNormalization*(self: RenderingServer; voxelGi: RID; bakedExposure: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "voxel_gi_set_baked_exposure_normalization", 1794382983)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr bakedExposure], void)

proc voxelGiSetBias*(self: RenderingServer; voxelGi: RID; bias: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "voxel_gi_set_bias", 1794382983)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr bias], void)

proc voxelGiSetNormalBias*(self: RenderingServer; voxelGi: RID; bias: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "voxel_gi_set_normal_bias", 1794382983)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr bias], void)

proc voxelGiSetInterior*(self: RenderingServer; voxelGi: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "voxel_gi_set_interior", 1265174801)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr enable], void)

proc voxelGiSetUseTwoBounces*(self: RenderingServer; voxelGi: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "voxel_gi_set_use_two_bounces", 1265174801)
  methodbind.ptrcall(self, [getPtr voxelGi, getPtr enable], void)

proc voxelGiSetQuality*(self: RenderingServer; quality: RenderingServer_VoxelGIQuality): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "voxel_gi_set_quality", 1538689978)
  methodbind.ptrcall(self, [getPtr quality], void)

proc lightmapCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "lightmap_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc lightmapSetTextures*(self: RenderingServer; lightmap: RID; light: RID; usesSh: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "lightmap_set_textures", 2646464759)
  methodbind.ptrcall(self, [getPtr lightmap, getPtr light, getPtr usesSh], void)

proc lightmapSetProbeBounds*(self: RenderingServer; lightmap: RID; bounds: AABB): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "lightmap_set_probe_bounds", 3696536120)
  methodbind.ptrcall(self, [getPtr lightmap, getPtr bounds], void)

proc lightmapSetProbeInterior*(self: RenderingServer; lightmap: RID; interior: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "lightmap_set_probe_interior", 1265174801)
  methodbind.ptrcall(self, [getPtr lightmap, getPtr interior], void)

proc lightmapSetProbeCaptureData*(self: RenderingServer; lightmap: RID; points: PackedVector3Array; pointSh: PackedColorArray; tetrahedra: PackedInt32Array; bspTree: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "lightmap_set_probe_capture_data", 3217845880)
  methodbind.ptrcall(self, [getPtr lightmap, getPtr points, getPtr pointSh, getPtr tetrahedra, getPtr bspTree], void)

proc lightmapGetProbeCapturePoints*(self: RenderingServer; lightmap: RID): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "lightmap_get_probe_capture_points", 808965560)
  methodbind.ptrcall(self, [getPtr lightmap], PackedVector3Array)

proc lightmapGetProbeCaptureSh*(self: RenderingServer; lightmap: RID): PackedColorArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "lightmap_get_probe_capture_sh", 1569415609)
  methodbind.ptrcall(self, [getPtr lightmap], PackedColorArray)

proc lightmapGetProbeCaptureTetrahedra*(self: RenderingServer; lightmap: RID): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "lightmap_get_probe_capture_tetrahedra", 788230395)
  methodbind.ptrcall(self, [getPtr lightmap], PackedInt32Array)

proc lightmapGetProbeCaptureBspTree*(self: RenderingServer; lightmap: RID): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "lightmap_get_probe_capture_bsp_tree", 788230395)
  methodbind.ptrcall(self, [getPtr lightmap], PackedInt32Array)

proc lightmapSetBakedExposureNormalization*(self: RenderingServer; lightmap: RID; bakedExposure: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "lightmap_set_baked_exposure_normalization", 1794382983)
  methodbind.ptrcall(self, [getPtr lightmap, getPtr bakedExposure], void)

proc lightmapSetProbeCaptureUpdateSpeed*(self: RenderingServer; speed: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "lightmap_set_probe_capture_update_speed", 373806689)
  methodbind.ptrcall(self, [getPtr speed], void)

proc particlesCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc particlesSetMode*(self: RenderingServer; particles: RID; mode: RenderingServer_ParticlesMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_mode", 3492270028)
  methodbind.ptrcall(self, [getPtr particles, getPtr mode], void)

proc particlesSetEmitting*(self: RenderingServer; particles: RID; emitting: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_emitting", 1265174801)
  methodbind.ptrcall(self, [getPtr particles, getPtr emitting], void)

proc particlesGetEmitting*(self: RenderingServer; particles: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_get_emitting", 3521089500)
  methodbind.ptrcall(self, [getPtr particles], bool)

proc particlesSetAmount*(self: RenderingServer; particles: RID; amount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_amount", 3411492887)
  methodbind.ptrcall(self, [getPtr particles, getPtr amount], void)

proc particlesSetAmountRatio*(self: RenderingServer; particles: RID; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_amount_ratio", 1794382983)
  methodbind.ptrcall(self, [getPtr particles, getPtr ratio], void)

proc particlesSetLifetime*(self: RenderingServer; particles: RID; lifetime: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_lifetime", 1794382983)
  methodbind.ptrcall(self, [getPtr particles, getPtr lifetime], void)

proc particlesSetOneShot*(self: RenderingServer; particles: RID; oneShot: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_one_shot", 1265174801)
  methodbind.ptrcall(self, [getPtr particles, getPtr oneShot], void)

proc particlesSetPreProcessTime*(self: RenderingServer; particles: RID; time: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_pre_process_time", 1794382983)
  methodbind.ptrcall(self, [getPtr particles, getPtr time], void)

proc particlesRequestProcessTime*(self: RenderingServer; particles: RID; time: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_request_process_time", 1794382983)
  methodbind.ptrcall(self, [getPtr particles, getPtr time], void)

proc particlesSetExplosivenessRatio*(self: RenderingServer; particles: RID; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_explosiveness_ratio", 1794382983)
  methodbind.ptrcall(self, [getPtr particles, getPtr ratio], void)

proc particlesSetRandomnessRatio*(self: RenderingServer; particles: RID; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_randomness_ratio", 1794382983)
  methodbind.ptrcall(self, [getPtr particles, getPtr ratio], void)

proc particlesSetInterpToEnd*(self: RenderingServer; particles: RID; factor: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_interp_to_end", 1794382983)
  methodbind.ptrcall(self, [getPtr particles, getPtr factor], void)

proc particlesSetEmitterVelocity*(self: RenderingServer; particles: RID; velocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_emitter_velocity", 3227306858)
  methodbind.ptrcall(self, [getPtr particles, getPtr velocity], void)

proc particlesSetCustomAabb*(self: RenderingServer; particles: RID; aabb: AABB): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_custom_aabb", 3696536120)
  methodbind.ptrcall(self, [getPtr particles, getPtr aabb], void)

proc particlesSetSpeedScale*(self: RenderingServer; particles: RID; scale: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_speed_scale", 1794382983)
  methodbind.ptrcall(self, [getPtr particles, getPtr scale], void)

proc particlesSetUseLocalCoordinates*(self: RenderingServer; particles: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_use_local_coordinates", 1265174801)
  methodbind.ptrcall(self, [getPtr particles, getPtr enable], void)

proc particlesSetProcessMaterial*(self: RenderingServer; particles: RID; material: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_process_material", 395945892)
  methodbind.ptrcall(self, [getPtr particles, getPtr material], void)

proc particlesSetFixedFps*(self: RenderingServer; particles: RID; fps: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_fixed_fps", 3411492887)
  methodbind.ptrcall(self, [getPtr particles, getPtr fps], void)

proc particlesSetInterpolate*(self: RenderingServer; particles: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_interpolate", 1265174801)
  methodbind.ptrcall(self, [getPtr particles, getPtr enable], void)

proc particlesSetFractionalDelta*(self: RenderingServer; particles: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_fractional_delta", 1265174801)
  methodbind.ptrcall(self, [getPtr particles, getPtr enable], void)

proc particlesSetCollisionBaseSize*(self: RenderingServer; particles: RID; size: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_collision_base_size", 1794382983)
  methodbind.ptrcall(self, [getPtr particles, getPtr size], void)

proc particlesSetTransformAlign*(self: RenderingServer; particles: RID; align: RenderingServer_ParticlesTransformAlign): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_transform_align", 3264971368)
  methodbind.ptrcall(self, [getPtr particles, getPtr align], void)

proc particlesSetTrails*(self: RenderingServer; particles: RID; enable: bool; lengthSec: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_trails", 2010054925)
  methodbind.ptrcall(self, [getPtr particles, getPtr enable, getPtr lengthSec], void)

proc particlesSetTrailBindPoses*(self: RenderingServer; particles: RID; bindPoses: TypedArray[Transform3D]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_trail_bind_poses", 684822712)
  methodbind.ptrcall(self, [getPtr particles, getPtr bindPoses], void)

proc particlesIsInactive*(self: RenderingServer; particles: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_is_inactive", 3521089500)
  methodbind.ptrcall(self, [getPtr particles], bool)

proc particlesRequestProcess*(self: RenderingServer; particles: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_request_process", 2722037293)
  methodbind.ptrcall(self, [getPtr particles], void)

proc particlesRestart*(self: RenderingServer; particles: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_restart", 2722037293)
  methodbind.ptrcall(self, [getPtr particles], void)

proc particlesSetSubemitter*(self: RenderingServer; particles: RID; subemitterParticles: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_subemitter", 395945892)
  methodbind.ptrcall(self, [getPtr particles, getPtr subemitterParticles], void)

proc particlesEmit*(self: RenderingServer; particles: RID; transform: Transform3D; velocity: Vector3; color: Color; custom: Color; emitFlags: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_emit", 4043136117)
  methodbind.ptrcall(self, [getPtr particles, getPtr transform, getPtr velocity, getPtr color, getPtr custom, getPtr emitFlags], void)

proc particlesSetDrawOrder*(self: RenderingServer; particles: RID; order: RenderingServer_ParticlesDrawOrder): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_draw_order", 935028487)
  methodbind.ptrcall(self, [getPtr particles, getPtr order], void)

proc particlesSetDrawPasses*(self: RenderingServer; particles: RID; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_draw_passes", 3411492887)
  methodbind.ptrcall(self, [getPtr particles, getPtr count], void)

proc particlesSetDrawPassMesh*(self: RenderingServer; particles: RID; pass: int32; mesh: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_draw_pass_mesh", 2310537182)
  methodbind.ptrcall(self, [getPtr particles, getPtr pass, getPtr mesh], void)

proc particlesGetCurrentAabb*(self: RenderingServer; particles: RID): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_get_current_aabb", 3952830260)
  methodbind.ptrcall(self, [getPtr particles], AABB)

proc particlesSetEmissionTransform*(self: RenderingServer; particles: RID; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_set_emission_transform", 3935195649)
  methodbind.ptrcall(self, [getPtr particles, getPtr transform], void)

proc particlesCollisionCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_collision_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc particlesCollisionSetCollisionType*(self: RenderingServer; particlesCollision: RID; `type`: RenderingServer_ParticlesCollisionType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_collision_set_collision_type", 1497044930)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr `type`], void)

proc particlesCollisionSetCullMask*(self: RenderingServer; particlesCollision: RID; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_collision_set_cull_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr mask], void)

proc particlesCollisionSetSphereRadius*(self: RenderingServer; particlesCollision: RID; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_collision_set_sphere_radius", 1794382983)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr radius], void)

proc particlesCollisionSetBoxExtents*(self: RenderingServer; particlesCollision: RID; extents: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_collision_set_box_extents", 3227306858)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr extents], void)

proc particlesCollisionSetAttractorStrength*(self: RenderingServer; particlesCollision: RID; strength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_collision_set_attractor_strength", 1794382983)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr strength], void)

proc particlesCollisionSetAttractorDirectionality*(self: RenderingServer; particlesCollision: RID; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_collision_set_attractor_directionality", 1794382983)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr amount], void)

proc particlesCollisionSetAttractorAttenuation*(self: RenderingServer; particlesCollision: RID; curve: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_collision_set_attractor_attenuation", 1794382983)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr curve], void)

proc particlesCollisionSetFieldTexture*(self: RenderingServer; particlesCollision: RID; texture: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_collision_set_field_texture", 395945892)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr texture], void)

proc particlesCollisionHeightFieldUpdate*(self: RenderingServer; particlesCollision: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_collision_height_field_update", 2722037293)
  methodbind.ptrcall(self, [getPtr particlesCollision], void)

proc particlesCollisionSetHeightFieldResolution*(self: RenderingServer; particlesCollision: RID; resolution: RenderingServer_ParticlesCollisionHeightfieldResolution): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_collision_set_height_field_resolution", 962977297)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr resolution], void)

proc particlesCollisionSetHeightFieldMask*(self: RenderingServer; particlesCollision: RID; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "particles_collision_set_height_field_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr particlesCollision, getPtr mask], void)

proc fogVolumeCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "fog_volume_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc fogVolumeSetShape*(self: RenderingServer; fogVolume: RID; shape: RenderingServer_FogVolumeShape): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "fog_volume_set_shape", 3818703106)
  methodbind.ptrcall(self, [getPtr fogVolume, getPtr shape], void)

proc fogVolumeSetSize*(self: RenderingServer; fogVolume: RID; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "fog_volume_set_size", 3227306858)
  methodbind.ptrcall(self, [getPtr fogVolume, getPtr size], void)

proc fogVolumeSetMaterial*(self: RenderingServer; fogVolume: RID; material: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "fog_volume_set_material", 395945892)
  methodbind.ptrcall(self, [getPtr fogVolume, getPtr material], void)

proc visibilityNotifierCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "visibility_notifier_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc visibilityNotifierSetAabb*(self: RenderingServer; notifier: RID; aabb: AABB): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "visibility_notifier_set_aabb", 3696536120)
  methodbind.ptrcall(self, [getPtr notifier, getPtr aabb], void)

proc visibilityNotifierSetCallbacks*(self: RenderingServer; notifier: RID; enterCallable: Callable; exitCallable: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "visibility_notifier_set_callbacks", 2689735388)
  methodbind.ptrcall(self, [getPtr notifier, getPtr enterCallable, getPtr exitCallable], void)

proc occluderCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "occluder_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc occluderSetMesh*(self: RenderingServer; occluder: RID; vertices: PackedVector3Array; indices: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "occluder_set_mesh", 3854404263)
  methodbind.ptrcall(self, [getPtr occluder, getPtr vertices, getPtr indices], void)

proc cameraCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "camera_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc cameraSetPerspective*(self: RenderingServer; camera: RID; fovyDegrees: Float; zNear: Float; zFar: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "camera_set_perspective", 157498339)
  methodbind.ptrcall(self, [getPtr camera, getPtr fovyDegrees, getPtr zNear, getPtr zFar], void)

proc cameraSetOrthogonal*(self: RenderingServer; camera: RID; size: Float; zNear: Float; zFar: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "camera_set_orthogonal", 157498339)
  methodbind.ptrcall(self, [getPtr camera, getPtr size, getPtr zNear, getPtr zFar], void)

proc cameraSetFrustum*(self: RenderingServer; camera: RID; size: Float; offset: Vector2; zNear: Float; zFar: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "camera_set_frustum", 1889878953)
  methodbind.ptrcall(self, [getPtr camera, getPtr size, getPtr offset, getPtr zNear, getPtr zFar], void)

proc cameraSetTransform*(self: RenderingServer; camera: RID; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "camera_set_transform", 3935195649)
  methodbind.ptrcall(self, [getPtr camera, getPtr transform], void)

proc cameraSetCullMask*(self: RenderingServer; camera: RID; layers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "camera_set_cull_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr camera, getPtr layers], void)

proc cameraSetEnvironment*(self: RenderingServer; camera: RID; env: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "camera_set_environment", 395945892)
  methodbind.ptrcall(self, [getPtr camera, getPtr env], void)

proc cameraSetCameraAttributes*(self: RenderingServer; camera: RID; effects: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "camera_set_camera_attributes", 395945892)
  methodbind.ptrcall(self, [getPtr camera, getPtr effects], void)

proc cameraSetCompositor*(self: RenderingServer; camera: RID; compositor: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "camera_set_compositor", 395945892)
  methodbind.ptrcall(self, [getPtr camera, getPtr compositor], void)

proc cameraSetUseVerticalAspect*(self: RenderingServer; camera: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "camera_set_use_vertical_aspect", 1265174801)
  methodbind.ptrcall(self, [getPtr camera, getPtr enable], void)

proc viewportCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc viewportSetUseXr*(self: RenderingServer; viewport: RID; useXr: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_use_xr", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr useXr], void)

proc viewportSetSize*(self: RenderingServer; viewport: RID; width: int32; height: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_size", 4288446313)
  methodbind.ptrcall(self, [getPtr viewport, getPtr width, getPtr height], void)

proc viewportSetActive*(self: RenderingServer; viewport: RID; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_active", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr active], void)

proc viewportSetParentViewport*(self: RenderingServer; viewport: RID; parentViewport: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_parent_viewport", 395945892)
  methodbind.ptrcall(self, [getPtr viewport, getPtr parentViewport], void)

proc viewportAttachToScreen*(self: RenderingServer; viewport: RID; rect: Rect2 = rect2(0, 0, 0, 0); screen: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_attach_to_screen", 1062245816)
  methodbind.ptrcall(self, [getPtr viewport, getPtr rect, getPtr screen], void)

proc viewportSetRenderDirectToScreen*(self: RenderingServer; viewport: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_render_direct_to_screen", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enabled], void)

proc viewportSetCanvasCullMask*(self: RenderingServer; viewport: RID; canvasCullMask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_canvas_cull_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr viewport, getPtr canvasCullMask], void)

proc viewportSetScaling3DMode*(self: RenderingServer; viewport: RID; scaling3DMode: RenderingServer_ViewportScaling3DMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_scaling_3d_mode", 2386524376)
  methodbind.ptrcall(self, [getPtr viewport, getPtr scaling3DMode], void)

proc viewportSetScaling3DScale*(self: RenderingServer; viewport: RID; scale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_scaling_3d_scale", 1794382983)
  methodbind.ptrcall(self, [getPtr viewport, getPtr scale], void)

proc viewportSetFsrSharpness*(self: RenderingServer; viewport: RID; sharpness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_fsr_sharpness", 1794382983)
  methodbind.ptrcall(self, [getPtr viewport, getPtr sharpness], void)

proc viewportSetTextureMipmapBias*(self: RenderingServer; viewport: RID; mipmapBias: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_texture_mipmap_bias", 1794382983)
  methodbind.ptrcall(self, [getPtr viewport, getPtr mipmapBias], void)

proc viewportSetAnisotropicFilteringLevel*(self: RenderingServer; viewport: RID; anisotropicFilteringLevel: RenderingServer_ViewportAnisotropicFiltering): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_anisotropic_filtering_level", 3953214029)
  methodbind.ptrcall(self, [getPtr viewport, getPtr anisotropicFilteringLevel], void)

proc viewportSetUpdateMode*(self: RenderingServer; viewport: RID; updateMode: RenderingServer_ViewportUpdateMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_update_mode", 3161116010)
  methodbind.ptrcall(self, [getPtr viewport, getPtr updateMode], void)

proc viewportGetUpdateMode*(self: RenderingServer; viewport: RID): RenderingServer_ViewportUpdateMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_get_update_mode", 3803901472)
  methodbind.ptrcall(self, [getPtr viewport], RenderingServer_ViewportUpdateMode)

proc viewportSetClearMode*(self: RenderingServer; viewport: RID; clearMode: RenderingServer_ViewportClearMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_clear_mode", 3628367896)
  methodbind.ptrcall(self, [getPtr viewport, getPtr clearMode], void)

proc viewportGetRenderTarget*(self: RenderingServer; viewport: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_get_render_target", 3814569979)
  methodbind.ptrcall(self, [getPtr viewport], RID)

proc viewportGetTexture*(self: RenderingServer; viewport: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_get_texture", 3814569979)
  methodbind.ptrcall(self, [getPtr viewport], RID)

proc viewportSetDisable3D*(self: RenderingServer; viewport: RID; disable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_disable_3d", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr disable], void)

proc viewportSetDisable2D*(self: RenderingServer; viewport: RID; disable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_disable_2d", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr disable], void)

proc viewportSetEnvironmentMode*(self: RenderingServer; viewport: RID; mode: RenderingServer_ViewportEnvironmentMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_environment_mode", 2196892182)
  methodbind.ptrcall(self, [getPtr viewport, getPtr mode], void)

proc viewportAttachCamera*(self: RenderingServer; viewport: RID; camera: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_attach_camera", 395945892)
  methodbind.ptrcall(self, [getPtr viewport, getPtr camera], void)

proc viewportSetScenario*(self: RenderingServer; viewport: RID; scenario: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_scenario", 395945892)
  methodbind.ptrcall(self, [getPtr viewport, getPtr scenario], void)

proc viewportAttachCanvas*(self: RenderingServer; viewport: RID; canvas: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_attach_canvas", 395945892)
  methodbind.ptrcall(self, [getPtr viewport, getPtr canvas], void)

proc viewportRemoveCanvas*(self: RenderingServer; viewport: RID; canvas: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_remove_canvas", 395945892)
  methodbind.ptrcall(self, [getPtr viewport, getPtr canvas], void)

proc viewportSetSnap2DTransformsToPixel*(self: RenderingServer; viewport: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_snap_2d_transforms_to_pixel", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enabled], void)

proc viewportSetSnap2DVerticesToPixel*(self: RenderingServer; viewport: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_snap_2d_vertices_to_pixel", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enabled], void)

proc viewportSetDefaultCanvasItemTextureFilter*(self: RenderingServer; viewport: RID; filter: RenderingServer_CanvasItemTextureFilter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_default_canvas_item_texture_filter", 1155129294)
  methodbind.ptrcall(self, [getPtr viewport, getPtr filter], void)

proc viewportSetDefaultCanvasItemTextureRepeat*(self: RenderingServer; viewport: RID; repeat: RenderingServer_CanvasItemTextureRepeat): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_default_canvas_item_texture_repeat", 1652956681)
  methodbind.ptrcall(self, [getPtr viewport, getPtr repeat], void)

proc viewportSetCanvasTransform*(self: RenderingServer; viewport: RID; canvas: RID; offset: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_canvas_transform", 3608606053)
  methodbind.ptrcall(self, [getPtr viewport, getPtr canvas, getPtr offset], void)

proc viewportSetCanvasStacking*(self: RenderingServer; viewport: RID; canvas: RID; layer: int32; sublayer: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_canvas_stacking", 3713930247)
  methodbind.ptrcall(self, [getPtr viewport, getPtr canvas, getPtr layer, getPtr sublayer], void)

proc viewportSetTransparentBackground*(self: RenderingServer; viewport: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_transparent_background", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enabled], void)

proc viewportSetGlobalCanvasTransform*(self: RenderingServer; viewport: RID; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_global_canvas_transform", 1246044741)
  methodbind.ptrcall(self, [getPtr viewport, getPtr transform], void)

proc viewportSetSdfOversizeAndScale*(self: RenderingServer; viewport: RID; oversize: RenderingServer_ViewportSDFOversize; scale: RenderingServer_ViewportSDFScale): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_sdf_oversize_and_scale", 1329198632)
  methodbind.ptrcall(self, [getPtr viewport, getPtr oversize, getPtr scale], void)

proc viewportSetPositionalShadowAtlasSize*(self: RenderingServer; viewport: RID; size: int32; use16Bits: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_positional_shadow_atlas_size", 1904426712)
  methodbind.ptrcall(self, [getPtr viewport, getPtr size, getPtr use16Bits], void)

proc viewportSetPositionalShadowAtlasQuadrantSubdivision*(self: RenderingServer; viewport: RID; quadrant: int32; subdivision: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_positional_shadow_atlas_quadrant_subdivision", 4288446313)
  methodbind.ptrcall(self, [getPtr viewport, getPtr quadrant, getPtr subdivision], void)

proc viewportSetMsaa3D*(self: RenderingServer; viewport: RID; msaa: RenderingServer_ViewportMSAA): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_msaa_3d", 3764433340)
  methodbind.ptrcall(self, [getPtr viewport, getPtr msaa], void)

proc viewportSetMsaa2D*(self: RenderingServer; viewport: RID; msaa: RenderingServer_ViewportMSAA): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_msaa_2d", 3764433340)
  methodbind.ptrcall(self, [getPtr viewport, getPtr msaa], void)

proc viewportSetUseHdr2D*(self: RenderingServer; viewport: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_use_hdr_2d", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enabled], void)

proc viewportSetScreenSpaceAa*(self: RenderingServer; viewport: RID; mode: RenderingServer_ViewportScreenSpaceAA): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_screen_space_aa", 1447279591)
  methodbind.ptrcall(self, [getPtr viewport, getPtr mode], void)

proc viewportSetUseTaa*(self: RenderingServer; viewport: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_use_taa", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enable], void)

proc viewportSetUseDebanding*(self: RenderingServer; viewport: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_use_debanding", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enable], void)

proc viewportSetUseOcclusionCulling*(self: RenderingServer; viewport: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_use_occlusion_culling", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enable], void)

proc viewportSetOcclusionRaysPerThread*(self: RenderingServer; raysPerThread: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_occlusion_rays_per_thread", 1286410249)
  methodbind.ptrcall(self, [getPtr raysPerThread], void)

proc viewportSetOcclusionCullingBuildQuality*(self: RenderingServer; quality: RenderingServer_ViewportOcclusionCullingBuildQuality): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_occlusion_culling_build_quality", 2069725696)
  methodbind.ptrcall(self, [getPtr quality], void)

proc viewportGetRenderInfo*(self: RenderingServer; viewport: RID; `type`: RenderingServer_ViewportRenderInfoType; info: RenderingServer_ViewportRenderInfo): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_get_render_info", 2041262392)
  methodbind.ptrcall(self, [getPtr viewport, getPtr `type`, getPtr info], int32)

proc viewportSetDebugDraw*(self: RenderingServer; viewport: RID; draw: RenderingServer_ViewportDebugDraw): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_debug_draw", 2089420930)
  methodbind.ptrcall(self, [getPtr viewport, getPtr draw], void)

proc viewportSetMeasureRenderTime*(self: RenderingServer; viewport: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_measure_render_time", 1265174801)
  methodbind.ptrcall(self, [getPtr viewport, getPtr enable], void)

proc viewportGetMeasuredRenderTimeCpu*(self: RenderingServer; viewport: RID): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_get_measured_render_time_cpu", 866169185)
  methodbind.ptrcall(self, [getPtr viewport], float64)

proc viewportGetMeasuredRenderTimeGpu*(self: RenderingServer; viewport: RID): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_get_measured_render_time_gpu", 866169185)
  methodbind.ptrcall(self, [getPtr viewport], float64)

proc viewportSetVrsMode*(self: RenderingServer; viewport: RID; mode: RenderingServer_ViewportVRSMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_vrs_mode", 398809874)
  methodbind.ptrcall(self, [getPtr viewport, getPtr mode], void)

proc viewportSetVrsUpdateMode*(self: RenderingServer; viewport: RID; mode: RenderingServer_ViewportVRSUpdateMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_vrs_update_mode", 2696154815)
  methodbind.ptrcall(self, [getPtr viewport, getPtr mode], void)

proc viewportSetVrsTexture*(self: RenderingServer; viewport: RID; texture: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "viewport_set_vrs_texture", 395945892)
  methodbind.ptrcall(self, [getPtr viewport, getPtr texture], void)

proc skyCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "sky_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc skySetRadianceSize*(self: RenderingServer; sky: RID; radianceSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "sky_set_radiance_size", 3411492887)
  methodbind.ptrcall(self, [getPtr sky, getPtr radianceSize], void)

proc skySetMode*(self: RenderingServer; sky: RID; mode: RenderingServer_SkyMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "sky_set_mode", 3279019937)
  methodbind.ptrcall(self, [getPtr sky, getPtr mode], void)

proc skySetMaterial*(self: RenderingServer; sky: RID; material: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "sky_set_material", 395945892)
  methodbind.ptrcall(self, [getPtr sky, getPtr material], void)

proc skyBakePanorama*(self: RenderingServer; sky: RID; energy: Float; bakeIrradiance: bool; size: Vector2i): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "sky_bake_panorama", 3875285818)
  methodbind.ptrcall(self, [getPtr sky, getPtr energy, getPtr bakeIrradiance, getPtr size], gdref Image)

proc compositorEffectCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "compositor_effect_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc compositorEffectSetEnabled*(self: RenderingServer; effect: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "compositor_effect_set_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr effect, getPtr enabled], void)

proc compositorEffectSetCallback*(self: RenderingServer; effect: RID; callbackType: RenderingServer_CompositorEffectCallbackType; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "compositor_effect_set_callback", 487412485)
  methodbind.ptrcall(self, [getPtr effect, getPtr callbackType, getPtr callback], void)

proc compositorEffectSetFlag*(self: RenderingServer; effect: RID; flag: RenderingServer_CompositorEffectFlags; set: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "compositor_effect_set_flag", 3659527075)
  methodbind.ptrcall(self, [getPtr effect, getPtr flag, getPtr set], void)

proc compositorCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "compositor_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc compositorSetCompositorEffects*(self: RenderingServer; compositor: RID; effects: TypedArray[RID]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "compositor_set_compositor_effects", 684822712)
  methodbind.ptrcall(self, [getPtr compositor, getPtr effects], void)

proc environmentCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc environmentSetBackground*(self: RenderingServer; env: RID; bg: RenderingServer_EnvironmentBG): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_background", 3937328877)
  methodbind.ptrcall(self, [getPtr env, getPtr bg], void)

proc environmentSetCameraId*(self: RenderingServer; env: RID; id: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_camera_id", 3411492887)
  methodbind.ptrcall(self, [getPtr env, getPtr id], void)

proc environmentSetSky*(self: RenderingServer; env: RID; sky: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_sky", 395945892)
  methodbind.ptrcall(self, [getPtr env, getPtr sky], void)

proc environmentSetSkyCustomFov*(self: RenderingServer; env: RID; scale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_sky_custom_fov", 1794382983)
  methodbind.ptrcall(self, [getPtr env, getPtr scale], void)

proc environmentSetSkyOrientation*(self: RenderingServer; env: RID; orientation: Basis): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_sky_orientation", 1735850857)
  methodbind.ptrcall(self, [getPtr env, getPtr orientation], void)

proc environmentSetBgColor*(self: RenderingServer; env: RID; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_bg_color", 2948539648)
  methodbind.ptrcall(self, [getPtr env, getPtr color], void)

proc environmentSetBgEnergy*(self: RenderingServer; env: RID; multiplier: Float; exposureValue: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_bg_energy", 2513314492)
  methodbind.ptrcall(self, [getPtr env, getPtr multiplier, getPtr exposureValue], void)

proc environmentSetCanvasMaxLayer*(self: RenderingServer; env: RID; maxLayer: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_canvas_max_layer", 3411492887)
  methodbind.ptrcall(self, [getPtr env, getPtr maxLayer], void)

proc environmentSetAmbientLight*(self: RenderingServer; env: RID; color: Color; ambient: RenderingServer_EnvironmentAmbientSource = envAmbientSourceBg; energy: Float = 1.0; skyContribution: Float = 0.0; reflectionSource: RenderingServer_EnvironmentReflectionSource = envReflectionSourceBg): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_ambient_light", 1214961493)
  methodbind.ptrcall(self, [getPtr env, getPtr color, getPtr ambient, getPtr energy, getPtr skyContribution, getPtr reflectionSource], void)

proc environmentSetGlow*(self: RenderingServer; env: RID; enable: bool; levels: PackedFloat32Array; intensity: Float; strength: Float; mix: Float; bloomThreshold: Float; blendMode: RenderingServer_EnvironmentGlowBlendMode; hdrBleedThreshold: Float; hdrBleedScale: Float; hdrLuminanceCap: Float; glowMapStrength: Float; glowMap: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_glow", 2421724940)
  methodbind.ptrcall(self, [getPtr env, getPtr enable, getPtr levels, getPtr intensity, getPtr strength, getPtr mix, getPtr bloomThreshold, getPtr blendMode, getPtr hdrBleedThreshold, getPtr hdrBleedScale, getPtr hdrLuminanceCap, getPtr glowMapStrength, getPtr glowMap], void)

proc environmentSetTonemap*(self: RenderingServer; env: RID; toneMapper: RenderingServer_EnvironmentToneMapper; exposure: Float; white: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_tonemap", 2914312638)
  methodbind.ptrcall(self, [getPtr env, getPtr toneMapper, getPtr exposure, getPtr white], void)

proc environmentSetAdjustment*(self: RenderingServer; env: RID; enable: bool; brightness: Float; contrast: Float; saturation: Float; use1DColorCorrection: bool; colorCorrection: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_adjustment", 876799838)
  methodbind.ptrcall(self, [getPtr env, getPtr enable, getPtr brightness, getPtr contrast, getPtr saturation, getPtr use1DColorCorrection, getPtr colorCorrection], void)

proc environmentSetSsr*(self: RenderingServer; env: RID; enable: bool; maxSteps: int32; fadeIn: Float; fadeOut: Float; depthTolerance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_ssr", 3607294374)
  methodbind.ptrcall(self, [getPtr env, getPtr enable, getPtr maxSteps, getPtr fadeIn, getPtr fadeOut, getPtr depthTolerance], void)

proc environmentSetSsao*(self: RenderingServer; env: RID; enable: bool; radius: Float; intensity: Float; power: Float; detail: Float; horizon: Float; sharpness: Float; lightAffect: Float; aoChannelAffect: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_ssao", 3994732740)
  methodbind.ptrcall(self, [getPtr env, getPtr enable, getPtr radius, getPtr intensity, getPtr power, getPtr detail, getPtr horizon, getPtr sharpness, getPtr lightAffect, getPtr aoChannelAffect], void)

proc environmentSetFog*(self: RenderingServer; env: RID; enable: bool; lightColor: Color; lightEnergy: Float; sunScatter: Float; density: Float; height: Float; heightDensity: Float; aerialPerspective: Float; skyAffect: Float; fogMode: RenderingServer_EnvironmentFogMode = envFogModeExponential): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_fog", 105051629)
  methodbind.ptrcall(self, [getPtr env, getPtr enable, getPtr lightColor, getPtr lightEnergy, getPtr sunScatter, getPtr density, getPtr height, getPtr heightDensity, getPtr aerialPerspective, getPtr skyAffect, getPtr fogMode], void)

proc environmentSetFogDepth*(self: RenderingServer; env: RID; curve: Float; begin: Float; `end`: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_fog_depth", 157498339)
  methodbind.ptrcall(self, [getPtr env, getPtr curve, getPtr begin, getPtr `end`], void)

proc environmentSetSdfgi*(self: RenderingServer; env: RID; enable: bool; cascades: int32; minCellSize: Float; yScale: RenderingServer_EnvironmentSDFGIYScale; useOcclusion: bool; bounceFeedback: Float; readSky: bool; energy: Float; normalBias: Float; probeBias: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_sdfgi", 3519144388)
  methodbind.ptrcall(self, [getPtr env, getPtr enable, getPtr cascades, getPtr minCellSize, getPtr yScale, getPtr useOcclusion, getPtr bounceFeedback, getPtr readSky, getPtr energy, getPtr normalBias, getPtr probeBias], void)

proc environmentSetVolumetricFog*(self: RenderingServer; env: RID; enable: bool; density: Float; albedo: Color; emission: Color; emissionEnergy: Float; anisotropy: Float; length: Float; pDetailSpread: Float; giInject: Float; temporalReprojection: bool; temporalReprojectionAmount: Float; ambientInject: Float; skyAffect: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_volumetric_fog", 1553633833)
  methodbind.ptrcall(self, [getPtr env, getPtr enable, getPtr density, getPtr albedo, getPtr emission, getPtr emissionEnergy, getPtr anisotropy, getPtr length, getPtr pDetailSpread, getPtr giInject, getPtr temporalReprojection, getPtr temporalReprojectionAmount, getPtr ambientInject, getPtr skyAffect], void)

proc environmentGlowSetUseBicubicUpscale*(self: RenderingServer; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_glow_set_use_bicubic_upscale", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc environmentSetSsrRoughnessQuality*(self: RenderingServer; quality: RenderingServer_EnvironmentSSRRoughnessQuality): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_ssr_roughness_quality", 1190026788)
  methodbind.ptrcall(self, [getPtr quality], void)

proc environmentSetSsaoQuality*(self: RenderingServer; quality: RenderingServer_EnvironmentSSAOQuality; halfSize: bool; adaptiveTarget: Float; blurPasses: int32; fadeoutFrom: Float; fadeoutTo: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_ssao_quality", 189753569)
  methodbind.ptrcall(self, [getPtr quality, getPtr halfSize, getPtr adaptiveTarget, getPtr blurPasses, getPtr fadeoutFrom, getPtr fadeoutTo], void)

proc environmentSetSsilQuality*(self: RenderingServer; quality: RenderingServer_EnvironmentSSILQuality; halfSize: bool; adaptiveTarget: Float; blurPasses: int32; fadeoutFrom: Float; fadeoutTo: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_ssil_quality", 1713836683)
  methodbind.ptrcall(self, [getPtr quality, getPtr halfSize, getPtr adaptiveTarget, getPtr blurPasses, getPtr fadeoutFrom, getPtr fadeoutTo], void)

proc environmentSetSdfgiRayCount*(self: RenderingServer; rayCount: RenderingServer_EnvironmentSDFGIRayCount): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_sdfgi_ray_count", 340137951)
  methodbind.ptrcall(self, [getPtr rayCount], void)

proc environmentSetSdfgiFramesToConverge*(self: RenderingServer; frames: RenderingServer_EnvironmentSDFGIFramesToConverge): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_sdfgi_frames_to_converge", 2182444374)
  methodbind.ptrcall(self, [getPtr frames], void)

proc environmentSetSdfgiFramesToUpdateLight*(self: RenderingServer; frames: RenderingServer_EnvironmentSDFGIFramesToUpdateLight): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_sdfgi_frames_to_update_light", 1251144068)
  methodbind.ptrcall(self, [getPtr frames], void)

proc environmentSetVolumetricFogVolumeSize*(self: RenderingServer; size: int32; depth: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_volumetric_fog_volume_size", 3937882851)
  methodbind.ptrcall(self, [getPtr size, getPtr depth], void)

proc environmentSetVolumetricFogFilterActive*(self: RenderingServer; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_set_volumetric_fog_filter_active", 2586408642)
  methodbind.ptrcall(self, [getPtr active], void)

proc environmentBakePanorama*(self: RenderingServer; environment: RID; bakeIrradiance: bool; size: Vector2i): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "environment_bake_panorama", 2452908646)
  methodbind.ptrcall(self, [getPtr environment, getPtr bakeIrradiance, getPtr size], gdref Image)

proc screenSpaceRoughnessLimiterSetActive*(self: RenderingServer; enable: bool; amount: Float; limit: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "screen_space_roughness_limiter_set_active", 916716790)
  methodbind.ptrcall(self, [getPtr enable, getPtr amount, getPtr limit], void)

proc subSurfaceScatteringSetQuality*(self: RenderingServer; quality: RenderingServer_SubSurfaceScatteringQuality): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "sub_surface_scattering_set_quality", 64571803)
  methodbind.ptrcall(self, [getPtr quality], void)

proc subSurfaceScatteringSetScale*(self: RenderingServer; scale: Float; depthScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "sub_surface_scattering_set_scale", 1017552074)
  methodbind.ptrcall(self, [getPtr scale, getPtr depthScale], void)

proc cameraAttributesCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "camera_attributes_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc cameraAttributesSetDofBlurQuality*(self: RenderingServer; quality: RenderingServer_DOFBlurQuality; useJitter: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "camera_attributes_set_dof_blur_quality", 2220136795)
  methodbind.ptrcall(self, [getPtr quality, getPtr useJitter], void)

proc cameraAttributesSetDofBlurBokehShape*(self: RenderingServer; shape: RenderingServer_DOFBokehShape): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "camera_attributes_set_dof_blur_bokeh_shape", 1205058394)
  methodbind.ptrcall(self, [getPtr shape], void)

proc cameraAttributesSetDofBlur*(self: RenderingServer; cameraAttributes: RID; farEnable: bool; farDistance: Float; farTransition: Float; nearEnable: bool; nearDistance: Float; nearTransition: Float; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "camera_attributes_set_dof_blur", 316272616)
  methodbind.ptrcall(self, [getPtr cameraAttributes, getPtr farEnable, getPtr farDistance, getPtr farTransition, getPtr nearEnable, getPtr nearDistance, getPtr nearTransition, getPtr amount], void)

proc cameraAttributesSetExposure*(self: RenderingServer; cameraAttributes: RID; multiplier: Float; normalization: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "camera_attributes_set_exposure", 2513314492)
  methodbind.ptrcall(self, [getPtr cameraAttributes, getPtr multiplier, getPtr normalization], void)

proc cameraAttributesSetAutoExposure*(self: RenderingServer; cameraAttributes: RID; enable: bool; minSensitivity: Float; maxSensitivity: Float; speed: Float; scale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "camera_attributes_set_auto_exposure", 4266986332)
  methodbind.ptrcall(self, [getPtr cameraAttributes, getPtr enable, getPtr minSensitivity, getPtr maxSensitivity, getPtr speed, getPtr scale], void)

proc scenarioCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "scenario_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc scenarioSetEnvironment*(self: RenderingServer; scenario: RID; environment: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "scenario_set_environment", 395945892)
  methodbind.ptrcall(self, [getPtr scenario, getPtr environment], void)

proc scenarioSetFallbackEnvironment*(self: RenderingServer; scenario: RID; environment: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "scenario_set_fallback_environment", 395945892)
  methodbind.ptrcall(self, [getPtr scenario, getPtr environment], void)

proc scenarioSetCameraAttributes*(self: RenderingServer; scenario: RID; effects: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "scenario_set_camera_attributes", 395945892)
  methodbind.ptrcall(self, [getPtr scenario, getPtr effects], void)

proc scenarioSetCompositor*(self: RenderingServer; scenario: RID; compositor: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "scenario_set_compositor", 395945892)
  methodbind.ptrcall(self, [getPtr scenario, getPtr compositor], void)

proc instanceCreate2*(self: RenderingServer; base: RID; scenario: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_create2", 746547085)
  methodbind.ptrcall(self, [getPtr base, getPtr scenario], RID)

proc instanceCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc instanceSetBase*(self: RenderingServer; instance: RID; base: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_set_base", 395945892)
  methodbind.ptrcall(self, [getPtr instance, getPtr base], void)

proc instanceSetScenario*(self: RenderingServer; instance: RID; scenario: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_set_scenario", 395945892)
  methodbind.ptrcall(self, [getPtr instance, getPtr scenario], void)

proc instanceSetLayerMask*(self: RenderingServer; instance: RID; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_set_layer_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr instance, getPtr mask], void)

proc instanceSetPivotData*(self: RenderingServer; instance: RID; sortingOffset: Float; useAabbCenter: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_set_pivot_data", 1280615259)
  methodbind.ptrcall(self, [getPtr instance, getPtr sortingOffset, getPtr useAabbCenter], void)

proc instanceSetTransform*(self: RenderingServer; instance: RID; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_set_transform", 3935195649)
  methodbind.ptrcall(self, [getPtr instance, getPtr transform], void)

proc instanceAttachObjectInstanceId*(self: RenderingServer; instance: RID; id: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_attach_object_instance_id", 3411492887)
  methodbind.ptrcall(self, [getPtr instance, getPtr id], void)

proc instanceSetBlendShapeWeight*(self: RenderingServer; instance: RID; shape: int32; weight: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_set_blend_shape_weight", 1892459533)
  methodbind.ptrcall(self, [getPtr instance, getPtr shape, getPtr weight], void)

proc instanceSetSurfaceOverrideMaterial*(self: RenderingServer; instance: RID; surface: int32; material: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_set_surface_override_material", 2310537182)
  methodbind.ptrcall(self, [getPtr instance, getPtr surface, getPtr material], void)

proc instanceSetVisible*(self: RenderingServer; instance: RID; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_set_visible", 1265174801)
  methodbind.ptrcall(self, [getPtr instance, getPtr visible], void)

proc instanceGeometrySetTransparency*(self: RenderingServer; instance: RID; transparency: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_geometry_set_transparency", 1794382983)
  methodbind.ptrcall(self, [getPtr instance, getPtr transparency], void)

proc instanceTeleport*(self: RenderingServer; instance: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_teleport", 2722037293)
  methodbind.ptrcall(self, [getPtr instance], void)

proc instanceSetCustomAabb*(self: RenderingServer; instance: RID; aabb: AABB): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_set_custom_aabb", 3696536120)
  methodbind.ptrcall(self, [getPtr instance, getPtr aabb], void)

proc instanceAttachSkeleton*(self: RenderingServer; instance: RID; skeleton: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_attach_skeleton", 395945892)
  methodbind.ptrcall(self, [getPtr instance, getPtr skeleton], void)

proc instanceSetExtraVisibilityMargin*(self: RenderingServer; instance: RID; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_set_extra_visibility_margin", 1794382983)
  methodbind.ptrcall(self, [getPtr instance, getPtr margin], void)

proc instanceSetVisibilityParent*(self: RenderingServer; instance: RID; parent: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_set_visibility_parent", 395945892)
  methodbind.ptrcall(self, [getPtr instance, getPtr parent], void)

proc instanceSetIgnoreCulling*(self: RenderingServer; instance: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_set_ignore_culling", 1265174801)
  methodbind.ptrcall(self, [getPtr instance, getPtr enabled], void)

proc instanceGeometrySetFlag*(self: RenderingServer; instance: RID; flag: RenderingServer_InstanceFlags; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_geometry_set_flag", 1014989537)
  methodbind.ptrcall(self, [getPtr instance, getPtr flag, getPtr enabled], void)

proc instanceGeometrySetCastShadowsSetting*(self: RenderingServer; instance: RID; shadowCastingSetting: RenderingServer_ShadowCastingSetting): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_geometry_set_cast_shadows_setting", 3768836020)
  methodbind.ptrcall(self, [getPtr instance, getPtr shadowCastingSetting], void)

proc instanceGeometrySetMaterialOverride*(self: RenderingServer; instance: RID; material: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_geometry_set_material_override", 395945892)
  methodbind.ptrcall(self, [getPtr instance, getPtr material], void)

proc instanceGeometrySetMaterialOverlay*(self: RenderingServer; instance: RID; material: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_geometry_set_material_overlay", 395945892)
  methodbind.ptrcall(self, [getPtr instance, getPtr material], void)

proc instanceGeometrySetVisibilityRange*(self: RenderingServer; instance: RID; min: Float; max: Float; minMargin: Float; maxMargin: Float; fadeMode: RenderingServer_VisibilityRangeFadeMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_geometry_set_visibility_range", 4263925858)
  methodbind.ptrcall(self, [getPtr instance, getPtr min, getPtr max, getPtr minMargin, getPtr maxMargin, getPtr fadeMode], void)

proc instanceGeometrySetLightmap*(self: RenderingServer; instance: RID; lightmap: RID; lightmapUvScale: Rect2; lightmapSlice: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_geometry_set_lightmap", 536974962)
  methodbind.ptrcall(self, [getPtr instance, getPtr lightmap, getPtr lightmapUvScale, getPtr lightmapSlice], void)

proc instanceGeometrySetLodBias*(self: RenderingServer; instance: RID; lodBias: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_geometry_set_lod_bias", 1794382983)
  methodbind.ptrcall(self, [getPtr instance, getPtr lodBias], void)

proc instanceGeometrySetShaderParameter*(self: RenderingServer; instance: RID; parameter: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_geometry_set_shader_parameter", 3477296213)
  methodbind.ptrcall(self, [getPtr instance, getPtr parameter, getPtr value], void)

proc instanceGeometryGetShaderParameter*(self: RenderingServer; instance: RID; parameter: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_geometry_get_shader_parameter", 2621281810)
  methodbind.ptrcall(self, [getPtr instance, getPtr parameter], Variant)

proc instanceGeometryGetShaderParameterDefaultValue*(self: RenderingServer; instance: RID; parameter: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_geometry_get_shader_parameter_default_value", 2621281810)
  methodbind.ptrcall(self, [getPtr instance, getPtr parameter], Variant)

proc instanceGeometryGetShaderParameterList*(self: RenderingServer; instance: RID): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instance_geometry_get_shader_parameter_list", 2684255073)
  methodbind.ptrcall(self, [getPtr instance], TypedArray[Dictionary])

proc instancesCullAabb*(self: RenderingServer; aabb: AABB; scenario: RID = RID()): PackedInt64Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instances_cull_aabb", 2570105777)
  methodbind.ptrcall(self, [getPtr aabb, getPtr scenario], PackedInt64Array)

proc instancesCullRay*(self: RenderingServer; `from`: Vector3; to: Vector3; scenario: RID = RID()): PackedInt64Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instances_cull_ray", 2208759584)
  methodbind.ptrcall(self, [getPtr `from`, getPtr to, getPtr scenario], PackedInt64Array)

proc instancesCullConvex*(self: RenderingServer; convex: TypedArray[Plane]; scenario: RID = RID()): PackedInt64Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "instances_cull_convex", 2488539944)
  methodbind.ptrcall(self, [getPtr convex, getPtr scenario], PackedInt64Array)

proc bakeRenderUv2*(self: RenderingServer; base: RID; materialOverrides: TypedArray[RID]; imageSize: Vector2i): TypedArray[gdref Image] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "bake_render_uv2", 1904608558)
  methodbind.ptrcall(self, [getPtr base, getPtr materialOverrides, getPtr imageSize], TypedArray[gdref Image])

proc canvasCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc canvasSetItemMirroring*(self: RenderingServer; canvas: RID; item: RID; mirroring: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_set_item_mirroring", 2343975398)
  methodbind.ptrcall(self, [getPtr canvas, getPtr item, getPtr mirroring], void)

proc canvasSetItemRepeat*(self: RenderingServer; item: RID; repeatSize: Vector2; repeatTimes: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_set_item_repeat", 1739512717)
  methodbind.ptrcall(self, [getPtr item, getPtr repeatSize, getPtr repeatTimes], void)

proc canvasSetModulate*(self: RenderingServer; canvas: RID; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_set_modulate", 2948539648)
  methodbind.ptrcall(self, [getPtr canvas, getPtr color], void)

proc canvasSetDisableScale*(self: RenderingServer; disable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_set_disable_scale", 2586408642)
  methodbind.ptrcall(self, [getPtr disable], void)

proc canvasTextureCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_texture_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc canvasTextureSetChannel*(self: RenderingServer; canvasTexture: RID; channel: RenderingServer_CanvasTextureChannel; texture: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_texture_set_channel", 3822119138)
  methodbind.ptrcall(self, [getPtr canvasTexture, getPtr channel, getPtr texture], void)

proc canvasTextureSetShadingParameters*(self: RenderingServer; canvasTexture: RID; baseColor: Color; shininess: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_texture_set_shading_parameters", 2124967469)
  methodbind.ptrcall(self, [getPtr canvasTexture, getPtr baseColor, getPtr shininess], void)

proc canvasTextureSetTextureFilter*(self: RenderingServer; canvasTexture: RID; filter: RenderingServer_CanvasItemTextureFilter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_texture_set_texture_filter", 1155129294)
  methodbind.ptrcall(self, [getPtr canvasTexture, getPtr filter], void)

proc canvasTextureSetTextureRepeat*(self: RenderingServer; canvasTexture: RID; repeat: RenderingServer_CanvasItemTextureRepeat): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_texture_set_texture_repeat", 1652956681)
  methodbind.ptrcall(self, [getPtr canvasTexture, getPtr repeat], void)

proc canvasItemCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc canvasItemSetParent*(self: RenderingServer; item: RID; parent: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_parent", 395945892)
  methodbind.ptrcall(self, [getPtr item, getPtr parent], void)

proc canvasItemSetDefaultTextureFilter*(self: RenderingServer; item: RID; filter: RenderingServer_CanvasItemTextureFilter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_default_texture_filter", 1155129294)
  methodbind.ptrcall(self, [getPtr item, getPtr filter], void)

proc canvasItemSetDefaultTextureRepeat*(self: RenderingServer; item: RID; repeat: RenderingServer_CanvasItemTextureRepeat): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_default_texture_repeat", 1652956681)
  methodbind.ptrcall(self, [getPtr item, getPtr repeat], void)

proc canvasItemSetVisible*(self: RenderingServer; item: RID; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_visible", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr visible], void)

proc canvasItemSetLightMask*(self: RenderingServer; item: RID; mask: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_light_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr item, getPtr mask], void)

proc canvasItemSetVisibilityLayer*(self: RenderingServer; item: RID; visibilityLayer: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_visibility_layer", 3411492887)
  methodbind.ptrcall(self, [getPtr item, getPtr visibilityLayer], void)

proc canvasItemSetTransform*(self: RenderingServer; item: RID; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_transform", 1246044741)
  methodbind.ptrcall(self, [getPtr item, getPtr transform], void)

proc canvasItemSetClip*(self: RenderingServer; item: RID; clip: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_clip", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr clip], void)

proc canvasItemSetDistanceFieldMode*(self: RenderingServer; item: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_distance_field_mode", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr enabled], void)

proc canvasItemSetCustomRect*(self: RenderingServer; item: RID; useCustomRect: bool; rect: Rect2 = rect2(0, 0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_custom_rect", 1333997032)
  methodbind.ptrcall(self, [getPtr item, getPtr useCustomRect, getPtr rect], void)

proc canvasItemSetModulate*(self: RenderingServer; item: RID; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_modulate", 2948539648)
  methodbind.ptrcall(self, [getPtr item, getPtr color], void)

proc canvasItemSetSelfModulate*(self: RenderingServer; item: RID; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_self_modulate", 2948539648)
  methodbind.ptrcall(self, [getPtr item, getPtr color], void)

proc canvasItemSetDrawBehindParent*(self: RenderingServer; item: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_draw_behind_parent", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr enabled], void)

proc canvasItemSetInterpolated*(self: RenderingServer; item: RID; interpolated: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_interpolated", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr interpolated], void)

proc canvasItemResetPhysicsInterpolation*(self: RenderingServer; item: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_reset_physics_interpolation", 2722037293)
  methodbind.ptrcall(self, [getPtr item], void)

proc canvasItemTransformPhysicsInterpolation*(self: RenderingServer; item: RID; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_transform_physics_interpolation", 1246044741)
  methodbind.ptrcall(self, [getPtr item, getPtr transform], void)

proc canvasItemAddLine*(self: RenderingServer; item: RID; `from`: Vector2; to: Vector2; color: Color; width: Float = -1.0; antialiased: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_line", 1819681853)
  methodbind.ptrcall(self, [getPtr item, getPtr `from`, getPtr to, getPtr color, getPtr width, getPtr antialiased], void)

proc canvasItemAddPolyline*(self: RenderingServer; item: RID; points: PackedVector2Array; colors: PackedColorArray; width: Float = -1.0; antialiased: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_polyline", 3098767073)
  methodbind.ptrcall(self, [getPtr item, getPtr points, getPtr colors, getPtr width, getPtr antialiased], void)

proc canvasItemAddMultiline*(self: RenderingServer; item: RID; points: PackedVector2Array; colors: PackedColorArray; width: Float = -1.0; antialiased: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_multiline", 3098767073)
  methodbind.ptrcall(self, [getPtr item, getPtr points, getPtr colors, getPtr width, getPtr antialiased], void)

proc canvasItemAddRect*(self: RenderingServer; item: RID; rect: Rect2; color: Color; antialiased: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_rect", 3523446176)
  methodbind.ptrcall(self, [getPtr item, getPtr rect, getPtr color, getPtr antialiased], void)

proc canvasItemAddCircle*(self: RenderingServer; item: RID; pos: Vector2; radius: Float; color: Color; antialiased: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_circle", 333077949)
  methodbind.ptrcall(self, [getPtr item, getPtr pos, getPtr radius, getPtr color, getPtr antialiased], void)

proc canvasItemAddTextureRect*(self: RenderingServer; item: RID; rect: Rect2; texture: RID; tile: bool = false; modulate: Color = color(1, 1, 1, 1); transpose: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_texture_rect", 324864032)
  methodbind.ptrcall(self, [getPtr item, getPtr rect, getPtr texture, getPtr tile, getPtr modulate, getPtr transpose], void)

proc canvasItemAddMsdfTextureRectRegion*(self: RenderingServer; item: RID; rect: Rect2; texture: RID; srcRect: Rect2; modulate: Color = color(1, 1, 1, 1); outlineSize: int32 = 0; pxRange: Float = 1.0; scale: Float = 1.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_msdf_texture_rect_region", 97408773)
  methodbind.ptrcall(self, [getPtr item, getPtr rect, getPtr texture, getPtr srcRect, getPtr modulate, getPtr outlineSize, getPtr pxRange, getPtr scale], void)

proc canvasItemAddLcdTextureRectRegion*(self: RenderingServer; item: RID; rect: Rect2; texture: RID; srcRect: Rect2; modulate: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_lcd_texture_rect_region", 359793297)
  methodbind.ptrcall(self, [getPtr item, getPtr rect, getPtr texture, getPtr srcRect, getPtr modulate], void)

proc canvasItemAddTextureRectRegion*(self: RenderingServer; item: RID; rect: Rect2; texture: RID; srcRect: Rect2; modulate: Color = color(1, 1, 1, 1); transpose: bool = false; clipUv: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_texture_rect_region", 485157892)
  methodbind.ptrcall(self, [getPtr item, getPtr rect, getPtr texture, getPtr srcRect, getPtr modulate, getPtr transpose, getPtr clipUv], void)

proc canvasItemAddNinePatch*(self: RenderingServer; item: RID; rect: Rect2; source: Rect2; texture: RID; topleft: Vector2; bottomright: Vector2; xAxisMode: RenderingServer_NinePatchAxisMode = ninePatchStretch; yAxisMode: RenderingServer_NinePatchAxisMode = ninePatchStretch; drawCenter: bool = true; modulate: Color = color(1, 1, 1, 1)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_nine_patch", 389957886)
  methodbind.ptrcall(self, [getPtr item, getPtr rect, getPtr source, getPtr texture, getPtr topleft, getPtr bottomright, getPtr xAxisMode, getPtr yAxisMode, getPtr drawCenter, getPtr modulate], void)

proc canvasItemAddPrimitive*(self: RenderingServer; item: RID; points: PackedVector2Array; colors: PackedColorArray; uvs: PackedVector2Array; texture: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_primitive", 3731601077)
  methodbind.ptrcall(self, [getPtr item, getPtr points, getPtr colors, getPtr uvs, getPtr texture], void)

proc canvasItemAddPolygon*(self: RenderingServer; item: RID; points: PackedVector2Array; colors: PackedColorArray; uvs: PackedVector2Array = PackedVector2Array(); texture: RID = RID()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_polygon", 3580000528)
  methodbind.ptrcall(self, [getPtr item, getPtr points, getPtr colors, getPtr uvs, getPtr texture], void)

proc canvasItemAddTriangleArray*(self: RenderingServer; item: RID; indices: PackedInt32Array; points: PackedVector2Array; colors: PackedColorArray; uvs: PackedVector2Array = PackedVector2Array(); bones: PackedInt32Array = PackedInt32Array(); weights: PackedFloat32Array = PackedFloat32Array(); texture: RID = RID(); count: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_triangle_array", 660261329)
  methodbind.ptrcall(self, [getPtr item, getPtr indices, getPtr points, getPtr colors, getPtr uvs, getPtr bones, getPtr weights, getPtr texture, getPtr count], void)

proc canvasItemAddMesh*(self: RenderingServer; item: RID; mesh: RID; transform: Transform2D = transform2D(); modulate: Color = color(1, 1, 1, 1); texture: RID = RID()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_mesh", 316450961)
  methodbind.ptrcall(self, [getPtr item, getPtr mesh, getPtr transform, getPtr modulate, getPtr texture], void)

proc canvasItemAddMultimesh*(self: RenderingServer; item: RID; mesh: RID; texture: RID = RID()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_multimesh", 2131855138)
  methodbind.ptrcall(self, [getPtr item, getPtr mesh, getPtr texture], void)

proc canvasItemAddParticles*(self: RenderingServer; item: RID; particles: RID; texture: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_particles", 2575754278)
  methodbind.ptrcall(self, [getPtr item, getPtr particles, getPtr texture], void)

proc canvasItemAddSetTransform*(self: RenderingServer; item: RID; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_set_transform", 1246044741)
  methodbind.ptrcall(self, [getPtr item, getPtr transform], void)

proc canvasItemAddClipIgnore*(self: RenderingServer; item: RID; ignore: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_clip_ignore", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr ignore], void)

proc canvasItemAddAnimationSlice*(self: RenderingServer; item: RID; animationLength: float64; sliceBegin: float64; sliceEnd: float64; offset: float64 = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_add_animation_slice", 2646834499)
  methodbind.ptrcall(self, [getPtr item, getPtr animationLength, getPtr sliceBegin, getPtr sliceEnd, getPtr offset], void)

proc canvasItemSetSortChildrenByY*(self: RenderingServer; item: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_sort_children_by_y", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr enabled], void)

proc canvasItemSetZIndex*(self: RenderingServer; item: RID; zIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_z_index", 3411492887)
  methodbind.ptrcall(self, [getPtr item, getPtr zIndex], void)

proc canvasItemSetZAsRelativeToParent*(self: RenderingServer; item: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_z_as_relative_to_parent", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr enabled], void)

proc canvasItemSetCopyToBackbuffer*(self: RenderingServer; item: RID; enabled: bool; rect: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_copy_to_backbuffer", 2429202503)
  methodbind.ptrcall(self, [getPtr item, getPtr enabled, getPtr rect], void)

proc canvasItemAttachSkeleton*(self: RenderingServer; item: RID; skeleton: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_attach_skeleton", 395945892)
  methodbind.ptrcall(self, [getPtr item, getPtr skeleton], void)

proc canvasItemClear*(self: RenderingServer; item: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_clear", 2722037293)
  methodbind.ptrcall(self, [getPtr item], void)

proc canvasItemSetDrawIndex*(self: RenderingServer; item: RID; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_draw_index", 3411492887)
  methodbind.ptrcall(self, [getPtr item, getPtr index], void)

proc canvasItemSetMaterial*(self: RenderingServer; item: RID; material: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_material", 395945892)
  methodbind.ptrcall(self, [getPtr item, getPtr material], void)

proc canvasItemSetUseParentMaterial*(self: RenderingServer; item: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_use_parent_material", 1265174801)
  methodbind.ptrcall(self, [getPtr item, getPtr enabled], void)

proc canvasItemSetInstanceShaderParameter*(self: RenderingServer; instance: RID; parameter: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_instance_shader_parameter", 3477296213)
  methodbind.ptrcall(self, [getPtr instance, getPtr parameter, getPtr value], void)

proc canvasItemGetInstanceShaderParameter*(self: RenderingServer; instance: RID; parameter: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_get_instance_shader_parameter", 2621281810)
  methodbind.ptrcall(self, [getPtr instance, getPtr parameter], Variant)

proc canvasItemGetInstanceShaderParameterDefaultValue*(self: RenderingServer; instance: RID; parameter: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_get_instance_shader_parameter_default_value", 2621281810)
  methodbind.ptrcall(self, [getPtr instance, getPtr parameter], Variant)

proc canvasItemGetInstanceShaderParameterList*(self: RenderingServer; instance: RID): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_get_instance_shader_parameter_list", 2684255073)
  methodbind.ptrcall(self, [getPtr instance], TypedArray[Dictionary])

proc canvasItemSetVisibilityNotifier*(self: RenderingServer; item: RID; enable: bool; area: Rect2; enterCallable: Callable; exitCallable: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_visibility_notifier", 3568945579)
  methodbind.ptrcall(self, [getPtr item, getPtr enable, getPtr area, getPtr enterCallable, getPtr exitCallable], void)

proc canvasItemSetCanvasGroupMode*(self: RenderingServer; item: RID; mode: RenderingServer_CanvasGroupMode; clearMargin: Float = 5.0; fitEmpty: bool = false; fitMargin: Float = 0.0; blurMipmaps: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_item_set_canvas_group_mode", 3973586316)
  methodbind.ptrcall(self, [getPtr item, getPtr mode, getPtr clearMargin, getPtr fitEmpty, getPtr fitMargin, getPtr blurMipmaps], void)

proc debugCanvasItemGetRect*(self: RenderingServer; item: RID): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "debug_canvas_item_get_rect", 624227424)
  methodbind.ptrcall(self, [getPtr item], Rect2)

proc canvasLightCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc canvasLightAttachToCanvas*(self: RenderingServer; light: RID; canvas: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_attach_to_canvas", 395945892)
  methodbind.ptrcall(self, [getPtr light, getPtr canvas], void)

proc canvasLightSetEnabled*(self: RenderingServer; light: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr light, getPtr enabled], void)

proc canvasLightSetTextureScale*(self: RenderingServer; light: RID; scale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_texture_scale", 1794382983)
  methodbind.ptrcall(self, [getPtr light, getPtr scale], void)

proc canvasLightSetTransform*(self: RenderingServer; light: RID; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_transform", 1246044741)
  methodbind.ptrcall(self, [getPtr light, getPtr transform], void)

proc canvasLightSetTexture*(self: RenderingServer; light: RID; texture: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_texture", 395945892)
  methodbind.ptrcall(self, [getPtr light, getPtr texture], void)

proc canvasLightSetTextureOffset*(self: RenderingServer; light: RID; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_texture_offset", 3201125042)
  methodbind.ptrcall(self, [getPtr light, getPtr offset], void)

proc canvasLightSetColor*(self: RenderingServer; light: RID; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_color", 2948539648)
  methodbind.ptrcall(self, [getPtr light, getPtr color], void)

proc canvasLightSetHeight*(self: RenderingServer; light: RID; height: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_height", 1794382983)
  methodbind.ptrcall(self, [getPtr light, getPtr height], void)

proc canvasLightSetEnergy*(self: RenderingServer; light: RID; energy: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_energy", 1794382983)
  methodbind.ptrcall(self, [getPtr light, getPtr energy], void)

proc canvasLightSetZRange*(self: RenderingServer; light: RID; minZ: int32; maxZ: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_z_range", 4288446313)
  methodbind.ptrcall(self, [getPtr light, getPtr minZ, getPtr maxZ], void)

proc canvasLightSetLayerRange*(self: RenderingServer; light: RID; minLayer: int32; maxLayer: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_layer_range", 4288446313)
  methodbind.ptrcall(self, [getPtr light, getPtr minLayer, getPtr maxLayer], void)

proc canvasLightSetItemCullMask*(self: RenderingServer; light: RID; mask: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_item_cull_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr light, getPtr mask], void)

proc canvasLightSetItemShadowCullMask*(self: RenderingServer; light: RID; mask: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_item_shadow_cull_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr light, getPtr mask], void)

proc canvasLightSetMode*(self: RenderingServer; light: RID; mode: RenderingServer_CanvasLightMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_mode", 2957564891)
  methodbind.ptrcall(self, [getPtr light, getPtr mode], void)

proc canvasLightSetShadowEnabled*(self: RenderingServer; light: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_shadow_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr light, getPtr enabled], void)

proc canvasLightSetShadowFilter*(self: RenderingServer; light: RID; filter: RenderingServer_CanvasLightShadowFilter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_shadow_filter", 393119659)
  methodbind.ptrcall(self, [getPtr light, getPtr filter], void)

proc canvasLightSetShadowColor*(self: RenderingServer; light: RID; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_shadow_color", 2948539648)
  methodbind.ptrcall(self, [getPtr light, getPtr color], void)

proc canvasLightSetShadowSmooth*(self: RenderingServer; light: RID; smooth: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_shadow_smooth", 1794382983)
  methodbind.ptrcall(self, [getPtr light, getPtr smooth], void)

proc canvasLightSetBlendMode*(self: RenderingServer; light: RID; mode: RenderingServer_CanvasLightBlendMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_blend_mode", 804895945)
  methodbind.ptrcall(self, [getPtr light, getPtr mode], void)

proc canvasLightSetInterpolated*(self: RenderingServer; light: RID; interpolated: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_set_interpolated", 1265174801)
  methodbind.ptrcall(self, [getPtr light, getPtr interpolated], void)

proc canvasLightResetPhysicsInterpolation*(self: RenderingServer; light: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_reset_physics_interpolation", 2722037293)
  methodbind.ptrcall(self, [getPtr light], void)

proc canvasLightTransformPhysicsInterpolation*(self: RenderingServer; light: RID; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_transform_physics_interpolation", 1246044741)
  methodbind.ptrcall(self, [getPtr light, getPtr transform], void)

proc canvasLightOccluderCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_occluder_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc canvasLightOccluderAttachToCanvas*(self: RenderingServer; occluder: RID; canvas: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_occluder_attach_to_canvas", 395945892)
  methodbind.ptrcall(self, [getPtr occluder, getPtr canvas], void)

proc canvasLightOccluderSetEnabled*(self: RenderingServer; occluder: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_occluder_set_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr occluder, getPtr enabled], void)

proc canvasLightOccluderSetPolygon*(self: RenderingServer; occluder: RID; polygon: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_occluder_set_polygon", 395945892)
  methodbind.ptrcall(self, [getPtr occluder, getPtr polygon], void)

proc canvasLightOccluderSetAsSdfCollision*(self: RenderingServer; occluder: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_occluder_set_as_sdf_collision", 1265174801)
  methodbind.ptrcall(self, [getPtr occluder, getPtr enable], void)

proc canvasLightOccluderSetTransform*(self: RenderingServer; occluder: RID; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_occluder_set_transform", 1246044741)
  methodbind.ptrcall(self, [getPtr occluder, getPtr transform], void)

proc canvasLightOccluderSetLightMask*(self: RenderingServer; occluder: RID; mask: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_occluder_set_light_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr occluder, getPtr mask], void)

proc canvasLightOccluderSetInterpolated*(self: RenderingServer; occluder: RID; interpolated: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_occluder_set_interpolated", 1265174801)
  methodbind.ptrcall(self, [getPtr occluder, getPtr interpolated], void)

proc canvasLightOccluderResetPhysicsInterpolation*(self: RenderingServer; occluder: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_occluder_reset_physics_interpolation", 2722037293)
  methodbind.ptrcall(self, [getPtr occluder], void)

proc canvasLightOccluderTransformPhysicsInterpolation*(self: RenderingServer; occluder: RID; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_light_occluder_transform_physics_interpolation", 1246044741)
  methodbind.ptrcall(self, [getPtr occluder, getPtr transform], void)

proc canvasOccluderPolygonCreate*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_occluder_polygon_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc canvasOccluderPolygonSetShape*(self: RenderingServer; occluderPolygon: RID; shape: PackedVector2Array; closed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_occluder_polygon_set_shape", 2103882027)
  methodbind.ptrcall(self, [getPtr occluderPolygon, getPtr shape, getPtr closed], void)

proc canvasOccluderPolygonSetCullMode*(self: RenderingServer; occluderPolygon: RID; mode: RenderingServer_CanvasOccluderPolygonCullMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_occluder_polygon_set_cull_mode", 1839404663)
  methodbind.ptrcall(self, [getPtr occluderPolygon, getPtr mode], void)

proc canvasSetShadowTextureSize*(self: RenderingServer; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "canvas_set_shadow_texture_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size], void)

proc globalShaderParameterAdd*(self: RenderingServer; name: StringName; `type`: RenderingServer_GlobalShaderParameterType; defaultValue: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "global_shader_parameter_add", 463390080)
  methodbind.ptrcall(self, [getPtr name, getPtr `type`, getPtr defaultValue], void)

proc globalShaderParameterRemove*(self: RenderingServer; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "global_shader_parameter_remove", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc globalShaderParameterGetList*(self: RenderingServer): TypedArray[StringName] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "global_shader_parameter_get_list", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[StringName])

proc globalShaderParameterSet*(self: RenderingServer; name: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "global_shader_parameter_set", 3776071444)
  methodbind.ptrcall(self, [getPtr name, getPtr value], void)

proc globalShaderParameterSetOverride*(self: RenderingServer; name: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "global_shader_parameter_set_override", 3776071444)
  methodbind.ptrcall(self, [getPtr name, getPtr value], void)

proc globalShaderParameterGet*(self: RenderingServer; name: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "global_shader_parameter_get", 2760726917)
  methodbind.ptrcall(self, [getPtr name], Variant)

proc globalShaderParameterGetType*(self: RenderingServer; name: StringName): RenderingServer_GlobalShaderParameterType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "global_shader_parameter_get_type", 1601414142)
  methodbind.ptrcall(self, [getPtr name], RenderingServer_GlobalShaderParameterType)

proc freeRid*(self: RenderingServer; rid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "free_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid], void)

proc requestFrameDrawnCallback*(self: RenderingServer; callable: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "request_frame_drawn_callback", 1611583062)
  methodbind.ptrcall(self, [getPtr callable], void)

proc hasChanged*(self: RenderingServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "has_changed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getRenderingInfo*(self: RenderingServer; info: RenderingServer_RenderingInfo): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "get_rendering_info", 3763192241)
  methodbind.ptrcall(self, [getPtr info], uint64)

proc getVideoAdapterName*(self: RenderingServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "get_video_adapter_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc getVideoAdapterVendor*(self: RenderingServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "get_video_adapter_vendor", 201670096)
  methodbind.ptrcall(self, [], String)

proc getVideoAdapterType*(self: RenderingServer): RenderingDevice_DeviceType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "get_video_adapter_type", 3099547011)
  methodbind.ptrcall(self, [], RenderingDevice_DeviceType)

proc getVideoAdapterApiVersion*(self: RenderingServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "get_video_adapter_api_version", 201670096)
  methodbind.ptrcall(self, [], String)

proc getCurrentRenderingDriverName*(self: RenderingServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "get_current_rendering_driver_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc getCurrentRenderingMethod*(self: RenderingServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "get_current_rendering_method", 201670096)
  methodbind.ptrcall(self, [], String)

proc makeSphereMesh*(self: RenderingServer; latitudes: int32; longitudes: int32; radius: Float): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "make_sphere_mesh", 2251015897)
  methodbind.ptrcall(self, [getPtr latitudes, getPtr longitudes, getPtr radius], RID)

proc getTestCube*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "get_test_cube", 529393457)
  methodbind.ptrcall(self, [], RID)

proc getTestTexture*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "get_test_texture", 529393457)
  methodbind.ptrcall(self, [], RID)

proc getWhiteTexture*(self: RenderingServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "get_white_texture", 529393457)
  methodbind.ptrcall(self, [], RID)

proc setBootImage*(self: RenderingServer; image: gdref Image; color: Color; scale: bool; useFilter: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "set_boot_image", 3759744527)
  methodbind.ptrcall(self, [getPtr image, getPtr color, getPtr scale, getPtr useFilter], void)

proc getDefaultClearColor*(self: RenderingServer): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "get_default_clear_color", 3200896285)
  methodbind.ptrcall(self, [], Color)

proc setDefaultClearColor*(self: RenderingServer; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "set_default_clear_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc hasOsFeature*(self: RenderingServer; feature: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "has_os_feature", 3927539163)
  methodbind.ptrcall(self, [getPtr feature], bool)

proc setDebugGenerateWireframes*(self: RenderingServer; generate: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "set_debug_generate_wireframes", 2586408642)
  methodbind.ptrcall(self, [getPtr generate], void)

proc isRenderLoopEnabled*(self: RenderingServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "is_render_loop_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setRenderLoopEnabled*(self: RenderingServer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "set_render_loop_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getFrameSetupTimeCpu*(self: RenderingServer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "get_frame_setup_time_cpu", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc forceSync*(self: RenderingServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "force_sync", 3218959716)
  methodbind.ptrcall(self, [], void)

proc forceDraw*(self: RenderingServer; swapBuffers: bool = true; frameStep: float64 = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "force_draw", 1076185472)
  methodbind.ptrcall(self, [getPtr swapBuffers, getPtr frameStep], void)

proc getRenderingDevice*(self: RenderingServer): RenderingDevice =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "get_rendering_device", 1405107940)
  methodbind.ptrcall(self, [], RenderingDevice)

proc createLocalRenderingDevice*(self: RenderingServer): RenderingDevice =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "create_local_rendering_device", 1405107940)
  methodbind.ptrcall(self, [], RenderingDevice)

proc isOnRenderThread*(self: RenderingServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "is_on_render_thread", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc callOnRenderThread*(self: RenderingServer; callable: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "call_on_render_thread", 1611583062)
  methodbind.ptrcall(self, [getPtr callable], void)

proc hasFeature*(self: RenderingServer; feature: RenderingServer_Features): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderingServer, "has_feature", 598462696)
  methodbind.ptrcall(self, [getPtr feature], bool)

template renderLoopEnabled*(self: RenderingServer): untyped = self.isRenderLoopEnabled()
template `renderLoopEnabled=`*(self: RenderingServer; value) = self.setRenderLoopEnabled(value)
