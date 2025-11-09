{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(CanvasItem, Node)

const NotificationTransformChanged* = 2000
const NotificationLocalTransformChanged* = 35
const NotificationDraw* = 30
const NotificationVisibilityChanged* = 31
const NotificationEnterCanvas* = 32
const NotificationExitCanvas* = 33
const NotificationWorld2DChanged* = 36

method draw*(self: CanvasItem): void {.base.} = (discard)
proc registerVirtual_draw*[T: CanvasItem](Self: typedesc[T]) =
  Self.vmethods[newStringName"_draw"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[CanvasItem](p_instance).draw()

proc getCanvasItem*(self: CanvasItem): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_canvas_item", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setVisible*(self: CanvasItem; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr visible], void)

proc isVisible*(self: CanvasItem): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "is_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isVisibleInTree*(self: CanvasItem): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "is_visible_in_tree", 36873697)
  methodbind.ptrcall(self, [], bool)

proc show*(self: CanvasItem): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "show", 3218959716)
  methodbind.ptrcall(self, [], void)

proc hide*(self: CanvasItem): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "hide", 3218959716)
  methodbind.ptrcall(self, [], void)

proc queueRedraw*(self: CanvasItem): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "queue_redraw", 3218959716)
  methodbind.ptrcall(self, [], void)

proc moveToFront*(self: CanvasItem): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "move_to_front", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setAsTopLevel*(self: CanvasItem; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_as_top_level", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isSetAsTopLevel*(self: CanvasItem): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "is_set_as_top_level", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLightMask*(self: CanvasItem; lightMask: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_light_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr lightMask], void)

proc getLightMask*(self: CanvasItem): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_light_mask", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setModulate*(self: CanvasItem; modulate: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_modulate", 2920490490)
  methodbind.ptrcall(self, [getPtr modulate], void)

proc getModulate*(self: CanvasItem): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_modulate", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setSelfModulate*(self: CanvasItem; selfModulate: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_self_modulate", 2920490490)
  methodbind.ptrcall(self, [getPtr selfModulate], void)

proc getSelfModulate*(self: CanvasItem): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_self_modulate", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setZIndex*(self: CanvasItem; zIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_z_index", 1286410249)
  methodbind.ptrcall(self, [getPtr zIndex], void)

