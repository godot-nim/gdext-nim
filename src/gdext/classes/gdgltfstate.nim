{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc addUsedExtension*(self: GltfState; extensionName: String; required: bool): void =
  expandMethodBind(className GltfState, "add_used_extension", 2678287736)
  var `?param` = [getPtr extensionName, getPtr required]
  methodbind.ptrcall(self, addr `?param`[0])

proc appendDataToBuffers*(self: GltfState; data: PackedByteArray; deduplication: bool): int32 =
  expandMethodBind(className GltfState, "append_data_to_buffers", 1460416665)
  var `?param` = [getPtr data, getPtr deduplication]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getJson*(self: GltfState): Dictionary =
  expandMethodBind(className GltfState, "get_json", 2382534195)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc setJson*(self: GltfState; json: Dictionary): void =
  expandMethodBind(className GltfState, "set_json", 4155329257)
  var `?param` = [getPtr json]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMajorVersion*(self: GltfState): int32 =
  expandMethodBind(className GltfState, "get_major_version", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMajorVersion*(self: GltfState; majorVersion: int32): void =
  expandMethodBind(className GltfState, "set_major_version", 1286410249)
  var `?param` = [getPtr majorVersion]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMinorVersion*(self: GltfState): int32 =
  expandMethodBind(className GltfState, "get_minor_version", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMinorVersion*(self: GltfState; minorVersion: int32): void =
  expandMethodBind(className GltfState, "set_minor_version", 1286410249)
  var `?param` = [getPtr minorVersion]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCopyright*(self: GltfState): String =
  expandMethodBind(className GltfState, "get_copyright", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setCopyright*(self: GltfState; copyright: String): void =
  expandMethodBind(className GltfState, "set_copyright", 83702148)
  var `?param` = [getPtr copyright]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlbData*(self: GltfState): PackedByteArray =
  expandMethodBind(className GltfState, "get_glb_data", 2115431945)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

proc setGlbData*(self: GltfState; glbData: PackedByteArray): void =
  expandMethodBind(className GltfState, "set_glb_data", 2971499966)
  var `?param` = [getPtr glbData]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUseNamedSkinBinds*(self: GltfState): bool =
  expandMethodBind(className GltfState, "get_use_named_skin_binds", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUseNamedSkinBinds*(self: GltfState; useNamedSkinBinds: bool): void =
  expandMethodBind(className GltfState, "set_use_named_skin_binds", 2586408642)
  var `?param` = [getPtr useNamedSkinBinds]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNodes*(self: GltfState): TypedArray[gdref GltfNode] =
  expandMethodBind(className GltfState, "get_nodes", 2915620761)
  var ret: encoded TypedArray[gdref GltfNode]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[gdref GltfNode])

proc setNodes*(self: GltfState; nodes: TypedArray[gdref GltfNode]): void =
  expandMethodBind(className GltfState, "set_nodes", 381264803)
  var `?param` = [getPtr nodes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBuffers*(self: GltfState): TypedArray[PackedByteArray] =
  expandMethodBind(className GltfState, "get_buffers", 2915620761)
  var ret: encoded TypedArray[PackedByteArray]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[PackedByteArray])

proc setBuffers*(self: GltfState; buffers: TypedArray[PackedByteArray]): void =
  expandMethodBind(className GltfState, "set_buffers", 381264803)
  var `?param` = [getPtr buffers]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBufferViews*(self: GltfState): TypedArray[gdref GltfBufferView] =
  expandMethodBind(className GltfState, "get_buffer_views", 2915620761)
  var ret: encoded TypedArray[gdref GltfBufferView]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[gdref GltfBufferView])

proc setBufferViews*(self: GltfState; bufferViews: TypedArray[gdref GltfBufferView]): void =
  expandMethodBind(className GltfState, "set_buffer_views", 381264803)
  var `?param` = [getPtr bufferViews]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAccessors*(self: GltfState): TypedArray[gdref GltfAccessor] =
  expandMethodBind(className GltfState, "get_accessors", 2915620761)
  var ret: encoded TypedArray[gdref GltfAccessor]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[gdref GltfAccessor])

proc setAccessors*(self: GltfState; accessors: TypedArray[gdref GltfAccessor]): void =
  expandMethodBind(className GltfState, "set_accessors", 381264803)
  var `?param` = [getPtr accessors]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMeshes*(self: GltfState): TypedArray[gdref GltfMesh] =
  expandMethodBind(className GltfState, "get_meshes", 2915620761)
  var ret: encoded TypedArray[gdref GltfMesh]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[gdref GltfMesh])

proc setMeshes*(self: GltfState; meshes: TypedArray[gdref GltfMesh]): void =
  expandMethodBind(className GltfState, "set_meshes", 381264803)
  var `?param` = [getPtr meshes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAnimationPlayersCount*(self: GltfState; idx: int32): int32 =
  expandMethodBind(className GltfState, "get_animation_players_count", 3744713108)
  var `?param` = [getPtr idx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getAnimationPlayer*(self: GltfState; idx: int32): AnimationPlayer =
  expandMethodBind(className GltfState, "get_animation_player", 925043400)
  var `?param` = [getPtr idx]
  var ret: encoded AnimationPlayer
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(AnimationPlayer)

proc getMaterials*(self: GltfState): TypedArray[gdref Material] =
  expandMethodBind(className GltfState, "get_materials", 2915620761)
  var ret: encoded TypedArray[gdref Material]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[gdref Material])

proc setMaterials*(self: GltfState; materials: TypedArray[gdref Material]): void =
  expandMethodBind(className GltfState, "set_materials", 381264803)
  var `?param` = [getPtr materials]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSceneName*(self: GltfState): String =
  expandMethodBind(className GltfState, "get_scene_name", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setSceneName*(self: GltfState; sceneName: String): void =
  expandMethodBind(className GltfState, "set_scene_name", 83702148)
  var `?param` = [getPtr sceneName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBasePath*(self: GltfState): String =
  expandMethodBind(className GltfState, "get_base_path", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setBasePath*(self: GltfState; basePath: String): void =
  expandMethodBind(className GltfState, "set_base_path", 83702148)
  var `?param` = [getPtr basePath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFilename*(self: GltfState): String =
  expandMethodBind(className GltfState, "get_filename", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setFilename*(self: GltfState; filename: String): void =
  expandMethodBind(className GltfState, "set_filename", 83702148)
  var `?param` = [getPtr filename]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRootNodes*(self: GltfState): PackedInt32Array =
  expandMethodBind(className GltfState, "get_root_nodes", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setRootNodes*(self: GltfState; rootNodes: PackedInt32Array): void =
  expandMethodBind(className GltfState, "set_root_nodes", 3614634198)
  var `?param` = [getPtr rootNodes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextures*(self: GltfState): TypedArray[gdref GltfTexture] =
  expandMethodBind(className GltfState, "get_textures", 2915620761)
  var ret: encoded TypedArray[gdref GltfTexture]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[gdref GltfTexture])

proc setTextures*(self: GltfState; textures: TypedArray[gdref GltfTexture]): void =
  expandMethodBind(className GltfState, "set_textures", 381264803)
  var `?param` = [getPtr textures]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureSamplers*(self: GltfState): TypedArray[gdref GltfTextureSampler] =
  expandMethodBind(className GltfState, "get_texture_samplers", 2915620761)
  var ret: encoded TypedArray[gdref GltfTextureSampler]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[gdref GltfTextureSampler])

proc setTextureSamplers*(self: GltfState; textureSamplers: TypedArray[gdref GltfTextureSampler]): void =
  expandMethodBind(className GltfState, "set_texture_samplers", 381264803)
  var `?param` = [getPtr textureSamplers]
  methodbind.ptrcall(self, addr `?param`[0])

proc getImages*(self: GltfState): TypedArray[gdref Texture2D] =
  expandMethodBind(className GltfState, "get_images", 2915620761)
  var ret: encoded TypedArray[gdref Texture2D]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[gdref Texture2D])

proc setImages*(self: GltfState; images: TypedArray[gdref Texture2D]): void =
  expandMethodBind(className GltfState, "set_images", 381264803)
  var `?param` = [getPtr images]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkins*(self: GltfState): TypedArray[gdref GltfSkin] =
  expandMethodBind(className GltfState, "get_skins", 2915620761)
  var ret: encoded TypedArray[gdref GltfSkin]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[gdref GltfSkin])

proc setSkins*(self: GltfState; skins: TypedArray[gdref GltfSkin]): void =
  expandMethodBind(className GltfState, "set_skins", 381264803)
  var `?param` = [getPtr skins]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCameras*(self: GltfState): TypedArray[gdref GltfCamera] =
  expandMethodBind(className GltfState, "get_cameras", 2915620761)
  var ret: encoded TypedArray[gdref GltfCamera]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[gdref GltfCamera])

proc setCameras*(self: GltfState; cameras: TypedArray[gdref GltfCamera]): void =
  expandMethodBind(className GltfState, "set_cameras", 381264803)
  var `?param` = [getPtr cameras]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLights*(self: GltfState): TypedArray[gdref GltfLight] =
  expandMethodBind(className GltfState, "get_lights", 2915620761)
  var ret: encoded TypedArray[gdref GltfLight]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[gdref GltfLight])

proc setLights*(self: GltfState; lights: TypedArray[gdref GltfLight]): void =
  expandMethodBind(className GltfState, "set_lights", 381264803)
  var `?param` = [getPtr lights]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUniqueNames*(self: GltfState): TypedArray[String] =
  expandMethodBind(className GltfState, "get_unique_names", 2915620761)
  var ret: encoded TypedArray[String]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[String])

proc setUniqueNames*(self: GltfState; uniqueNames: TypedArray[String]): void =
  expandMethodBind(className GltfState, "set_unique_names", 381264803)
  var `?param` = [getPtr uniqueNames]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUniqueAnimationNames*(self: GltfState): TypedArray[String] =
  expandMethodBind(className GltfState, "get_unique_animation_names", 2915620761)
  var ret: encoded TypedArray[String]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[String])

proc setUniqueAnimationNames*(self: GltfState; uniqueAnimationNames: TypedArray[String]): void =
  expandMethodBind(className GltfState, "set_unique_animation_names", 381264803)
  var `?param` = [getPtr uniqueAnimationNames]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkeletons*(self: GltfState): TypedArray[gdref GltfSkeleton] =
  expandMethodBind(className GltfState, "get_skeletons", 2915620761)
  var ret: encoded TypedArray[gdref GltfSkeleton]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[gdref GltfSkeleton])

