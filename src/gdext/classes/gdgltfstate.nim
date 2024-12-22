{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc addUsedExtension*(self: GLTFState; extensionName: String; required: bool): void =
  expandMethodBind(className GLTFState, "add_used_extension", 2678287736)
  var `?param` = [getPtr extensionName, getPtr required]
  methodbind.ptrcall(self, addr `?param`[0])

proc appendDataToBuffers*(self: GLTFState; data: PackedByteArray; deduplication: bool): int32 =
  expandMethodBind(className GLTFState, "append_data_to_buffers", 1460416665)
  var `?param` = [getPtr data, getPtr deduplication]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getJson*(self: GLTFState): Dictionary =
  expandMethodBind(className GLTFState, "get_json", 2382534195)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc setJson*(self: GLTFState; json: Dictionary): void =
  expandMethodBind(className GLTFState, "set_json", 4155329257)
  var `?param` = [getPtr json]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMajorVersion*(self: GLTFState): int32 =
  expandMethodBind(className GLTFState, "get_major_version", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMajorVersion*(self: GLTFState; majorVersion: int32): void =
  expandMethodBind(className GLTFState, "set_major_version", 1286410249)
  var `?param` = [getPtr majorVersion]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMinorVersion*(self: GLTFState): int32 =
  expandMethodBind(className GLTFState, "get_minor_version", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMinorVersion*(self: GLTFState; minorVersion: int32): void =
  expandMethodBind(className GLTFState, "set_minor_version", 1286410249)
  var `?param` = [getPtr minorVersion]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCopyright*(self: GLTFState): String =
  expandMethodBind(className GLTFState, "get_copyright", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setCopyright*(self: GLTFState; copyright: String): void =
  expandMethodBind(className GLTFState, "set_copyright", 83702148)
  var `?param` = [getPtr copyright]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlbData*(self: GLTFState): PackedByteArray =
  expandMethodBind(className GLTFState, "get_glb_data", 2115431945)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

proc setGlbData*(self: GLTFState; glbData: PackedByteArray): void =
  expandMethodBind(className GLTFState, "set_glb_data", 2971499966)
  var `?param` = [getPtr glbData]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUseNamedSkinBinds*(self: GLTFState): bool =
  expandMethodBind(className GLTFState, "get_use_named_skin_binds", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUseNamedSkinBinds*(self: GLTFState; useNamedSkinBinds: bool): void =
  expandMethodBind(className GLTFState, "set_use_named_skin_binds", 2586408642)
  var `?param` = [getPtr useNamedSkinBinds]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNodes*(self: GLTFState): TypedArray[GLTFNode] =
  expandMethodBind(className GLTFState, "get_nodes", 2915620761)
  var ret: encoded TypedArray[GLTFNode]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[GLTFNode])

proc setNodes*(self: GLTFState; nodes: TypedArray[GLTFNode]): void =
  expandMethodBind(className GLTFState, "set_nodes", 381264803)
  var `?param` = [getPtr nodes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBuffers*(self: GLTFState): TypedArray[PackedByteArray] =
  expandMethodBind(className GLTFState, "get_buffers", 2915620761)
  var ret: encoded TypedArray[PackedByteArray]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[PackedByteArray])

proc setBuffers*(self: GLTFState; buffers: TypedArray[PackedByteArray]): void =
  expandMethodBind(className GLTFState, "set_buffers", 381264803)
  var `?param` = [getPtr buffers]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBufferViews*(self: GLTFState): TypedArray[GLTFBufferView] =
  expandMethodBind(className GLTFState, "get_buffer_views", 2915620761)
  var ret: encoded TypedArray[GLTFBufferView]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[GLTFBufferView])

proc setBufferViews*(self: GLTFState; bufferViews: TypedArray[GLTFBufferView]): void =
  expandMethodBind(className GLTFState, "set_buffer_views", 381264803)
  var `?param` = [getPtr bufferViews]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAccessors*(self: GLTFState): TypedArray[GLTFAccessor] =
  expandMethodBind(className GLTFState, "get_accessors", 2915620761)
  var ret: encoded TypedArray[GLTFAccessor]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[GLTFAccessor])

proc setAccessors*(self: GLTFState; accessors: TypedArray[GLTFAccessor]): void =
  expandMethodBind(className GLTFState, "set_accessors", 381264803)
  var `?param` = [getPtr accessors]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMeshes*(self: GLTFState): TypedArray[GLTFMesh] =
  expandMethodBind(className GLTFState, "get_meshes", 2915620761)
  var ret: encoded TypedArray[GLTFMesh]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[GLTFMesh])

proc setMeshes*(self: GLTFState; meshes: TypedArray[GLTFMesh]): void =
  expandMethodBind(className GLTFState, "set_meshes", 381264803)
  var `?param` = [getPtr meshes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAnimationPlayersCount*(self: GLTFState; idx: int32): int32 =
  expandMethodBind(className GLTFState, "get_animation_players_count", 3744713108)
  var `?param` = [getPtr idx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getAnimationPlayer*(self: GLTFState; idx: int32): AnimationPlayer =
  expandMethodBind(className GLTFState, "get_animation_player", 925043400)
  var `?param` = [getPtr idx]
  var ret: encoded AnimationPlayer
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(AnimationPlayer)

proc getMaterials*(self: GLTFState): TypedArray[Material] =
  expandMethodBind(className GLTFState, "get_materials", 2915620761)
  var ret: encoded TypedArray[Material]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Material])

proc setMaterials*(self: GLTFState; materials: TypedArray[Material]): void =
  expandMethodBind(className GLTFState, "set_materials", 381264803)
  var `?param` = [getPtr materials]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSceneName*(self: GLTFState): String =
  expandMethodBind(className GLTFState, "get_scene_name", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setSceneName*(self: GLTFState; sceneName: String): void =
  expandMethodBind(className GLTFState, "set_scene_name", 83702148)
  var `?param` = [getPtr sceneName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBasePath*(self: GLTFState): String =
  expandMethodBind(className GLTFState, "get_base_path", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setBasePath*(self: GLTFState; basePath: String): void =
  expandMethodBind(className GLTFState, "set_base_path", 83702148)
  var `?param` = [getPtr basePath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFilename*(self: GLTFState): String =
  expandMethodBind(className GLTFState, "get_filename", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setFilename*(self: GLTFState; filename: String): void =
  expandMethodBind(className GLTFState, "set_filename", 83702148)
  var `?param` = [getPtr filename]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRootNodes*(self: GLTFState): PackedInt32Array =
  expandMethodBind(className GLTFState, "get_root_nodes", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setRootNodes*(self: GLTFState; rootNodes: PackedInt32Array): void =
  expandMethodBind(className GLTFState, "set_root_nodes", 3614634198)
  var `?param` = [getPtr rootNodes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextures*(self: GLTFState): TypedArray[GLTFTexture] =
  expandMethodBind(className GLTFState, "get_textures", 2915620761)
  var ret: encoded TypedArray[GLTFTexture]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[GLTFTexture])

proc setTextures*(self: GLTFState; textures: TypedArray[GLTFTexture]): void =
  expandMethodBind(className GLTFState, "set_textures", 381264803)
  var `?param` = [getPtr textures]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureSamplers*(self: GLTFState): TypedArray[GLTFTextureSampler] =
  expandMethodBind(className GLTFState, "get_texture_samplers", 2915620761)
  var ret: encoded TypedArray[GLTFTextureSampler]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[GLTFTextureSampler])

proc setTextureSamplers*(self: GLTFState; textureSamplers: TypedArray[GLTFTextureSampler]): void =
  expandMethodBind(className GLTFState, "set_texture_samplers", 381264803)
  var `?param` = [getPtr textureSamplers]
  methodbind.ptrcall(self, addr `?param`[0])

proc getImages*(self: GLTFState): TypedArray[Texture2D] =
  expandMethodBind(className GLTFState, "get_images", 2915620761)
  var ret: encoded TypedArray[Texture2D]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Texture2D])

proc setImages*(self: GLTFState; images: TypedArray[Texture2D]): void =
  expandMethodBind(className GLTFState, "set_images", 381264803)
  var `?param` = [getPtr images]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkins*(self: GLTFState): TypedArray[GLTFSkin] =
  expandMethodBind(className GLTFState, "get_skins", 2915620761)
  var ret: encoded TypedArray[GLTFSkin]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[GLTFSkin])

proc setSkins*(self: GLTFState; skins: TypedArray[GLTFSkin]): void =
  expandMethodBind(className GLTFState, "set_skins", 381264803)
  var `?param` = [getPtr skins]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCameras*(self: GLTFState): TypedArray[GLTFCamera] =
  expandMethodBind(className GLTFState, "get_cameras", 2915620761)
  var ret: encoded TypedArray[GLTFCamera]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[GLTFCamera])

proc setCameras*(self: GLTFState; cameras: TypedArray[GLTFCamera]): void =
  expandMethodBind(className GLTFState, "set_cameras", 381264803)
  var `?param` = [getPtr cameras]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLights*(self: GLTFState): TypedArray[GLTFLight] =
  expandMethodBind(className GLTFState, "get_lights", 2915620761)
  var ret: encoded TypedArray[GLTFLight]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[GLTFLight])

proc setLights*(self: GLTFState; lights: TypedArray[GLTFLight]): void =
  expandMethodBind(className GLTFState, "set_lights", 381264803)
  var `?param` = [getPtr lights]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUniqueNames*(self: GLTFState): TypedArray[String] =
  expandMethodBind(className GLTFState, "get_unique_names", 2915620761)
  var ret: encoded TypedArray[String]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[String])

