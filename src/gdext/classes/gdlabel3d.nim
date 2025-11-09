{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgeometryinstance3d; export gdgeometryinstance3d

expandOnClassImported(Label3D, GeometryInstance3D)

proc setHorizontalAlignment*(self: Label3D; alignment: HorizontalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_horizontal_alignment", 2312603777)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getHorizontalAlignment*(self: Label3D): HorizontalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_horizontal_alignment", 341400642)
  methodbind.ptrcall(self, [], HorizontalAlignment)

proc setVerticalAlignment*(self: Label3D; alignment: VerticalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_vertical_alignment", 1796458609)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getVerticalAlignment*(self: Label3D): VerticalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_vertical_alignment", 3274884059)
  methodbind.ptrcall(self, [], VerticalAlignment)

proc setModulate*(self: Label3D; modulate: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_modulate", 2920490490)
  methodbind.ptrcall(self, [getPtr modulate], void)

proc getModulate*(self: Label3D): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_modulate", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setOutlineModulate*(self: Label3D; modulate: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_outline_modulate", 2920490490)
  methodbind.ptrcall(self, [getPtr modulate], void)

proc getOutlineModulate*(self: Label3D): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_outline_modulate", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setText*(self: Label3D; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_text", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc getText*(self: Label3D): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_text", 201670096)
  methodbind.ptrcall(self, [], String)

proc setTextDirection*(self: Label3D; direction: TextServer_Direction): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_text_direction", 1418190634)
  methodbind.ptrcall(self, [getPtr direction], void)

proc getTextDirection*(self: Label3D): TextServer_Direction =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_text_direction", 2516697328)
  methodbind.ptrcall(self, [], TextServer_Direction)

proc setLanguage*(self: Label3D; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_language", 83702148)
  methodbind.ptrcall(self, [getPtr language], void)

proc getLanguage*(self: Label3D): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_language", 201670096)
  methodbind.ptrcall(self, [], String)

proc setStructuredTextBidiOverride*(self: Label3D; parser: TextServer_StructuredTextParser): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_structured_text_bidi_override", 55961453)
  methodbind.ptrcall(self, [getPtr parser], void)

proc getStructuredTextBidiOverride*(self: Label3D): TextServer_StructuredTextParser =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_structured_text_bidi_override", 3385126229)
  methodbind.ptrcall(self, [], TextServer_StructuredTextParser)

proc setStructuredTextBidiOverrideOptions*(self: Label3D; args: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_structured_text_bidi_override_options", 381264803)
  methodbind.ptrcall(self, [getPtr args], void)

proc getStructuredTextBidiOverrideOptions*(self: Label3D): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_structured_text_bidi_override_options", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc setUppercase*(self: Label3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_uppercase", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUppercase*(self: Label3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "is_uppercase", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setRenderPriority*(self: Label3D; priority: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_render_priority", 1286410249)
  methodbind.ptrcall(self, [getPtr priority], void)

proc getRenderPriority*(self: Label3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_render_priority", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setOutlineRenderPriority*(self: Label3D; priority: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_outline_render_priority", 1286410249)
  methodbind.ptrcall(self, [getPtr priority], void)

proc getOutlineRenderPriority*(self: Label3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_outline_render_priority", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setFont*(self: Label3D; font: gdref Font): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_font", 1262170328)
  methodbind.ptrcall(self, [getPtr font], void)

proc getFont*(self: Label3D): gdref Font =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_font", 3229501585)
  methodbind.ptrcall(self, [], gdref Font)

proc setFontSize*(self: Label3D; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_font_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size], void)

proc getFontSize*(self: Label3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_font_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setOutlineSize*(self: Label3D; outlineSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_outline_size", 1286410249)
  methodbind.ptrcall(self, [getPtr outlineSize], void)

proc getOutlineSize*(self: Label3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_outline_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setLineSpacing*(self: Label3D; lineSpacing: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_line_spacing", 373806689)
  methodbind.ptrcall(self, [getPtr lineSpacing], void)

proc getLineSpacing*(self: Label3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_line_spacing", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAutowrapMode*(self: Label3D; autowrapMode: TextServer_AutowrapMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_autowrap_mode", 3289138044)
  methodbind.ptrcall(self, [getPtr autowrapMode], void)

proc getAutowrapMode*(self: Label3D): TextServer_AutowrapMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_autowrap_mode", 1549071663)
  methodbind.ptrcall(self, [], TextServer_AutowrapMode)

proc setAutowrapTrimFlags*(self: Label3D; autowrapTrimFlags: set[TextServer_LineBreakFlag]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_autowrap_trim_flags", 2809697122)
  methodbind.ptrcall(self, [getPtr autowrapTrimFlags], void)

proc getAutowrapTrimFlags*(self: Label3D): set[TextServer_LineBreakFlag] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_autowrap_trim_flags", 2340632602)
  methodbind.ptrcall(self, [], set[TextServer_LineBreakFlag])

proc setJustificationFlags*(self: Label3D; justificationFlags: set[TextServer_JustificationFlag]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_justification_flags", 2877345813)
  methodbind.ptrcall(self, [getPtr justificationFlags], void)

proc getJustificationFlags*(self: Label3D): set[TextServer_JustificationFlag] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_justification_flags", 1583363614)
  methodbind.ptrcall(self, [], set[TextServer_JustificationFlag])

proc setWidth*(self: Label3D; width: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_width", 373806689)
  methodbind.ptrcall(self, [getPtr width], void)

proc getWidth*(self: Label3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_width", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPixelSize*(self: Label3D; pixelSize: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_pixel_size", 373806689)
  methodbind.ptrcall(self, [getPtr pixelSize], void)

proc getPixelSize*(self: Label3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_pixel_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setOffset*(self: Label3D; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getOffset*(self: Label3D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setDrawFlag*(self: Label3D; flag: Label3D_DrawFlags; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_draw_flag", 1285833066)
  methodbind.ptrcall(self, [getPtr flag, getPtr enabled], void)

proc getDrawFlag*(self: Label3D; flag: Label3D_DrawFlags): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_draw_flag", 259226453)
  methodbind.ptrcall(self, [getPtr flag], bool)

proc setBillboardMode*(self: Label3D; mode: BaseMaterial3D_BillboardMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_billboard_mode", 4202036497)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getBillboardMode*(self: Label3D): BaseMaterial3D_BillboardMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_billboard_mode", 1283840139)
  methodbind.ptrcall(self, [], BaseMaterial3D_BillboardMode)

proc setAlphaCutMode*(self: Label3D; mode: Label3D_AlphaCutMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_alpha_cut_mode", 2549142916)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getAlphaCutMode*(self: Label3D): Label3D_AlphaCutMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_alpha_cut_mode", 219468601)
  methodbind.ptrcall(self, [], Label3D_AlphaCutMode)

proc setAlphaScissorThreshold*(self: Label3D; threshold: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_alpha_scissor_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr threshold], void)

proc getAlphaScissorThreshold*(self: Label3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_alpha_scissor_threshold", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAlphaHashScale*(self: Label3D; threshold: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_alpha_hash_scale", 373806689)
  methodbind.ptrcall(self, [getPtr threshold], void)

proc getAlphaHashScale*(self: Label3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_alpha_hash_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAlphaAntialiasing*(self: Label3D; alphaAa: BaseMaterial3D_AlphaAntiAliasing): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_alpha_antialiasing", 3212649852)
  methodbind.ptrcall(self, [getPtr alphaAa], void)

proc getAlphaAntialiasing*(self: Label3D): BaseMaterial3D_AlphaAntiAliasing =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_alpha_antialiasing", 2889939400)
  methodbind.ptrcall(self, [], BaseMaterial3D_AlphaAntiAliasing)

proc setAlphaAntialiasingEdge*(self: Label3D; edge: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_alpha_antialiasing_edge", 373806689)
  methodbind.ptrcall(self, [getPtr edge], void)

proc getAlphaAntialiasingEdge*(self: Label3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_alpha_antialiasing_edge", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTextureFilter*(self: Label3D; mode: BaseMaterial3D_TextureFilter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "set_texture_filter", 22904437)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getTextureFilter*(self: Label3D): BaseMaterial3D_TextureFilter =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "get_texture_filter", 3289213076)
  methodbind.ptrcall(self, [], BaseMaterial3D_TextureFilter)

proc generateTriangleMesh*(self: Label3D): gdref TriangleMesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label3D, "generate_triangle_mesh", 3476533166)
  methodbind.ptrcall(self, [], gdref TriangleMesh)

template pixelSize*(self: Label3D): untyped = self.getPixelSize()
template `pixelSize=`*(self: Label3D; value) = self.setPixelSize(value)

template offset*(self: Label3D): untyped = self.getOffset()
template `offset=`*(self: Label3D; value) = self.setOffset(value)

template billboard*(self: Label3D): untyped = self.getBillboardMode()
template `billboard=`*(self: Label3D; value) = self.setBillboardMode(value)

template shaded*(self: Label3D): untyped = self.getDrawFlag(Label3D_DrawFlags(0))
template `shaded=`*(self: Label3D; value) = self.setDrawFlag(Label3D_DrawFlags(0), value)

template doubleSided*(self: Label3D): untyped = self.getDrawFlag(Label3D_DrawFlags(1))
template `doubleSided=`*(self: Label3D; value) = self.setDrawFlag(Label3D_DrawFlags(1), value)

template noDepthTest*(self: Label3D): untyped = self.getDrawFlag(Label3D_DrawFlags(2))
template `noDepthTest=`*(self: Label3D; value) = self.setDrawFlag(Label3D_DrawFlags(2), value)

template fixedSize*(self: Label3D): untyped = self.getDrawFlag(Label3D_DrawFlags(3))
template `fixedSize=`*(self: Label3D; value) = self.setDrawFlag(Label3D_DrawFlags(3), value)

template alphaCut*(self: Label3D): untyped = self.getAlphaCutMode()
template `alphaCut=`*(self: Label3D; value) = self.setAlphaCutMode(value)

template alphaScissorThreshold*(self: Label3D): untyped = self.getAlphaScissorThreshold()
template `alphaScissorThreshold=`*(self: Label3D; value) = self.setAlphaScissorThreshold(value)

template alphaHashScale*(self: Label3D): untyped = self.getAlphaHashScale()
template `alphaHashScale=`*(self: Label3D; value) = self.setAlphaHashScale(value)

template alphaAntialiasingMode*(self: Label3D): untyped = self.getAlphaAntialiasing()
template `alphaAntialiasingMode=`*(self: Label3D; value) = self.setAlphaAntialiasing(value)

template alphaAntialiasingEdge*(self: Label3D): untyped = self.getAlphaAntialiasingEdge()
template `alphaAntialiasingEdge=`*(self: Label3D; value) = self.setAlphaAntialiasingEdge(value)

template textureFilter*(self: Label3D): untyped = self.getTextureFilter()
template `textureFilter=`*(self: Label3D; value) = self.setTextureFilter(value)

template renderPriority*(self: Label3D): untyped = self.getRenderPriority()
template `renderPriority=`*(self: Label3D; value) = self.setRenderPriority(value)

template outlineRenderPriority*(self: Label3D): untyped = self.getOutlineRenderPriority()
template `outlineRenderPriority=`*(self: Label3D; value) = self.setOutlineRenderPriority(value)

template modulate*(self: Label3D): untyped = self.getModulate()
template `modulate=`*(self: Label3D; value) = self.setModulate(value)

template outlineModulate*(self: Label3D): untyped = self.getOutlineModulate()
template `outlineModulate=`*(self: Label3D; value) = self.setOutlineModulate(value)

template text*(self: Label3D): untyped = self.getText()
template `text=`*(self: Label3D; value) = self.setText(value)

template font*(self: Label3D): untyped = self.getFont()
template `font=`*(self: Label3D; value) = self.setFont(value)

template fontSize*(self: Label3D): untyped = self.getFontSize()
template `fontSize=`*(self: Label3D; value) = self.setFontSize(value)

template outlineSize*(self: Label3D): untyped = self.getOutlineSize()
template `outlineSize=`*(self: Label3D; value) = self.setOutlineSize(value)

template horizontalAlignment*(self: Label3D): untyped = self.getHorizontalAlignment()
template `horizontalAlignment=`*(self: Label3D; value) = self.setHorizontalAlignment(value)

template verticalAlignment*(self: Label3D): untyped = self.getVerticalAlignment()
template `verticalAlignment=`*(self: Label3D; value) = self.setVerticalAlignment(value)

template uppercase*(self: Label3D): untyped = self.isUppercase()
template `uppercase=`*(self: Label3D; value) = self.setUppercase(value)

template lineSpacing*(self: Label3D): untyped = self.getLineSpacing()
template `lineSpacing=`*(self: Label3D; value) = self.setLineSpacing(value)

template autowrapMode*(self: Label3D): untyped = self.getAutowrapMode()
template `autowrapMode=`*(self: Label3D; value) = self.setAutowrapMode(value)

template autowrapTrimFlags*(self: Label3D): untyped = self.getAutowrapTrimFlags()
template `autowrapTrimFlags=`*(self: Label3D; value) = self.setAutowrapTrimFlags(value)

template justificationFlags*(self: Label3D): untyped = self.getJustificationFlags()
template `justificationFlags=`*(self: Label3D; value) = self.setJustificationFlags(value)

template width*(self: Label3D): untyped = self.getWidth()
template `width=`*(self: Label3D; value) = self.setWidth(value)

template textDirection*(self: Label3D): untyped = self.getTextDirection()
template `textDirection=`*(self: Label3D; value) = self.setTextDirection(value)

template language*(self: Label3D): untyped = self.getLanguage()
template `language=`*(self: Label3D; value) = self.setLanguage(value)

template structuredTextBidiOverride*(self: Label3D): untyped = self.getStructuredTextBidiOverride()
template `structuredTextBidiOverride=`*(self: Label3D; value) = self.setStructuredTextBidiOverride(value)

template structuredTextBidiOverrideOptions*(self: Label3D): untyped = self.getStructuredTextBidiOverrideOptions()
template `structuredTextBidiOverrideOptions=`*(self: Label3D; value) = self.setStructuredTextBidiOverrideOptions(value)