proc setSkeletons*(self: GltfState; skeletons: TypedArray[gdref GltfSkeleton]): void =
  expandMethodBind(className GltfState, "set_skeletons", 381264803)
  var `?param` = [getPtr skeletons]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCreateAnimations*(self: GltfState): bool =
  expandMethodBind(className GltfState, "get_create_animations", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCreateAnimations*(self: GltfState; createAnimations: bool): void =
  expandMethodBind(className GltfState, "set_create_animations", 2586408642)
  var `?param` = [getPtr createAnimations]
  methodbind.ptrcall(self, addr `?param`[0])

proc getImportAsSkeletonBones*(self: GltfState): bool =
  expandMethodBind(className GltfState, "get_import_as_skeleton_bones", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setImportAsSkeletonBones*(self: GltfState; importAsSkeletonBones: bool): void =
  expandMethodBind(className GltfState, "set_import_as_skeleton_bones", 2586408642)
  var `?param` = [getPtr importAsSkeletonBones]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAnimations*(self: GltfState): TypedArray[gdref GltfAnimation] =
  expandMethodBind(className GltfState, "get_animations", 2915620761)
  var ret: encoded TypedArray[gdref GltfAnimation]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[gdref GltfAnimation])

proc setAnimations*(self: GltfState; animations: TypedArray[gdref GltfAnimation]): void =
  expandMethodBind(className GltfState, "set_animations", 381264803)
  var `?param` = [getPtr animations]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSceneNode*(self: GltfState; idx: int32): Node =
  expandMethodBind(className GltfState, "get_scene_node", 4253421667)
  var `?param` = [getPtr idx]
  var ret: encoded Node
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Node)

