{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFState, Resource)

const HandleBinaryDiscardTextures* = 0
const HandleBinaryExtractTextures* = 1
const HandleBinaryEmbedAsBasisu* = 2
const HandleBinaryEmbedAsUncompressed* = 3

proc addUsedExtension*(self: GLTFState; extensionName: String; required: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "add_used_extension", 2678287736)
  methodbind.ptrcall(self, [getPtr extensionName, getPtr required], void)

proc appendDataToBuffers*(self: GLTFState; data: PackedByteArray; deduplication: bool): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "append_data_to_buffers", 1460416665)
  methodbind.ptrcall(self, [getPtr data, getPtr deduplication], int32)

proc appendGltfNode*(self: GLTFState; gltfNode: gdref GLTFNode; godotSceneNode: Node; parentNodeIndex: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "append_gltf_node", 3562288551)
  methodbind.ptrcall(self, [getPtr gltfNode, getPtr godotSceneNode, getPtr parentNodeIndex], int32)

proc getJson*(self: GLTFState): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_json", 2382534195)
  methodbind.ptrcall(self, [], Dictionary)

proc setJson*(self: GLTFState; json: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_json", 4155329257)
  methodbind.ptrcall(self, [getPtr json], void)

proc getMajorVersion*(self: GLTFState): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_major_version", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setMajorVersion*(self: GLTFState; majorVersion: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_major_version", 1286410249)
  methodbind.ptrcall(self, [getPtr majorVersion], void)

proc getMinorVersion*(self: GLTFState): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_minor_version", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setMinorVersion*(self: GLTFState; minorVersion: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_minor_version", 1286410249)
  methodbind.ptrcall(self, [getPtr minorVersion], void)

proc getCopyright*(self: GLTFState): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_copyright", 201670096)
  methodbind.ptrcall(self, [], String)

