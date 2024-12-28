{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgeometryinstance3d; export gdgeometryinstance3d

proc setCentered*(self: SpriteBase3D; centered: bool): void =
  expandMethodBind(className SpriteBase3D, "set_centered", 2586408642)
  methodbind.ptrcall(self, [getPtr centered])

proc isCentered*(self: SpriteBase3D): bool =
  expandMethodBind(className SpriteBase3D, "is_centered", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setOffset*(self: SpriteBase3D; offset: Vector2): void =
  expandMethodBind(className SpriteBase3D, "set_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset])

proc getOffset*(self: SpriteBase3D): Vector2 =
  expandMethodBind(className SpriteBase3D, "get_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setFlipH*(self: SpriteBase3D; flipH: bool): void =
  expandMethodBind(className SpriteBase3D, "set_flip_h", 2586408642)
  methodbind.ptrcall(self, [getPtr flipH])

proc isFlippedH*(self: SpriteBase3D): bool =
  expandMethodBind(className SpriteBase3D, "is_flipped_h", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setFlipV*(self: SpriteBase3D; flipV: bool): void =
  expandMethodBind(className SpriteBase3D, "set_flip_v", 2586408642)
  methodbind.ptrcall(self, [getPtr flipV])

proc isFlippedV*(self: SpriteBase3D): bool =
  expandMethodBind(className SpriteBase3D, "is_flipped_v", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setModulate*(self: SpriteBase3D; modulate: Color): void =
  expandMethodBind(className SpriteBase3D, "set_modulate", 2920490490)
  methodbind.ptrcall(self, [getPtr modulate])

proc getModulate*(self: SpriteBase3D): Color =
  expandMethodBind(className SpriteBase3D, "get_modulate", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setRenderPriority*(self: SpriteBase3D; priority: int32): void =
  expandMethodBind(className SpriteBase3D, "set_render_priority", 1286410249)
  methodbind.ptrcall(self, [getPtr priority])

proc getRenderPriority*(self: SpriteBase3D): int32 =
  expandMethodBind(className SpriteBase3D, "get_render_priority", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setPixelSize*(self: SpriteBase3D; pixelSize: Float): void =
  expandMethodBind(className SpriteBase3D, "set_pixel_size", 373806689)
  methodbind.ptrcall(self, [getPtr pixelSize])

proc getPixelSize*(self: SpriteBase3D): Float =
  expandMethodBind(className SpriteBase3D, "get_pixel_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setAxis*(self: SpriteBase3D; axis: Vector3_Axis): void =
  expandMethodBind(className SpriteBase3D, "set_axis", 1144690656)
  methodbind.ptrcall(self, [getPtr axis])

proc getAxis*(self: SpriteBase3D): Vector3_Axis =
  expandMethodBind(className SpriteBase3D, "get_axis", 3050976882)
  var ret: encoded Vector3_Axis
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3_Axis)

proc setDrawFlag*(self: SpriteBase3D; flag: SpriteBase3D_DrawFlags; enabled: bool): void =
  expandMethodBind(className SpriteBase3D, "set_draw_flag", 1135633219)
  methodbind.ptrcall(self, [getPtr flag, getPtr enabled])

proc getDrawFlag*(self: SpriteBase3D; flag: SpriteBase3D_DrawFlags): bool =
  expandMethodBind(className SpriteBase3D, "get_draw_flag", 1733036628)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr flag], addr ret)
  (addr ret).decode_result(bool)

proc setAlphaCutMode*(self: SpriteBase3D; mode: SpriteBase3D_AlphaCutMode): void =
  expandMethodBind(className SpriteBase3D, "set_alpha_cut_mode", 227561226)
  methodbind.ptrcall(self, [getPtr mode])

proc getAlphaCutMode*(self: SpriteBase3D): SpriteBase3D_AlphaCutMode =
  expandMethodBind(className SpriteBase3D, "get_alpha_cut_mode", 336003791)
  var ret: encoded SpriteBase3D_AlphaCutMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(SpriteBase3D_AlphaCutMode)

proc setAlphaScissorThreshold*(self: SpriteBase3D; threshold: Float): void =
  expandMethodBind(className SpriteBase3D, "set_alpha_scissor_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr threshold])

proc getAlphaScissorThreshold*(self: SpriteBase3D): Float =
  expandMethodBind(className SpriteBase3D, "get_alpha_scissor_threshold", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setAlphaHashScale*(self: SpriteBase3D; threshold: Float): void =
  expandMethodBind(className SpriteBase3D, "set_alpha_hash_scale", 373806689)
  methodbind.ptrcall(self, [getPtr threshold])

proc getAlphaHashScale*(self: SpriteBase3D): Float =
  expandMethodBind(className SpriteBase3D, "get_alpha_hash_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setAlphaAntialiasing*(self: SpriteBase3D; alphaAa: BaseMaterial3D_AlphaAntiAliasing): void =
  expandMethodBind(className SpriteBase3D, "set_alpha_antialiasing", 3212649852)
  methodbind.ptrcall(self, [getPtr alphaAa])

proc getAlphaAntialiasing*(self: SpriteBase3D): BaseMaterial3D_AlphaAntiAliasing =
  expandMethodBind(className SpriteBase3D, "get_alpha_antialiasing", 2889939400)
  var ret: encoded BaseMaterial3D_AlphaAntiAliasing
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_AlphaAntiAliasing)

proc setAlphaAntialiasingEdge*(self: SpriteBase3D; edge: Float): void =
  expandMethodBind(className SpriteBase3D, "set_alpha_antialiasing_edge", 373806689)
  methodbind.ptrcall(self, [getPtr edge])

proc getAlphaAntialiasingEdge*(self: SpriteBase3D): Float =
  expandMethodBind(className SpriteBase3D, "get_alpha_antialiasing_edge", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setBillboardMode*(self: SpriteBase3D; mode: BaseMaterial3D_BillboardMode): void =
  expandMethodBind(className SpriteBase3D, "set_billboard_mode", 4202036497)
  methodbind.ptrcall(self, [getPtr mode])

proc getBillboardMode*(self: SpriteBase3D): BaseMaterial3D_BillboardMode =
  expandMethodBind(className SpriteBase3D, "get_billboard_mode", 1283840139)
  var ret: encoded BaseMaterial3D_BillboardMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_BillboardMode)

proc setTextureFilter*(self: SpriteBase3D; mode: BaseMaterial3D_TextureFilter): void =
  expandMethodBind(className SpriteBase3D, "set_texture_filter", 22904437)
  methodbind.ptrcall(self, [getPtr mode])

proc getTextureFilter*(self: SpriteBase3D): BaseMaterial3D_TextureFilter =
  expandMethodBind(className SpriteBase3D, "get_texture_filter", 3289213076)
  var ret: encoded BaseMaterial3D_TextureFilter
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_TextureFilter)

proc getItemRect*(self: SpriteBase3D): Rect2 =
  expandMethodBind(className SpriteBase3D, "get_item_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Rect2)

proc generateTriangleMesh*(self: SpriteBase3D): gdref TriangleMesh =
  expandMethodBind(className SpriteBase3D, "generate_triangle_mesh", 3476533166)
  var ret: encoded gdref TriangleMesh
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref TriangleMesh)

template centered*(self: SpriteBase3D): untyped = self.isCentered()
template `centered=`*(self: SpriteBase3D; value) = self.setCentered(value)

template offset*(self: SpriteBase3D): untyped = self.getOffset()
template `offset=`*(self: SpriteBase3D; value) = self.setOffset(value)

template flipH*(self: SpriteBase3D): untyped = self.isFlippedH()
template `flipH=`*(self: SpriteBase3D; value) = self.setFlipH(value)

template flipV*(self: SpriteBase3D): untyped = self.isFlippedV()
template `flipV=`*(self: SpriteBase3D; value) = self.setFlipV(value)

template modulate*(self: SpriteBase3D): untyped = self.getModulate()
template `modulate=`*(self: SpriteBase3D; value) = self.setModulate(value)

template pixelSize*(self: SpriteBase3D): untyped = self.getPixelSize()
template `pixelSize=`*(self: SpriteBase3D; value) = self.setPixelSize(value)

template axis*(self: SpriteBase3D): untyped = self.getAxis()
template `axis=`*(self: SpriteBase3D; value) = self.setAxis(value)

template billboard*(self: SpriteBase3D): untyped = self.getBillboardMode()
template `billboard=`*(self: SpriteBase3D; value) = self.setBillboardMode(value)

template transparent*(self: SpriteBase3D): untyped = self.getDrawFlag(SpriteBase3D_DrawFlags(0))
template `transparent=`*(self: SpriteBase3D; value) = self.setDrawFlag(SpriteBase3D_DrawFlags(0), value)

template shaded*(self: SpriteBase3D): untyped = self.getDrawFlag(SpriteBase3D_DrawFlags(1))
template `shaded=`*(self: SpriteBase3D; value) = self.setDrawFlag(SpriteBase3D_DrawFlags(1), value)

template doubleSided*(self: SpriteBase3D): untyped = self.getDrawFlag(SpriteBase3D_DrawFlags(2))
template `doubleSided=`*(self: SpriteBase3D; value) = self.setDrawFlag(SpriteBase3D_DrawFlags(2), value)

template noDepthTest*(self: SpriteBase3D): untyped = self.getDrawFlag(SpriteBase3D_DrawFlags(3))
template `noDepthTest=`*(self: SpriteBase3D; value) = self.setDrawFlag(SpriteBase3D_DrawFlags(3), value)

template fixedSize*(self: SpriteBase3D): untyped = self.getDrawFlag(SpriteBase3D_DrawFlags(4))
template `fixedSize=`*(self: SpriteBase3D; value) = self.setDrawFlag(SpriteBase3D_DrawFlags(4), value)

template alphaCut*(self: SpriteBase3D): untyped = self.getAlphaCutMode()
template `alphaCut=`*(self: SpriteBase3D; value) = self.setAlphaCutMode(value)

template alphaScissorThreshold*(self: SpriteBase3D): untyped = self.getAlphaScissorThreshold()
template `alphaScissorThreshold=`*(self: SpriteBase3D; value) = self.setAlphaScissorThreshold(value)

template alphaHashScale*(self: SpriteBase3D): untyped = self.getAlphaHashScale()
template `alphaHashScale=`*(self: SpriteBase3D; value) = self.setAlphaHashScale(value)

template alphaAntialiasingMode*(self: SpriteBase3D): untyped = self.getAlphaAntialiasing()
template `alphaAntialiasingMode=`*(self: SpriteBase3D; value) = self.setAlphaAntialiasing(value)

template alphaAntialiasingEdge*(self: SpriteBase3D): untyped = self.getAlphaAntialiasingEdge()
template `alphaAntialiasingEdge=`*(self: SpriteBase3D; value) = self.setAlphaAntialiasingEdge(value)

template textureFilter*(self: SpriteBase3D): untyped = self.getTextureFilter()
template `textureFilter=`*(self: SpriteBase3D; value) = self.setTextureFilter(value)

template renderPriority*(self: SpriteBase3D): untyped = self.getRenderPriority()
template `renderPriority=`*(self: SpriteBase3D; value) = self.setRenderPriority(value)

const SpriteBase3D_vmap =
  GeometryInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SpriteBase3D]): Table[string, string] = SpriteBase3D_vmap