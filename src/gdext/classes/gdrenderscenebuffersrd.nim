{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrenderscenebuffers; export gdrenderscenebuffers

proc hasTexture*(self: RenderSceneBuffersRd; context: StringName; name: StringName): bool =
  expandMethodBind(className RenderSceneBuffersRd, "has_texture", 471820014)
  var `?param` = [getPtr context, getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc createTexture*(self: RenderSceneBuffersRd; context: StringName; name: StringName; dataFormat: RenderingDevice_DataFormat; usageBits: uint32; textureSamples: RenderingDevice_TextureSamples; size: Vector2i; layers: uint32; mipmaps: uint32; unique: bool): Rid =
  expandMethodBind(className RenderSceneBuffersRd, "create_texture", 3559915770)
  var `?param` = [getPtr context, getPtr name, getPtr dataFormat, getPtr usageBits, getPtr textureSamples, getPtr size, getPtr layers, getPtr mipmaps, getPtr unique]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc createTextureFromFormat*(self: RenderSceneBuffersRd; context: StringName; name: StringName; format: gdref RdTextureFormat; view: gdref RdTextureView; unique: bool): Rid =
  expandMethodBind(className RenderSceneBuffersRd, "create_texture_from_format", 3344669382)
  var `?param` = [getPtr context, getPtr name, getPtr format, getPtr view, getPtr unique]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc createTextureView*(self: RenderSceneBuffersRd; context: StringName; name: StringName; viewName: StringName; view: gdref RdTextureView): Rid =
  expandMethodBind(className RenderSceneBuffersRd, "create_texture_view", 283055834)
  var `?param` = [getPtr context, getPtr name, getPtr viewName, getPtr view]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc getTexture*(self: RenderSceneBuffersRd; context: StringName; name: StringName): Rid =
  expandMethodBind(className RenderSceneBuffersRd, "get_texture", 750006389)
  var `?param` = [getPtr context, getPtr name]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc getTextureFormat*(self: RenderSceneBuffersRd; context: StringName; name: StringName): gdref RdTextureFormat =
  expandMethodBind(className RenderSceneBuffersRd, "get_texture_format", 371461758)
  var `?param` = [getPtr context, getPtr name]
  var ret: encoded gdref RdTextureFormat
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref RdTextureFormat)

proc getTextureSlice*(self: RenderSceneBuffersRd; context: StringName; name: StringName; layer: uint32; mipmap: uint32; layers: uint32; mipmaps: uint32): Rid =
  expandMethodBind(className RenderSceneBuffersRd, "get_texture_slice", 588440706)
  var `?param` = [getPtr context, getPtr name, getPtr layer, getPtr mipmap, getPtr layers, getPtr mipmaps]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc getTextureSliceView*(self: RenderSceneBuffersRd; context: StringName; name: StringName; layer: uint32; mipmap: uint32; layers: uint32; mipmaps: uint32; view: gdref RdTextureView): Rid =
  expandMethodBind(className RenderSceneBuffersRd, "get_texture_slice_view", 682451778)
  var `?param` = [getPtr context, getPtr name, getPtr layer, getPtr mipmap, getPtr layers, getPtr mipmaps, getPtr view]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc getTextureSliceSize*(self: RenderSceneBuffersRd; context: StringName; name: StringName; mipmap: uint32): Vector2i =
  expandMethodBind(className RenderSceneBuffersRd, "get_texture_slice_size", 2617625368)
  var `?param` = [getPtr context, getPtr name, getPtr mipmap]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc clearContext*(self: RenderSceneBuffersRd; context: StringName): void =
  expandMethodBind(className RenderSceneBuffersRd, "clear_context", 3304788590)
  var `?param` = [getPtr context]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorTexture*(self: RenderSceneBuffersRd; msaa: bool = false): Rid =
  expandMethodBind(className RenderSceneBuffersRd, "get_color_texture", 3050822880)
  var `?param` = [getPtr msaa]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc getColorLayer*(self: RenderSceneBuffersRd; layer: uint32; msaa: bool = false): Rid =
  expandMethodBind(className RenderSceneBuffersRd, "get_color_layer", 3087988589)
  var `?param` = [getPtr layer, getPtr msaa]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc getDepthTexture*(self: RenderSceneBuffersRd; msaa: bool = false): Rid =
  expandMethodBind(className RenderSceneBuffersRd, "get_depth_texture", 3050822880)
  var `?param` = [getPtr msaa]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc getDepthLayer*(self: RenderSceneBuffersRd; layer: uint32; msaa: bool = false): Rid =
  expandMethodBind(className RenderSceneBuffersRd, "get_depth_layer", 3087988589)
  var `?param` = [getPtr layer, getPtr msaa]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc getVelocityTexture*(self: RenderSceneBuffersRd; msaa: bool = false): Rid =
  expandMethodBind(className RenderSceneBuffersRd, "get_velocity_texture", 3050822880)
  var `?param` = [getPtr msaa]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc getVelocityLayer*(self: RenderSceneBuffersRd; layer: uint32; msaa: bool = false): Rid =
  expandMethodBind(className RenderSceneBuffersRd, "get_velocity_layer", 3087988589)
  var `?param` = [getPtr layer, getPtr msaa]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc getRenderTarget*(self: RenderSceneBuffersRd): Rid =
  expandMethodBind(className RenderSceneBuffersRd, "get_render_target", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getViewCount*(self: RenderSceneBuffersRd): uint32 =
  expandMethodBind(className RenderSceneBuffersRd, "get_view_count", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc getInternalSize*(self: RenderSceneBuffersRd): Vector2i =
  expandMethodBind(className RenderSceneBuffersRd, "get_internal_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc getTargetSize*(self: RenderSceneBuffersRd): Vector2i =
  expandMethodBind(className RenderSceneBuffersRd, "get_target_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc getScaling3DMode*(self: RenderSceneBuffersRd): RenderingServer_ViewportScaling3DMode =
  expandMethodBind(className RenderSceneBuffersRd, "get_scaling_3d_mode", 976778074)
  var ret: encoded RenderingServer_ViewportScaling3DMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingServer_ViewportScaling3DMode)

proc getFsrSharpness*(self: RenderSceneBuffersRd): Float =
  expandMethodBind(className RenderSceneBuffersRd, "get_fsr_sharpness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getMsaa3D*(self: RenderSceneBuffersRd): RenderingServer_ViewportMsaa =
  expandMethodBind(className RenderSceneBuffersRd, "get_msaa_3d", 3109158617)
  var ret: encoded RenderingServer_ViewportMsaa
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingServer_ViewportMsaa)

proc getTextureSamples*(self: RenderSceneBuffersRd): RenderingDevice_TextureSamples =
  expandMethodBind(className RenderSceneBuffersRd, "get_texture_samples", 407791724)
  var ret: encoded RenderingDevice_TextureSamples
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSamples)

proc getScreenSpaceAa*(self: RenderSceneBuffersRd): RenderingServer_ViewportScreenSpaceAa =
  expandMethodBind(className RenderSceneBuffersRd, "get_screen_space_aa", 641513172)
  var ret: encoded RenderingServer_ViewportScreenSpaceAa
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingServer_ViewportScreenSpaceAa)

proc getUseTaa*(self: RenderSceneBuffersRd): bool =
  expandMethodBind(className RenderSceneBuffersRd, "get_use_taa", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getUseDebanding*(self: RenderSceneBuffersRd): bool =
  expandMethodBind(className RenderSceneBuffersRd, "get_use_debanding", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

const RenderSceneBuffersRd_vmap =
  RenderSceneBuffers.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RenderSceneBuffersRd]): Table[string, string] = RenderSceneBuffersRd_vmap