proc setCopyright*(self: GLTFState; copyright: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_copyright", 83702148)
  methodbind.ptrcall(self, [getPtr copyright], void)

proc getGlbData*(self: GLTFState): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_glb_data", 2115431945)
  methodbind.ptrcall(self, [], PackedByteArray)

proc setGlbData*(self: GLTFState; glbData: PackedByteArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_glb_data", 2971499966)
  methodbind.ptrcall(self, [getPtr glbData], void)

proc getUseNamedSkinBinds*(self: GLTFState): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_use_named_skin_binds", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setUseNamedSkinBinds*(self: GLTFState; useNamedSkinBinds: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_use_named_skin_binds", 2586408642)
  methodbind.ptrcall(self, [getPtr useNamedSkinBinds], void)

proc getNodes*(self: GLTFState): TypedArray[gdref GLTFNode] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_nodes", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[gdref GLTFNode])

proc setNodes*(self: GLTFState; nodes: TypedArray[gdref GLTFNode]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_nodes", 381264803)
  methodbind.ptrcall(self, [getPtr nodes], void)

proc getBuffers*(self: GLTFState): TypedArray[PackedByteArray] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_buffers", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[PackedByteArray])

proc setBuffers*(self: GLTFState; buffers: TypedArray[PackedByteArray]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_buffers", 381264803)
  methodbind.ptrcall(self, [getPtr buffers], void)

proc getBufferViews*(self: GLTFState): TypedArray[gdref GLTFBufferView] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_buffer_views", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[gdref GLTFBufferView])

proc setBufferViews*(self: GLTFState; bufferViews: TypedArray[gdref GLTFBufferView]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_buffer_views", 381264803)
  methodbind.ptrcall(self, [getPtr bufferViews], void)

proc getAccessors*(self: GLTFState): TypedArray[gdref GLTFAccessor] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_accessors", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[gdref GLTFAccessor])

proc setAccessors*(self: GLTFState; accessors: TypedArray[gdref GLTFAccessor]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_accessors", 381264803)
  methodbind.ptrcall(self, [getPtr accessors], void)

proc getMeshes*(self: GLTFState): TypedArray[gdref GLTFMesh] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_meshes", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[gdref GLTFMesh])

proc setMeshes*(self: GLTFState; meshes: TypedArray[gdref GLTFMesh]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_meshes", 381264803)
  methodbind.ptrcall(self, [getPtr meshes], void)

proc getAnimationPlayersCount*(self: GLTFState; idx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_animation_players_count", 3744713108)
  methodbind.ptrcall(self, [getPtr idx], int32)

proc getAnimationPlayer*(self: GLTFState; idx: int32): AnimationPlayer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_animation_player", 925043400)
  methodbind.ptrcall(self, [getPtr idx], AnimationPlayer)

proc getMaterials*(self: GLTFState): TypedArray[gdref Material] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_materials", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[gdref Material])

proc setMaterials*(self: GLTFState; materials: TypedArray[gdref Material]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_materials", 381264803)
  methodbind.ptrcall(self, [getPtr materials], void)

proc getSceneName*(self: GLTFState): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_scene_name", 2841200299)
  methodbind.ptrcall(self, [], String)

proc setSceneName*(self: GLTFState; sceneName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_scene_name", 83702148)
  methodbind.ptrcall(self, [getPtr sceneName], void)

proc getBasePath*(self: GLTFState): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_base_path", 2841200299)
  methodbind.ptrcall(self, [], String)

proc setBasePath*(self: GLTFState; basePath: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_base_path", 83702148)
  methodbind.ptrcall(self, [getPtr basePath], void)

proc getFilename*(self: GLTFState): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_filename", 201670096)
  methodbind.ptrcall(self, [], String)

proc setFilename*(self: GLTFState; filename: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_filename", 83702148)
  methodbind.ptrcall(self, [getPtr filename], void)

proc getRootNodes*(self: GLTFState): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_root_nodes", 969006518)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setRootNodes*(self: GLTFState; rootNodes: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_root_nodes", 3614634198)
  methodbind.ptrcall(self, [getPtr rootNodes], void)

proc getTextures*(self: GLTFState): TypedArray[gdref GLTFTexture] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_textures", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[gdref GLTFTexture])

proc setTextures*(self: GLTFState; textures: TypedArray[gdref GLTFTexture]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_textures", 381264803)
  methodbind.ptrcall(self, [getPtr textures], void)

proc getTextureSamplers*(self: GLTFState): TypedArray[gdref GLTFTextureSampler] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_texture_samplers", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[gdref GLTFTextureSampler])

proc setTextureSamplers*(self: GLTFState; textureSamplers: TypedArray[gdref GLTFTextureSampler]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_texture_samplers", 381264803)
  methodbind.ptrcall(self, [getPtr textureSamplers], void)

proc getImages*(self: GLTFState): TypedArray[gdref Texture2D] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_images", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[gdref Texture2D])

proc setImages*(self: GLTFState; images: TypedArray[gdref Texture2D]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_images", 381264803)
  methodbind.ptrcall(self, [getPtr images], void)

proc getSkins*(self: GLTFState): TypedArray[gdref GLTFSkin] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_skins", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[gdref GLTFSkin])

proc setSkins*(self: GLTFState; skins: TypedArray[gdref GLTFSkin]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_skins", 381264803)
  methodbind.ptrcall(self, [getPtr skins], void)

proc getCameras*(self: GLTFState): TypedArray[gdref GLTFCamera] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_cameras", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[gdref GLTFCamera])

proc setCameras*(self: GLTFState; cameras: TypedArray[gdref GLTFCamera]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_cameras", 381264803)
  methodbind.ptrcall(self, [getPtr cameras], void)

proc getLights*(self: GLTFState): TypedArray[gdref GLTFLight] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_lights", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[gdref GLTFLight])

proc setLights*(self: GLTFState; lights: TypedArray[gdref GLTFLight]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_lights", 381264803)
  methodbind.ptrcall(self, [getPtr lights], void)

proc getUniqueNames*(self: GLTFState): TypedArray[String] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_unique_names", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[String])

proc setUniqueNames*(self: GLTFState; uniqueNames: TypedArray[String]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_unique_names", 381264803)
  methodbind.ptrcall(self, [getPtr uniqueNames], void)

proc getUniqueAnimationNames*(self: GLTFState): TypedArray[String] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_unique_animation_names", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[String])

proc setUniqueAnimationNames*(self: GLTFState; uniqueAnimationNames: TypedArray[String]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_unique_animation_names", 381264803)
  methodbind.ptrcall(self, [getPtr uniqueAnimationNames], void)

proc getSkeletons*(self: GLTFState): TypedArray[gdref GLTFSkeleton] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_skeletons", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[gdref GLTFSkeleton])

proc setSkeletons*(self: GLTFState; skeletons: TypedArray[gdref GLTFSkeleton]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_skeletons", 381264803)
  methodbind.ptrcall(self, [getPtr skeletons], void)

proc getCreateAnimations*(self: GLTFState): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_create_animations", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setCreateAnimations*(self: GLTFState; createAnimations: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_create_animations", 2586408642)
  methodbind.ptrcall(self, [getPtr createAnimations], void)

proc getImportAsSkeletonBones*(self: GLTFState): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_import_as_skeleton_bones", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setImportAsSkeletonBones*(self: GLTFState; importAsSkeletonBones: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_import_as_skeleton_bones", 2586408642)
  methodbind.ptrcall(self, [getPtr importAsSkeletonBones], void)

proc getAnimations*(self: GLTFState): TypedArray[gdref GLTFAnimation] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_animations", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[gdref GLTFAnimation])

proc setAnimations*(self: GLTFState; animations: TypedArray[gdref GLTFAnimation]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_animations", 381264803)
  methodbind.ptrcall(self, [getPtr animations], void)

proc getSceneNode*(self: GLTFState; idx: int32): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_scene_node", 4253421667)
  methodbind.ptrcall(self, [getPtr idx], Node)

proc getNodeIndex*(self: GLTFState; sceneNode: Node): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_node_index", 1205807060)
  methodbind.ptrcall(self, [getPtr sceneNode], int32)

proc getAdditionalData*(self: GLTFState; extensionName: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_additional_data", 2138907829)
  methodbind.ptrcall(self, [getPtr extensionName], Variant)

proc setAdditionalData*(self: GLTFState; extensionName: StringName; additionalData: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_additional_data", 3776071444)
  methodbind.ptrcall(self, [getPtr extensionName, getPtr additionalData], void)

proc getHandleBinaryImage*(self: GLTFState): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_handle_binary_image", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setHandleBinaryImage*(self: GLTFState; `method`: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_handle_binary_image", 1286410249)
  methodbind.ptrcall(self, [getPtr `method`], void)

proc setBakeFps*(self: GLTFState; value: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "set_bake_fps", 373806689)
  methodbind.ptrcall(self, [getPtr value], void)

proc getBakeFps*(self: GLTFState): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFState, "get_bake_fps", 1740695150)
  methodbind.ptrcall(self, [], float64)

template json*(self: GLTFState): untyped = self.getJson()
template `json=`*(self: GLTFState; value) = self.setJson(value)

template majorVersion*(self: GLTFState): untyped = self.getMajorVersion()
template `majorVersion=`*(self: GLTFState; value) = self.setMajorVersion(value)

template minorVersion*(self: GLTFState): untyped = self.getMinorVersion()
template `minorVersion=`*(self: GLTFState; value) = self.setMinorVersion(value)

template copyright*(self: GLTFState): untyped = self.getCopyright()
template `copyright=`*(self: GLTFState; value) = self.setCopyright(value)

template glbData*(self: GLTFState): untyped = self.getGlbData()
template `glbData=`*(self: GLTFState; value) = self.setGlbData(value)

template useNamedSkinBinds*(self: GLTFState): untyped = self.getUseNamedSkinBinds()
template `useNamedSkinBinds=`*(self: GLTFState; value) = self.setUseNamedSkinBinds(value)

template nodes*(self: GLTFState): untyped = self.getNodes()
template `nodes=`*(self: GLTFState; value) = self.setNodes(value)

template buffers*(self: GLTFState): untyped = self.getBuffers()
template `buffers=`*(self: GLTFState; value) = self.setBuffers(value)

template bufferViews*(self: GLTFState): untyped = self.getBufferViews()
template `bufferViews=`*(self: GLTFState; value) = self.setBufferViews(value)

template accessors*(self: GLTFState): untyped = self.getAccessors()
template `accessors=`*(self: GLTFState; value) = self.setAccessors(value)

template meshes*(self: GLTFState): untyped = self.getMeshes()
template `meshes=`*(self: GLTFState; value) = self.setMeshes(value)

template materials*(self: GLTFState): untyped = self.getMaterials()
template `materials=`*(self: GLTFState; value) = self.setMaterials(value)

template sceneName*(self: GLTFState): untyped = self.getSceneName()
template `sceneName=`*(self: GLTFState; value) = self.setSceneName(value)

template basePath*(self: GLTFState): untyped = self.getBasePath()
template `basePath=`*(self: GLTFState; value) = self.setBasePath(value)

template filename*(self: GLTFState): untyped = self.getFilename()
template `filename=`*(self: GLTFState; value) = self.setFilename(value)

template rootNodes*(self: GLTFState): untyped = self.getRootNodes()
template `rootNodes=`*(self: GLTFState; value) = self.setRootNodes(value)

template textures*(self: GLTFState): untyped = self.getTextures()
template `textures=`*(self: GLTFState; value) = self.setTextures(value)

template textureSamplers*(self: GLTFState): untyped = self.getTextureSamplers()
template `textureSamplers=`*(self: GLTFState; value) = self.setTextureSamplers(value)

template images*(self: GLTFState): untyped = self.getImages()
template `images=`*(self: GLTFState; value) = self.setImages(value)

template skins*(self: GLTFState): untyped = self.getSkins()
template `skins=`*(self: GLTFState; value) = self.setSkins(value)

template cameras*(self: GLTFState): untyped = self.getCameras()
template `cameras=`*(self: GLTFState; value) = self.setCameras(value)

template lights*(self: GLTFState): untyped = self.getLights()
template `lights=`*(self: GLTFState; value) = self.setLights(value)

template uniqueNames*(self: GLTFState): untyped = self.getUniqueNames()
template `uniqueNames=`*(self: GLTFState; value) = self.setUniqueNames(value)

template uniqueAnimationNames*(self: GLTFState): untyped = self.getUniqueAnimationNames()
template `uniqueAnimationNames=`*(self: GLTFState; value) = self.setUniqueAnimationNames(value)

template skeletons*(self: GLTFState): untyped = self.getSkeletons()
template `skeletons=`*(self: GLTFState; value) = self.setSkeletons(value)

template createAnimations*(self: GLTFState): untyped = self.getCreateAnimations()
template `createAnimations=`*(self: GLTFState; value) = self.setCreateAnimations(value)

template importAsSkeletonBones*(self: GLTFState): untyped = self.getImportAsSkeletonBones()
template `importAsSkeletonBones=`*(self: GLTFState; value) = self.setImportAsSkeletonBones(value)

template animations*(self: GLTFState): untyped = self.getAnimations()
template `animations=`*(self: GLTFState; value) = self.setAnimations(value)

template handleBinaryImage*(self: GLTFState): untyped = self.getHandleBinaryImage()
template `handleBinaryImage=`*(self: GLTFState; value) = self.setHandleBinaryImage(value)

template bakeFps*(self: GLTFState): untyped = self.getBakeFps()
template `bakeFps=`*(self: GLTFState; value) = self.setBakeFps(value)