proc setUniqueNames*(self: GLTFState; uniqueNames: TypedArray[String]): void =
  expandMethodBind(className GLTFState, "set_unique_names", 381264803)
  var `?param` = [getPtr uniqueNames]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUniqueAnimationNames*(self: GLTFState): TypedArray[String] =
  expandMethodBind(className GLTFState, "get_unique_animation_names", 2915620761)
  var ret: encoded TypedArray[String]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[String])

proc setUniqueAnimationNames*(self: GLTFState; uniqueAnimationNames: TypedArray[String]): void =
  expandMethodBind(className GLTFState, "set_unique_animation_names", 381264803)
  var `?param` = [getPtr uniqueAnimationNames]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkeletons*(self: GLTFState): TypedArray[GLTFSkeleton] =
  expandMethodBind(className GLTFState, "get_skeletons", 2915620761)
  var ret: encoded TypedArray[GLTFSkeleton]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[GLTFSkeleton])

proc setSkeletons*(self: GLTFState; skeletons: TypedArray[GLTFSkeleton]): void =
  expandMethodBind(className GLTFState, "set_skeletons", 381264803)
  var `?param` = [getPtr skeletons]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCreateAnimations*(self: GLTFState): bool =
  expandMethodBind(className GLTFState, "get_create_animations", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCreateAnimations*(self: GLTFState; createAnimations: bool): void =
  expandMethodBind(className GLTFState, "set_create_animations", 2586408642)
  var `?param` = [getPtr createAnimations]
  methodbind.ptrcall(self, addr `?param`[0])

proc getImportAsSkeletonBones*(self: GLTFState): bool =
  expandMethodBind(className GLTFState, "get_import_as_skeleton_bones", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setImportAsSkeletonBones*(self: GLTFState; importAsSkeletonBones: bool): void =
  expandMethodBind(className GLTFState, "set_import_as_skeleton_bones", 2586408642)
  var `?param` = [getPtr importAsSkeletonBones]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAnimations*(self: GLTFState): TypedArray[GLTFAnimation] =
  expandMethodBind(className GLTFState, "get_animations", 2915620761)
  var ret: encoded TypedArray[GLTFAnimation]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[GLTFAnimation])

proc setAnimations*(self: GLTFState; animations: TypedArray[GLTFAnimation]): void =
  expandMethodBind(className GLTFState, "set_animations", 381264803)
  var `?param` = [getPtr animations]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSceneNode*(self: GLTFState; idx: int32): Node =
  expandMethodBind(className GLTFState, "get_scene_node", 4253421667)
  var `?param` = [getPtr idx]
  var ret: encoded Node
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Node)

