{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getRenderTarget*(self: RenderSceneBuffersConfiguration): Rid =
  expandMethodBind(className RenderSceneBuffersConfiguration, "get_render_target", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc setRenderTarget*(self: RenderSceneBuffersConfiguration; renderTarget: Rid): void =
  expandMethodBind(className RenderSceneBuffersConfiguration, "set_render_target", 2722037293)
  var `?param` = [getPtr renderTarget]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInternalSize*(self: RenderSceneBuffersConfiguration): Vector2i =
  expandMethodBind(className RenderSceneBuffersConfiguration, "get_internal_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc setInternalSize*(self: RenderSceneBuffersConfiguration; internalSize: Vector2i): void =
  expandMethodBind(className RenderSceneBuffersConfiguration, "set_internal_size", 1130785943)
  var `?param` = [getPtr internalSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTargetSize*(self: RenderSceneBuffersConfiguration): Vector2i =
  expandMethodBind(className RenderSceneBuffersConfiguration, "get_target_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc setTargetSize*(self: RenderSceneBuffersConfiguration; targetSize: Vector2i): void =
  expandMethodBind(className RenderSceneBuffersConfiguration, "set_target_size", 1130785943)
  var `?param` = [getPtr targetSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getViewCount*(self: RenderSceneBuffersConfiguration): uint32 =
  expandMethodBind(className RenderSceneBuffersConfiguration, "get_view_count", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setViewCount*(self: RenderSceneBuffersConfiguration; viewCount: uint32): void =
  expandMethodBind(className RenderSceneBuffersConfiguration, "set_view_count", 1286410249)
  var `?param` = [getPtr viewCount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScaling3DMode*(self: RenderSceneBuffersConfiguration): RenderingServer_ViewportScaling3DMode =
  expandMethodBind(className RenderSceneBuffersConfiguration, "get_scaling_3d_mode", 976778074)
  var ret: encoded RenderingServer_ViewportScaling3DMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingServer_ViewportScaling3DMode)

proc setScaling3DMode*(self: RenderSceneBuffersConfiguration; scaling3DMode: RenderingServer_ViewportScaling3DMode): void =
  expandMethodBind(className RenderSceneBuffersConfiguration, "set_scaling_3d_mode", 447477857)
  var `?param` = [getPtr scaling3DMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMsaa3D*(self: RenderSceneBuffersConfiguration): RenderingServer_ViewportMsaa =
  expandMethodBind(className RenderSceneBuffersConfiguration, "get_msaa_3d", 3109158617)
  var ret: encoded RenderingServer_ViewportMsaa
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingServer_ViewportMsaa)

proc setMsaa3D*(self: RenderSceneBuffersConfiguration; msaa3D: RenderingServer_ViewportMsaa): void =
  expandMethodBind(className RenderSceneBuffersConfiguration, "set_msaa_3d", 3952630748)
  var `?param` = [getPtr msaa3D]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScreenSpaceAa*(self: RenderSceneBuffersConfiguration): RenderingServer_ViewportScreenSpaceAa =
  expandMethodBind(className RenderSceneBuffersConfiguration, "get_screen_space_aa", 641513172)
  var ret: encoded RenderingServer_ViewportScreenSpaceAa
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingServer_ViewportScreenSpaceAa)

proc setScreenSpaceAa*(self: RenderSceneBuffersConfiguration; screenSpaceAa: RenderingServer_ViewportScreenSpaceAa): void =
  expandMethodBind(className RenderSceneBuffersConfiguration, "set_screen_space_aa", 139543108)
  var `?param` = [getPtr screenSpaceAa]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFsrSharpness*(self: RenderSceneBuffersConfiguration): Float =
  expandMethodBind(className RenderSceneBuffersConfiguration, "get_fsr_sharpness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFsrSharpness*(self: RenderSceneBuffersConfiguration; fsrSharpness: Float): void =
  expandMethodBind(className RenderSceneBuffersConfiguration, "set_fsr_sharpness", 373806689)
  var `?param` = [getPtr fsrSharpness]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureMipmapBias*(self: RenderSceneBuffersConfiguration): Float =
  expandMethodBind(className RenderSceneBuffersConfiguration, "get_texture_mipmap_bias", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTextureMipmapBias*(self: RenderSceneBuffersConfiguration; textureMipmapBias: Float): void =
  expandMethodBind(className RenderSceneBuffersConfiguration, "set_texture_mipmap_bias", 373806689)
  var `?param` = [getPtr textureMipmapBias]
  methodbind.ptrcall(self, addr `?param`[0])

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

const RenderSceneBuffersConfiguration_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RenderSceneBuffersConfiguration]): Table[string, string] = RenderSceneBuffersConfiguration_vmap