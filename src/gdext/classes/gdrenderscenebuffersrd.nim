{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrenderscenebuffers; export gdrenderscenebuffers

proc hasTexture*(self: RenderSceneBuffersRD; context: StringName; name: StringName): bool =
  expandMethodBind(className RenderSceneBuffersRD, "has_texture", 471820014)
  var `?param` = [getPtr context, getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc createTexture*(self: RenderSceneBuffersRD; context: StringName; name: StringName; dataFormat: RenderingDevice_DataFormat; usageBits: uint32; textureSamples: RenderingDevice_TextureSamples; size: Vector2i; layers: uint32; mipmaps: uint32; unique: bool): RID =
  expandMethodBind(className RenderSceneBuffersRD, "create_texture", 3559915770)
  var `?param` = [getPtr context, getPtr name, getPtr dataFormat, getPtr usageBits, getPtr textureSamples, getPtr size, getPtr layers, getPtr mipmaps, getPtr unique]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc createTextureFromFormat*(self: RenderSceneBuffersRD; context: StringName; name: StringName; format: gdref RDTextureFormat; view: gdref RDTextureView; unique: bool): RID =
  expandMethodBind(className RenderSceneBuffersRD, "create_texture_from_format", 3344669382)
  var `?param` = [getPtr context, getPtr name, getPtr format, getPtr view, getPtr unique]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc createTextureView*(self: RenderSceneBuffersRD; context: StringName; name: StringName; viewName: StringName; view: gdref RDTextureView): RID =
  expandMethodBind(className RenderSceneBuffersRD, "create_texture_view", 283055834)
  var `?param` = [getPtr context, getPtr name, getPtr viewName, getPtr view]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc getTexture*(self: RenderSceneBuffersRD; context: StringName; name: StringName): RID =
  expandMethodBind(className RenderSceneBuffersRD, "get_texture", 750006389)
  var `?param` = [getPtr context, getPtr name]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc getTextureFormat*(self: RenderSceneBuffersRD; context: StringName; name: StringName): gdref RDTextureFormat =
  expandMethodBind(className RenderSceneBuffersRD, "get_texture_format", 371461758)
  var `?param` = [getPtr context, getPtr name]
  var ret: encoded gdref RDTextureFormat
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref RDTextureFormat)

proc getTextureSlice*(self: RenderSceneBuffersRD; context: StringName; name: StringName; layer: uint32; mipmap: uint32; layers: uint32; mipmaps: uint32): RID =
  expandMethodBind(className RenderSceneBuffersRD, "get_texture_slice", 588440706)
  var `?param` = [getPtr context, getPtr name, getPtr layer, getPtr mipmap, getPtr layers, getPtr mipmaps]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc getTextureSliceView*(self: RenderSceneBuffersRD; context: StringName; name: StringName; layer: uint32; mipmap: uint32; layers: uint32; mipmaps: uint32; view: gdref RDTextureView): RID =
  expandMethodBind(className RenderSceneBuffersRD, "get_texture_slice_view", 682451778)
  var `?param` = [getPtr context, getPtr name, getPtr layer, getPtr mipmap, getPtr layers, getPtr mipmaps, getPtr view]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc getTextureSliceSize*(self: RenderSceneBuffersRD; context: StringName; name: StringName; mipmap: uint32): Vector2i =
  expandMethodBind(className RenderSceneBuffersRD, "get_texture_slice_size", 2617625368)
  var `?param` = [getPtr context, getPtr name, getPtr mipmap]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc clearContext*(self: RenderSceneBuffersRD; context: StringName): void =
  expandMethodBind(className RenderSceneBuffersRD, "clear_context", 3304788590)
  var `?param` = [getPtr context]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorTexture*(self: RenderSceneBuffersRD; msaa: bool = false): RID =
  expandMethodBind(className RenderSceneBuffersRD, "get_color_texture", 3050822880)
  var `?param` = [getPtr msaa]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc getColorLayer*(self: RenderSceneBuffersRD; layer: uint32; msaa: bool = false): RID =
  expandMethodBind(className RenderSceneBuffersRD, "get_color_layer", 3087988589)
  var `?param` = [getPtr layer, getPtr msaa]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc getDepthTexture*(self: RenderSceneBuffersRD; msaa: bool = false): RID =
  expandMethodBind(className RenderSceneBuffersRD, "get_depth_texture", 3050822880)
  var `?param` = [getPtr msaa]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc getDepthLayer*(self: RenderSceneBuffersRD; layer: uint32; msaa: bool = false): RID =
  expandMethodBind(className RenderSceneBuffersRD, "get_depth_layer", 3087988589)
  var `?param` = [getPtr layer, getPtr msaa]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc getVelocityTexture*(self: RenderSceneBuffersRD; msaa: bool = false): RID =
  expandMethodBind(className RenderSceneBuffersRD, "get_velocity_texture", 3050822880)
  var `?param` = [getPtr msaa]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc getVelocityLayer*(self: RenderSceneBuffersRD; layer: uint32; msaa: bool = false): RID =
  expandMethodBind(className RenderSceneBuffersRD, "get_velocity_layer", 3087988589)
  var `?param` = [getPtr layer, getPtr msaa]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc getRenderTarget*(self: RenderSceneBuffersRD): RID =
  expandMethodBind(className RenderSceneBuffersRD, "get_render_target", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

proc getViewCount*(self: RenderSceneBuffersRD): uint32 =
  expandMethodBind(className RenderSceneBuffersRD, "get_view_count", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc getInternalSize*(self: RenderSceneBuffersRD): Vector2i =
  expandMethodBind(className RenderSceneBuffersRD, "get_internal_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc getTargetSize*(self: RenderSceneBuffersRD): Vector2i =
  expandMethodBind(className RenderSceneBuffersRD, "get_target_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc getScaling3DMode*(self: RenderSceneBuffersRD): RenderingServer_ViewportScaling3DMode =
  expandMethodBind(className RenderSceneBuffersRD, "get_scaling_3d_mode", 976778074)
  var ret: encoded RenderingServer_ViewportScaling3DMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingServer_ViewportScaling3DMode)

proc getFsrSharpness*(self: RenderSceneBuffersRD): Float =
  expandMethodBind(className RenderSceneBuffersRD, "get_fsr_sharpness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getMsaa3D*(self: RenderSceneBuffersRD): RenderingServer_ViewportMSAA =
  expandMethodBind(className RenderSceneBuffersRD, "get_msaa_3d", 3109158617)
  var ret: encoded RenderingServer_ViewportMSAA
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingServer_ViewportMSAA)

proc getTextureSamples*(self: RenderSceneBuffersRD): RenderingDevice_TextureSamples =
  expandMethodBind(className RenderSceneBuffersRD, "get_texture_samples", 407791724)
  var ret: encoded RenderingDevice_TextureSamples
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSamples)

proc getScreenSpaceAa*(self: RenderSceneBuffersRD): RenderingServer_ViewportScreenSpaceAA =
  expandMethodBind(className RenderSceneBuffersRD, "get_screen_space_aa", 641513172)
  var ret: encoded RenderingServer_ViewportScreenSpaceAA
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingServer_ViewportScreenSpaceAA)

proc getUseTaa*(self: RenderSceneBuffersRD): bool =
  expandMethodBind(className RenderSceneBuffersRD, "get_use_taa", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getUseDebanding*(self: RenderSceneBuffersRD): bool =
  expandMethodBind(className RenderSceneBuffersRD, "get_use_debanding", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

const RenderSceneBuffersRD_vmap =
  RenderSceneBuffers.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RenderSceneBuffersRD]): Table[string, string] = RenderSceneBuffersRD_vmap