proc getNodeIndex*(self: GLTFState; sceneNode: Node): int32 =
  expandMethodBind(className GLTFState, "get_node_index", 1205807060)
  var `?param` = [getPtr sceneNode]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getAdditionalData*(self: GLTFState; extensionName: StringName): Variant =
  expandMethodBind(className GLTFState, "get_additional_data", 2138907829)
  var `?param` = [getPtr extensionName]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setAdditionalData*(self: GLTFState; extensionName: StringName; additionalData: Variant): void =
  expandMethodBind(className GLTFState, "set_additional_data", 3776071444)
  var `?param` = [getPtr extensionName, getPtr additionalData]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHandleBinaryImage*(self: GLTFState): int32 =
  expandMethodBind(className GLTFState, "get_handle_binary_image", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setHandleBinaryImage*(self: GLTFState; `method`: int32): void =
  expandMethodBind(className GLTFState, "set_handle_binary_image", 1286410249)
  var `?param` = [getPtr `method`]
  methodbind.ptrcall(self, addr `?param`[0])

proc setBakeFps*(self: GLTFState; value: float64): void =
  expandMethodBind(className GLTFState, "set_bake_fps", 373806689)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBakeFps*(self: GLTFState): float64 =
  expandMethodBind(className GLTFState, "get_bake_fps", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

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

const GLTFState_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GLTFState]): Table[string, string] = GLTFState_vmap