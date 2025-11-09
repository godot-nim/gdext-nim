{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrenderscenebuffers; export gdrenderscenebuffers

expandOnClassImported(RenderSceneBuffersRD, RenderSceneBuffers)

proc hasTexture*(self: RenderSceneBuffersRD; context: StringName; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "has_texture", 471820014)
  methodbind.ptrcall(self, [getPtr context, getPtr name], bool)

proc createTexture*(self: RenderSceneBuffersRD; context: StringName; name: StringName; dataFormat: RenderingDevice_DataFormat; usageBits: uint32; textureSamples: RenderingDevice_TextureSamples; size: Vector2i; layers: uint32; mipmaps: uint32; unique: bool; discardable: bool): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "create_texture", 2950875024)
  methodbind.ptrcall(self, [getPtr context, getPtr name, getPtr dataFormat, getPtr usageBits, getPtr textureSamples, getPtr size, getPtr layers, getPtr mipmaps, getPtr unique, getPtr discardable], RID)

proc createTextureFromFormat*(self: RenderSceneBuffersRD; context: StringName; name: StringName; format: gdref RDTextureFormat; view: gdref RDTextureView; unique: bool): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "create_texture_from_format", 3344669382)
  methodbind.ptrcall(self, [getPtr context, getPtr name, getPtr format, getPtr view, getPtr unique], RID)

proc createTextureView*(self: RenderSceneBuffersRD; context: StringName; name: StringName; viewName: StringName; view: gdref RDTextureView): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "create_texture_view", 283055834)
  methodbind.ptrcall(self, [getPtr context, getPtr name, getPtr viewName, getPtr view], RID)

proc getTexture*(self: RenderSceneBuffersRD; context: StringName; name: StringName): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_texture", 750006389)
  methodbind.ptrcall(self, [getPtr context, getPtr name], RID)

proc getTextureFormat*(self: RenderSceneBuffersRD; context: StringName; name: StringName): gdref RDTextureFormat =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_texture_format", 371461758)
  methodbind.ptrcall(self, [getPtr context, getPtr name], gdref RDTextureFormat)

proc getTextureSlice*(self: RenderSceneBuffersRD; context: StringName; name: StringName; layer: uint32; mipmap: uint32; layers: uint32; mipmaps: uint32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_texture_slice", 588440706)
  methodbind.ptrcall(self, [getPtr context, getPtr name, getPtr layer, getPtr mipmap, getPtr layers, getPtr mipmaps], RID)

proc getTextureSliceView*(self: RenderSceneBuffersRD; context: StringName; name: StringName; layer: uint32; mipmap: uint32; layers: uint32; mipmaps: uint32; view: gdref RDTextureView): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_texture_slice_view", 682451778)
  methodbind.ptrcall(self, [getPtr context, getPtr name, getPtr layer, getPtr mipmap, getPtr layers, getPtr mipmaps, getPtr view], RID)

proc getTextureSliceSize*(self: RenderSceneBuffersRD; context: StringName; name: StringName; mipmap: uint32): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_texture_slice_size", 2617625368)
  methodbind.ptrcall(self, [getPtr context, getPtr name, getPtr mipmap], Vector2i)

proc clearContext*(self: RenderSceneBuffersRD; context: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "clear_context", 3304788590)
  methodbind.ptrcall(self, [getPtr context], void)

proc getColorTexture*(self: RenderSceneBuffersRD; msaa: bool = false): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_color_texture", 3050822880)
  methodbind.ptrcall(self, [getPtr msaa], RID)

proc getColorLayer*(self: RenderSceneBuffersRD; layer: uint32; msaa: bool = false): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_color_layer", 3087988589)
  methodbind.ptrcall(self, [getPtr layer, getPtr msaa], RID)

proc getDepthTexture*(self: RenderSceneBuffersRD; msaa: bool = false): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_depth_texture", 3050822880)
  methodbind.ptrcall(self, [getPtr msaa], RID)

proc getDepthLayer*(self: RenderSceneBuffersRD; layer: uint32; msaa: bool = false): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_depth_layer", 3087988589)
  methodbind.ptrcall(self, [getPtr layer, getPtr msaa], RID)

proc getVelocityTexture*(self: RenderSceneBuffersRD; msaa: bool = false): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_velocity_texture", 3050822880)
  methodbind.ptrcall(self, [getPtr msaa], RID)

proc getVelocityLayer*(self: RenderSceneBuffersRD; layer: uint32; msaa: bool = false): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_velocity_layer", 3087988589)
  methodbind.ptrcall(self, [getPtr layer, getPtr msaa], RID)

proc getRenderTarget*(self: RenderSceneBuffersRD): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_render_target", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getViewCount*(self: RenderSceneBuffersRD): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_view_count", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc getInternalSize*(self: RenderSceneBuffersRD): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_internal_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc getTargetSize*(self: RenderSceneBuffersRD): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_target_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc getScaling3DMode*(self: RenderSceneBuffersRD): RenderingServer_ViewportScaling3DMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_scaling_3d_mode", 976778074)
  methodbind.ptrcall(self, [], RenderingServer_ViewportScaling3DMode)

proc getFsrSharpness*(self: RenderSceneBuffersRD): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_fsr_sharpness", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getMsaa3D*(self: RenderSceneBuffersRD): RenderingServer_ViewportMSAA =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_msaa_3d", 3109158617)
  methodbind.ptrcall(self, [], RenderingServer_ViewportMSAA)

proc getTextureSamples*(self: RenderSceneBuffersRD): RenderingDevice_TextureSamples =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_texture_samples", 407791724)
  methodbind.ptrcall(self, [], RenderingDevice_TextureSamples)

proc getScreenSpaceAa*(self: RenderSceneBuffersRD): RenderingServer_ViewportScreenSpaceAA =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_screen_space_aa", 641513172)
  methodbind.ptrcall(self, [], RenderingServer_ViewportScreenSpaceAA)

proc getUseTaa*(self: RenderSceneBuffersRD): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_use_taa", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getUseDebanding*(self: RenderSceneBuffersRD): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersRD, "get_use_debanding", 36873697)
  methodbind.ptrcall(self, [], bool)
