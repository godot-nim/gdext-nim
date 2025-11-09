{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(RenderSceneBuffersConfiguration, RefCounted)

proc getRenderTarget*(self: RenderSceneBuffersConfiguration): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "get_render_target", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setRenderTarget*(self: RenderSceneBuffersConfiguration; renderTarget: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "set_render_target", 2722037293)
  methodbind.ptrcall(self, [getPtr renderTarget], void)

proc getInternalSize*(self: RenderSceneBuffersConfiguration): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "get_internal_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setInternalSize*(self: RenderSceneBuffersConfiguration; internalSize: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "set_internal_size", 1130785943)
  methodbind.ptrcall(self, [getPtr internalSize], void)

proc getTargetSize*(self: RenderSceneBuffersConfiguration): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "get_target_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setTargetSize*(self: RenderSceneBuffersConfiguration; targetSize: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "set_target_size", 1130785943)
  methodbind.ptrcall(self, [getPtr targetSize], void)

proc getViewCount*(self: RenderSceneBuffersConfiguration): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "get_view_count", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setViewCount*(self: RenderSceneBuffersConfiguration; viewCount: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "set_view_count", 1286410249)
  methodbind.ptrcall(self, [getPtr viewCount], void)

proc getScaling3DMode*(self: RenderSceneBuffersConfiguration): RenderingServer_ViewportScaling3DMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "get_scaling_3d_mode", 976778074)
  methodbind.ptrcall(self, [], RenderingServer_ViewportScaling3DMode)

proc setScaling3DMode*(self: RenderSceneBuffersConfiguration; scaling3DMode: RenderingServer_ViewportScaling3DMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "set_scaling_3d_mode", 447477857)
  methodbind.ptrcall(self, [getPtr scaling3DMode], void)

proc getMsaa3D*(self: RenderSceneBuffersConfiguration): RenderingServer_ViewportMSAA =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "get_msaa_3d", 3109158617)
  methodbind.ptrcall(self, [], RenderingServer_ViewportMSAA)

proc setMsaa3D*(self: RenderSceneBuffersConfiguration; msaa3D: RenderingServer_ViewportMSAA): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "set_msaa_3d", 3952630748)
  methodbind.ptrcall(self, [getPtr msaa3D], void)

proc getScreenSpaceAa*(self: RenderSceneBuffersConfiguration): RenderingServer_ViewportScreenSpaceAA =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "get_screen_space_aa", 641513172)
  methodbind.ptrcall(self, [], RenderingServer_ViewportScreenSpaceAA)

proc setScreenSpaceAa*(self: RenderSceneBuffersConfiguration; screenSpaceAa: RenderingServer_ViewportScreenSpaceAA): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "set_screen_space_aa", 139543108)
  methodbind.ptrcall(self, [getPtr screenSpaceAa], void)

proc getFsrSharpness*(self: RenderSceneBuffersConfiguration): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "get_fsr_sharpness", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFsrSharpness*(self: RenderSceneBuffersConfiguration; fsrSharpness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "set_fsr_sharpness", 373806689)
  methodbind.ptrcall(self, [getPtr fsrSharpness], void)

proc getTextureMipmapBias*(self: RenderSceneBuffersConfiguration): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "get_texture_mipmap_bias", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTextureMipmapBias*(self: RenderSceneBuffersConfiguration; textureMipmapBias: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "set_texture_mipmap_bias", 373806689)
  methodbind.ptrcall(self, [getPtr textureMipmapBias], void)

proc getAnisotropicFilteringLevel*(self: RenderSceneBuffersConfiguration): RenderingServer_ViewportAnisotropicFiltering =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "get_anisotropic_filtering_level", 1617414954)
  methodbind.ptrcall(self, [], RenderingServer_ViewportAnisotropicFiltering)

proc setAnisotropicFilteringLevel*(self: RenderSceneBuffersConfiguration; anisotropicFilteringLevel: RenderingServer_ViewportAnisotropicFiltering): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RenderSceneBuffersConfiguration, "set_anisotropic_filtering_level", 2559658741)
  methodbind.ptrcall(self, [getPtr anisotropicFilteringLevel], void)

template renderTarget*(self: RenderSceneBuffersConfiguration): untyped = self.getRenderTarget()
template `renderTarget=`*(self: RenderSceneBuffersConfiguration; value) = self.setRenderTarget(value)

template internalSize*(self: RenderSceneBuffersConfiguration): untyped = self.getInternalSize()
template `internalSize=`*(self: RenderSceneBuffersConfiguration; value) = self.setInternalSize(value)

template targetSize*(self: RenderSceneBuffersConfiguration): untyped = self.getTargetSize()
template `targetSize=`*(self: RenderSceneBuffersConfiguration; value) = self.setTargetSize(value)

template viewCount*(self: RenderSceneBuffersConfiguration): untyped = self.getViewCount()
template `viewCount=`*(self: RenderSceneBuffersConfiguration; value) = self.setViewCount(value)

template scaling3DMode*(self: RenderSceneBuffersConfiguration): untyped = self.getScaling3DMode()
template `scaling3DMode=`*(self: RenderSceneBuffersConfiguration; value) = self.setScaling3DMode(value)

template msaa3D*(self: RenderSceneBuffersConfiguration): untyped = self.getMsaa3D()
template `msaa3D=`*(self: RenderSceneBuffersConfiguration; value) = self.setMsaa3D(value)

template screenSpaceAa*(self: RenderSceneBuffersConfiguration): untyped = self.getScreenSpaceAa()
template `screenSpaceAa=`*(self: RenderSceneBuffersConfiguration; value) = self.setScreenSpaceAa(value)

template fsrSharpness*(self: RenderSceneBuffersConfiguration): untyped = self.getFsrSharpness()
template `fsrSharpness=`*(self: RenderSceneBuffersConfiguration; value) = self.setFsrSharpness(value)

template textureMipmapBias*(self: RenderSceneBuffersConfiguration): untyped = self.getTextureMipmapBias()
template `textureMipmapBias=`*(self: RenderSceneBuffersConfiguration; value) = self.setTextureMipmapBias(value)

template anisotropicFilteringLevel*(self: RenderSceneBuffersConfiguration): untyped = self.getAnisotropicFilteringLevel()
template `anisotropicFilteringLevel=`*(self: RenderSceneBuffersConfiguration; value) = self.setAnisotropicFilteringLevel(value)