proc getNodeIndex*(self: GltfState; sceneNode: Node): int32 =
  expandMethodBind(className GltfState, "get_node_index", 1205807060)
  var `?param` = [getPtr sceneNode]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getAdditionalData*(self: GltfState; extensionName: StringName): Variant =
  expandMethodBind(className GltfState, "get_additional_data", 2138907829)
  var `?param` = [getPtr extensionName]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setAdditionalData*(self: GltfState; extensionName: StringName; additionalData: Variant): void =
  expandMethodBind(className GltfState, "set_additional_data", 3776071444)
  var `?param` = [getPtr extensionName, getPtr additionalData]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHandleBinaryImage*(self: GltfState): int32 =
  expandMethodBind(className GltfState, "get_handle_binary_image", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setHandleBinaryImage*(self: GltfState; `method`: int32): void =
  expandMethodBind(className GltfState, "set_handle_binary_image", 1286410249)
  var `?param` = [getPtr `method`]
  methodbind.ptrcall(self, addr `?param`[0])

proc setBakeFps*(self: GltfState; value: float64): void =
  expandMethodBind(className GltfState, "set_bake_fps", 373806689)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBakeFps*(self: GltfState): float64 =
  expandMethodBind(className GltfState, "get_bake_fps", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

template json*(self: GltfState): untyped = self.getJson()
template `json=`*(self: GltfState; value) = self.setJson(value)

template majorVersion*(self: GltfState): untyped = self.getMajorVersion()
template `majorVersion=`*(self: GltfState; value) = self.setMajorVersion(value)

template minorVersion*(self: GltfState): untyped = self.getMinorVersion()
template `minorVersion=`*(self: GltfState; value) = self.setMinorVersion(value)

template copyright*(self: GltfState): untyped = self.getCopyright()
template `copyright=`*(self: GltfState; value) = self.setCopyright(value)

template glbData*(self: GltfState): untyped = self.getGlbData()
template `glbData=`*(self: GltfState; value) = self.setGlbData(value)

template useNamedSkinBinds*(self: GltfState): untyped = self.getUseNamedSkinBinds()
template `useNamedSkinBinds=`*(self: GltfState; value) = self.setUseNamedSkinBinds(value)

template nodes*(self: GltfState): untyped = self.getNodes()
template `nodes=`*(self: GltfState; value) = self.setNodes(value)

template buffers*(self: GltfState): untyped = self.getBuffers()
template `buffers=`*(self: GltfState; value) = self.setBuffers(value)

template bufferViews*(self: GltfState): untyped = self.getBufferViews()
template `bufferViews=`*(self: GltfState; value) = self.setBufferViews(value)

template accessors*(self: GltfState): untyped = self.getAccessors()
template `accessors=`*(self: GltfState; value) = self.setAccessors(value)

template meshes*(self: GltfState): untyped = self.getMeshes()
template `meshes=`*(self: GltfState; value) = self.setMeshes(value)

template materials*(self: GltfState): untyped = self.getMaterials()
template `materials=`*(self: GltfState; value) = self.setMaterials(value)

template sceneName*(self: GltfState): untyped = self.getSceneName()
template `sceneName=`*(self: GltfState; value) = self.setSceneName(value)

template basePath*(self: GltfState): untyped = self.getBasePath()
template `basePath=`*(self: GltfState; value) = self.setBasePath(value)

template filename*(self: GltfState): untyped = self.getFilename()
template `filename=`*(self: GltfState; value) = self.setFilename(value)

template rootNodes*(self: GltfState): untyped = self.getRootNodes()
template `rootNodes=`*(self: GltfState; value) = self.setRootNodes(value)

template textures*(self: GltfState): untyped = self.getTextures()
template `textures=`*(self: GltfState; value) = self.setTextures(value)

template textureSamplers*(self: GltfState): untyped = self.getTextureSamplers()
template `textureSamplers=`*(self: GltfState; value) = self.setTextureSamplers(value)

template images*(self: GltfState): untyped = self.getImages()
template `images=`*(self: GltfState; value) = self.setImages(value)

template skins*(self: GltfState): untyped = self.getSkins()
template `skins=`*(self: GltfState; value) = self.setSkins(value)

template cameras*(self: GltfState): untyped = self.getCameras()
template `cameras=`*(self: GltfState; value) = self.setCameras(value)

template lights*(self: GltfState): untyped = self.getLights()
template `lights=`*(self: GltfState; value) = self.setLights(value)

template uniqueNames*(self: GltfState): untyped = self.getUniqueNames()
template `uniqueNames=`*(self: GltfState; value) = self.setUniqueNames(value)

template uniqueAnimationNames*(self: GltfState): untyped = self.getUniqueAnimationNames()
template `uniqueAnimationNames=`*(self: GltfState; value) = self.setUniqueAnimationNames(value)

template skeletons*(self: GltfState): untyped = self.getSkeletons()
template `skeletons=`*(self: GltfState; value) = self.setSkeletons(value)

template createAnimations*(self: GltfState): untyped = self.getCreateAnimations()
template `createAnimations=`*(self: GltfState; value) = self.setCreateAnimations(value)

template importAsSkeletonBones*(self: GltfState): untyped = self.getImportAsSkeletonBones()
template `importAsSkeletonBones=`*(self: GltfState; value) = self.setImportAsSkeletonBones(value)

template animations*(self: GltfState): untyped = self.getAnimations()
template `animations=`*(self: GltfState; value) = self.setAnimations(value)

template handleBinaryImage*(self: GltfState): untyped = self.getHandleBinaryImage()
template `handleBinaryImage=`*(self: GltfState; value) = self.setHandleBinaryImage(value)

template bakeFps*(self: GltfState): untyped = self.getBakeFps()
template `bakeFps=`*(self: GltfState; value) = self.setBakeFps(value)

const GltfState_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GltfState]): Table[string, string] = GltfState_vmap