proc getZIndex*(self: CanvasItem): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_z_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setZAsRelative*(self: CanvasItem; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_z_as_relative", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isZRelative*(self: CanvasItem): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "is_z_relative", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setYSortEnabled*(self: CanvasItem; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_y_sort_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isYSortEnabled*(self: CanvasItem): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "is_y_sort_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDrawBehindParent*(self: CanvasItem; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_draw_behind_parent", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDrawBehindParentEnabled*(self: CanvasItem): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "is_draw_behind_parent_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc drawLine*(self: CanvasItem; `from`: Vector2; to: Vector2; color: Color; width: Float = -1.0; antialiased: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_line", 1562330099)
  methodbind.ptrcall(self, [getPtr `from`, getPtr to, getPtr color, getPtr width, getPtr antialiased], void)

proc drawDashedLine*(self: CanvasItem; `from`: Vector2; to: Vector2; color: Color; width: Float = -1.0; dash: Float = 2.0; aligned: bool = true; antialiased: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_dashed_line", 3653831622)
  methodbind.ptrcall(self, [getPtr `from`, getPtr to, getPtr color, getPtr width, getPtr dash, getPtr aligned, getPtr antialiased], void)

proc drawPolyline*(self: CanvasItem; points: PackedVector2Array; color: Color; width: Float = -1.0; antialiased: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_polyline", 3797364428)
  methodbind.ptrcall(self, [getPtr points, getPtr color, getPtr width, getPtr antialiased], void)

proc drawPolylineColors*(self: CanvasItem; points: PackedVector2Array; colors: PackedColorArray; width: Float = -1.0; antialiased: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_polyline_colors", 2311979562)
  methodbind.ptrcall(self, [getPtr points, getPtr colors, getPtr width, getPtr antialiased], void)

proc drawArc*(self: CanvasItem; center: Vector2; radius: Float; startAngle: Float; endAngle: Float; pointCount: int32; color: Color; width: Float = -1.0; antialiased: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_arc", 4140652635)
  methodbind.ptrcall(self, [getPtr center, getPtr radius, getPtr startAngle, getPtr endAngle, getPtr pointCount, getPtr color, getPtr width, getPtr antialiased], void)

proc drawMultiline*(self: CanvasItem; points: PackedVector2Array; color: Color; width: Float = -1.0; antialiased: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_multiline", 3797364428)
  methodbind.ptrcall(self, [getPtr points, getPtr color, getPtr width, getPtr antialiased], void)

proc drawMultilineColors*(self: CanvasItem; points: PackedVector2Array; colors: PackedColorArray; width: Float = -1.0; antialiased: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_multiline_colors", 2311979562)
  methodbind.ptrcall(self, [getPtr points, getPtr colors, getPtr width, getPtr antialiased], void)

proc drawRect*(self: CanvasItem; rect: Rect2; color: Color; filled: bool = true; width: Float = -1.0; antialiased: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_rect", 2773573813)
  methodbind.ptrcall(self, [getPtr rect, getPtr color, getPtr filled, getPtr width, getPtr antialiased], void)

proc drawCircle*(self: CanvasItem; position: Vector2; radius: Float; color: Color; filled: bool = true; width: Float = -1.0; antialiased: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_circle", 3153026596)
  methodbind.ptrcall(self, [getPtr position, getPtr radius, getPtr color, getPtr filled, getPtr width, getPtr antialiased], void)

proc drawTexture*(self: CanvasItem; texture: gdref Texture2D; position: Vector2; modulate: Color = color(1, 1, 1, 1)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_texture", 520200117)
  methodbind.ptrcall(self, [getPtr texture, getPtr position, getPtr modulate], void)

proc drawTextureRect*(self: CanvasItem; texture: gdref Texture2D; rect: Rect2; tile: bool; modulate: Color = color(1, 1, 1, 1); transpose: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_texture_rect", 3832805018)
  methodbind.ptrcall(self, [getPtr texture, getPtr rect, getPtr tile, getPtr modulate, getPtr transpose], void)

proc drawTextureRectRegion*(self: CanvasItem; texture: gdref Texture2D; rect: Rect2; srcRect: Rect2; modulate: Color = color(1, 1, 1, 1); transpose: bool = false; clipUv: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_texture_rect_region", 3883821411)
  methodbind.ptrcall(self, [getPtr texture, getPtr rect, getPtr srcRect, getPtr modulate, getPtr transpose, getPtr clipUv], void)

proc drawMsdfTextureRectRegion*(self: CanvasItem; texture: gdref Texture2D; rect: Rect2; srcRect: Rect2; modulate: Color = color(1, 1, 1, 1); outline: float64 = 0.0; pixelRange: float64 = 4.0; scale: float64 = 1.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_msdf_texture_rect_region", 4219163252)
  methodbind.ptrcall(self, [getPtr texture, getPtr rect, getPtr srcRect, getPtr modulate, getPtr outline, getPtr pixelRange, getPtr scale], void)

proc drawLcdTextureRectRegion*(self: CanvasItem; texture: gdref Texture2D; rect: Rect2; srcRect: Rect2; modulate: Color = color(1, 1, 1, 1)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_lcd_texture_rect_region", 3212350954)
  methodbind.ptrcall(self, [getPtr texture, getPtr rect, getPtr srcRect, getPtr modulate], void)

proc drawStyleBox*(self: CanvasItem; styleBox: gdref StyleBox; rect: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_style_box", 388176283)
  methodbind.ptrcall(self, [getPtr styleBox, getPtr rect], void)

proc drawPrimitive*(self: CanvasItem; points: PackedVector2Array; colors: PackedColorArray; uvs: PackedVector2Array; texture: gdref Texture2D = default gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_primitive", 3288481815)
  methodbind.ptrcall(self, [getPtr points, getPtr colors, getPtr uvs, getPtr texture], void)

proc drawPolygon*(self: CanvasItem; points: PackedVector2Array; colors: PackedColorArray; uvs: PackedVector2Array = PackedVector2Array(); texture: gdref Texture2D = default gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_polygon", 974537912)
  methodbind.ptrcall(self, [getPtr points, getPtr colors, getPtr uvs, getPtr texture], void)

proc drawColoredPolygon*(self: CanvasItem; points: PackedVector2Array; color: Color; uvs: PackedVector2Array = PackedVector2Array(); texture: gdref Texture2D = default gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_colored_polygon", 15245644)
  methodbind.ptrcall(self, [getPtr points, getPtr color, getPtr uvs, getPtr texture], void)

proc drawString*(self: CanvasItem; font: gdref Font; pos: Vector2; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; modulate: Color = color(1, 1, 1, 1); justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal; oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_string", 719605945)
  methodbind.ptrcall(self, [getPtr font, getPtr pos, getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr modulate, getPtr justificationFlags, getPtr direction, getPtr orientation, getPtr oversampling], void)

proc drawMultilineString*(self: CanvasItem; font: gdref Font; pos: Vector2; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; maxLines: int32 = -1; modulate: Color = color(1, 1, 1, 1); brkFlags: set[TextServer_LineBreakFlag] = {breakMandatory, breakWordBound}; justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal; oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_multiline_string", 2341488182)
  methodbind.ptrcall(self, [getPtr font, getPtr pos, getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr maxLines, getPtr modulate, getPtr brkFlags, getPtr justificationFlags, getPtr direction, getPtr orientation, getPtr oversampling], void)

proc drawStringOutline*(self: CanvasItem; font: gdref Font; pos: Vector2; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; size: int32 = 1; modulate: Color = color(1, 1, 1, 1); justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal; oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_string_outline", 707403449)
  methodbind.ptrcall(self, [getPtr font, getPtr pos, getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr size, getPtr modulate, getPtr justificationFlags, getPtr direction, getPtr orientation, getPtr oversampling], void)

proc drawMultilineStringOutline*(self: CanvasItem; font: gdref Font; pos: Vector2; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; maxLines: int32 = -1; size: int32 = 1; modulate: Color = color(1, 1, 1, 1); brkFlags: set[TextServer_LineBreakFlag] = {breakMandatory, breakWordBound}; justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal; oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_multiline_string_outline", 3050414441)
  methodbind.ptrcall(self, [getPtr font, getPtr pos, getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr maxLines, getPtr size, getPtr modulate, getPtr brkFlags, getPtr justificationFlags, getPtr direction, getPtr orientation, getPtr oversampling], void)

proc drawChar*(self: CanvasItem; font: gdref Font; pos: Vector2; char: String; fontSize: int32 = 16; modulate: Color = color(1, 1, 1, 1); oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_char", 1336210142)
  methodbind.ptrcall(self, [getPtr font, getPtr pos, getPtr char, getPtr fontSize, getPtr modulate, getPtr oversampling], void)

proc drawCharOutline*(self: CanvasItem; font: gdref Font; pos: Vector2; char: String; fontSize: int32 = 16; size: int32 = -1; modulate: Color = color(1, 1, 1, 1); oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_char_outline", 1846384149)
  methodbind.ptrcall(self, [getPtr font, getPtr pos, getPtr char, getPtr fontSize, getPtr size, getPtr modulate, getPtr oversampling], void)

proc drawMesh*(self: CanvasItem; mesh: gdref Mesh; texture: gdref Texture2D; transform: Transform2D = transform2D(); modulate: Color = color(1, 1, 1, 1)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_mesh", 153818295)
  methodbind.ptrcall(self, [getPtr mesh, getPtr texture, getPtr transform, getPtr modulate], void)

proc drawMultimesh*(self: CanvasItem; multimesh: gdref MultiMesh; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_multimesh", 937992368)
  methodbind.ptrcall(self, [getPtr multimesh, getPtr texture], void)

proc drawSetTransform*(self: CanvasItem; position: Vector2; rotation: Float = 0.0; scale: Vector2 = vector2(1, 1)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_set_transform", 288975085)
  methodbind.ptrcall(self, [getPtr position, getPtr rotation, getPtr scale], void)

proc drawSetTransformMatrix*(self: CanvasItem; xform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_set_transform_matrix", 2761652528)
  methodbind.ptrcall(self, [getPtr xform], void)

proc drawAnimationSlice*(self: CanvasItem; animationLength: float64; sliceBegin: float64; sliceEnd: float64; offset: float64 = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_animation_slice", 3112831842)
  methodbind.ptrcall(self, [getPtr animationLength, getPtr sliceBegin, getPtr sliceEnd, getPtr offset], void)

proc drawEndAnimation*(self: CanvasItem): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "draw_end_animation", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getTransform*(self: CanvasItem): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_transform", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc getGlobalTransform*(self: CanvasItem): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_global_transform", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc getGlobalTransformWithCanvas*(self: CanvasItem): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_global_transform_with_canvas", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc getViewportTransform*(self: CanvasItem): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_viewport_transform", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc getViewportRect*(self: CanvasItem): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_viewport_rect", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

proc getCanvasTransform*(self: CanvasItem): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_canvas_transform", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc getScreenTransform*(self: CanvasItem): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_screen_transform", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc getLocalMousePosition*(self: CanvasItem): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_local_mouse_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getGlobalMousePosition*(self: CanvasItem): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_global_mouse_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getCanvas*(self: CanvasItem): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_canvas", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getCanvasLayerNode*(self: CanvasItem): CanvasLayer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_canvas_layer_node", 2602762519)
  methodbind.ptrcall(self, [], CanvasLayer)

proc getWorld2D*(self: CanvasItem): gdref World2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_world_2d", 2339128592)
  methodbind.ptrcall(self, [], gdref World2D)

proc setMaterial*(self: CanvasItem; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material], void)

proc getMaterial*(self: CanvasItem): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_material", 5934680)
  methodbind.ptrcall(self, [], gdref Material)

proc setInstanceShaderParameter*(self: CanvasItem; name: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_instance_shader_parameter", 3776071444)
  methodbind.ptrcall(self, [getPtr name, getPtr value], void)

proc getInstanceShaderParameter*(self: CanvasItem; name: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_instance_shader_parameter", 2760726917)
  methodbind.ptrcall(self, [getPtr name], Variant)

proc setUseParentMaterial*(self: CanvasItem; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_use_parent_material", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getUseParentMaterial*(self: CanvasItem): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_use_parent_material", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNotifyLocalTransform*(self: CanvasItem; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_notify_local_transform", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isLocalTransformNotificationEnabled*(self: CanvasItem): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "is_local_transform_notification_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNotifyTransform*(self: CanvasItem; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_notify_transform", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isTransformNotificationEnabled*(self: CanvasItem): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "is_transform_notification_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc forceUpdateTransform*(self: CanvasItem): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "force_update_transform", 3218959716)
  methodbind.ptrcall(self, [], void)

proc makeCanvasPositionLocal*(self: CanvasItem; viewportPoint: Vector2): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "make_canvas_position_local", 2656412154)
  methodbind.ptrcall(self, [getPtr viewportPoint], Vector2)

proc makeInputLocal*(self: CanvasItem; event: gdref InputEvent): gdref InputEvent =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "make_input_local", 811130057)
  methodbind.ptrcall(self, [getPtr event], gdref InputEvent)

proc setVisibilityLayer*(self: CanvasItem; layer: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_visibility_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layer], void)

proc getVisibilityLayer*(self: CanvasItem): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_visibility_layer", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setVisibilityLayerBit*(self: CanvasItem; layer: uint32; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_visibility_layer_bit", 300928843)
  methodbind.ptrcall(self, [getPtr layer, getPtr enabled], void)

proc getVisibilityLayerBit*(self: CanvasItem; layer: uint32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_visibility_layer_bit", 1116898809)
  methodbind.ptrcall(self, [getPtr layer], bool)

proc setTextureFilter*(self: CanvasItem; mode: CanvasItem_TextureFilter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_texture_filter", 1037999706)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getTextureFilter*(self: CanvasItem): CanvasItem_TextureFilter =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_texture_filter", 121960042)
  methodbind.ptrcall(self, [], CanvasItem_TextureFilter)

proc setTextureRepeat*(self: CanvasItem; mode: CanvasItem_TextureRepeat): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_texture_repeat", 1716472974)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getTextureRepeat*(self: CanvasItem): CanvasItem_TextureRepeat =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_texture_repeat", 2667158319)
  methodbind.ptrcall(self, [], CanvasItem_TextureRepeat)

proc setClipChildrenMode*(self: CanvasItem; mode: CanvasItem_ClipChildrenMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "set_clip_children_mode", 1319393776)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getClipChildrenMode*(self: CanvasItem): CanvasItem_ClipChildrenMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItem, "get_clip_children_mode", 3581808349)
  methodbind.ptrcall(self, [], CanvasItem_ClipChildrenMode)

template visible*(self: CanvasItem): untyped = self.isVisible()
template `visible=`*(self: CanvasItem; value) = self.setVisible(value)

template modulate*(self: CanvasItem): untyped = self.getModulate()
template `modulate=`*(self: CanvasItem; value) = self.setModulate(value)

template selfModulate*(self: CanvasItem): untyped = self.getSelfModulate()
template `selfModulate=`*(self: CanvasItem; value) = self.setSelfModulate(value)

template showBehindParent*(self: CanvasItem): untyped = self.isDrawBehindParentEnabled()
template `showBehindParent=`*(self: CanvasItem; value) = self.setDrawBehindParent(value)

template topLevel*(self: CanvasItem): untyped = self.isSetAsTopLevel()
template `topLevel=`*(self: CanvasItem; value) = self.setAsTopLevel(value)

template clipChildren*(self: CanvasItem): untyped = self.getClipChildrenMode()
template `clipChildren=`*(self: CanvasItem; value) = self.setClipChildrenMode(value)

template lightMask*(self: CanvasItem): untyped = self.getLightMask()
template `lightMask=`*(self: CanvasItem; value) = self.setLightMask(value)

template visibilityLayer*(self: CanvasItem): untyped = self.getVisibilityLayer()
template `visibilityLayer=`*(self: CanvasItem; value) = self.setVisibilityLayer(value)

template zIndex*(self: CanvasItem): untyped = self.getZIndex()
template `zIndex=`*(self: CanvasItem; value) = self.setZIndex(value)

template zAsRelative*(self: CanvasItem): untyped = self.isZRelative()
template `zAsRelative=`*(self: CanvasItem; value) = self.setZAsRelative(value)

template ySortEnabled*(self: CanvasItem): untyped = self.isYSortEnabled()
template `ySortEnabled=`*(self: CanvasItem; value) = self.setYSortEnabled(value)

template textureFilter*(self: CanvasItem): untyped = self.getTextureFilter()
template `textureFilter=`*(self: CanvasItem; value) = self.setTextureFilter(value)

template textureRepeat*(self: CanvasItem): untyped = self.getTextureRepeat()
template `textureRepeat=`*(self: CanvasItem; value) = self.setTextureRepeat(value)

template material*(self: CanvasItem): untyped = self.getMaterial()
template `material=`*(self: CanvasItem; value) = self.setMaterial(value)

template useParentMaterial*(self: CanvasItem): untyped = self.getUseParentMaterial()
template `useParentMaterial=`*(self: CanvasItem; value) = self.setUseParentMaterial(value)
