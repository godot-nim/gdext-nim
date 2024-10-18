{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

method draw*(self: CanvasItem): void {.base.} = (discard)
proc draw(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[CanvasItem](p_instance).draw()
template draw_bind*(_: typedesc[CanvasItem]): ClassCallVirtual = draw

proc getCanvasItem*(self: CanvasItem): Rid =
  expandMethodBind(className CanvasItem, "get_canvas_item", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc setVisible*(self: CanvasItem; visible: bool): void =
  expandMethodBind(className CanvasItem, "set_visible", 2586408642)
  var `?param` = [getPtr visible]
  methodbind.ptrcall(self, addr `?param`[0])

proc isVisible*(self: CanvasItem): bool =
  expandMethodBind(className CanvasItem, "is_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isVisibleInTree*(self: CanvasItem): bool =
  expandMethodBind(className CanvasItem, "is_visible_in_tree", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc show*(self: CanvasItem): void =
  expandMethodBind(className CanvasItem, "show", 3218959716)
  methodbind.ptrcall(self, nil)

proc hide*(self: CanvasItem): void =
  expandMethodBind(className CanvasItem, "hide", 3218959716)
  methodbind.ptrcall(self, nil)

proc queueRedraw*(self: CanvasItem): void =
  expandMethodBind(className CanvasItem, "queue_redraw", 3218959716)
  methodbind.ptrcall(self, nil)

proc moveToFront*(self: CanvasItem): void =
  expandMethodBind(className CanvasItem, "move_to_front", 3218959716)
  methodbind.ptrcall(self, nil)

proc setAsTopLevel*(self: CanvasItem; enable: bool): void =
  expandMethodBind(className CanvasItem, "set_as_top_level", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSetAsTopLevel*(self: CanvasItem): bool =
  expandMethodBind(className CanvasItem, "is_set_as_top_level", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setLightMask*(self: CanvasItem; lightMask: int32): void =
  expandMethodBind(className CanvasItem, "set_light_mask", 1286410249)
  var `?param` = [getPtr lightMask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLightMask*(self: CanvasItem): int32 =
  expandMethodBind(className CanvasItem, "get_light_mask", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setModulate*(self: CanvasItem; modulate: Color): void =
  expandMethodBind(className CanvasItem, "set_modulate", 2920490490)
  var `?param` = [getPtr modulate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getModulate*(self: CanvasItem): Color =
  expandMethodBind(className CanvasItem, "get_modulate", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setSelfModulate*(self: CanvasItem; selfModulate: Color): void =
  expandMethodBind(className CanvasItem, "set_self_modulate", 2920490490)
  var `?param` = [getPtr selfModulate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSelfModulate*(self: CanvasItem): Color =
  expandMethodBind(className CanvasItem, "get_self_modulate", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setZIndex*(self: CanvasItem; zIndex: int32): void =
  expandMethodBind(className CanvasItem, "set_z_index", 1286410249)
  var `?param` = [getPtr zIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc getZIndex*(self: CanvasItem): int32 =
  expandMethodBind(className CanvasItem, "get_z_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setZAsRelative*(self: CanvasItem; enable: bool): void =
  expandMethodBind(className CanvasItem, "set_z_as_relative", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isZRelative*(self: CanvasItem): bool =
  expandMethodBind(className CanvasItem, "is_z_relative", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setYSortEnabled*(self: CanvasItem; enabled: bool): void =
  expandMethodBind(className CanvasItem, "set_y_sort_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isYSortEnabled*(self: CanvasItem): bool =
  expandMethodBind(className CanvasItem, "is_y_sort_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDrawBehindParent*(self: CanvasItem; enable: bool): void =
  expandMethodBind(className CanvasItem, "set_draw_behind_parent", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDrawBehindParentEnabled*(self: CanvasItem): bool =
  expandMethodBind(className CanvasItem, "is_draw_behind_parent_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc drawLine*(self: CanvasItem; `from`: Vector2; to: Vector2; color: Color; width: Float = -1.0; antialiased: bool = false): void =
  expandMethodBind(className CanvasItem, "draw_line", 1562330099)
  var `?param` = [getPtr `from`, getPtr to, getPtr color, getPtr width, getPtr antialiased]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawDashedLine*(self: CanvasItem; `from`: Vector2; to: Vector2; color: Color; width: Float = -1.0; dash: Float = 2.0; aligned: bool = true; antialiased: bool = false): void =
  expandMethodBind(className CanvasItem, "draw_dashed_line", 3653831622)
  var `?param` = [getPtr `from`, getPtr to, getPtr color, getPtr width, getPtr dash, getPtr aligned, getPtr antialiased]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawPolyline*(self: CanvasItem; points: PackedVector2Array; color: Color; width: Float = -1.0; antialiased: bool = false): void =
  expandMethodBind(className CanvasItem, "draw_polyline", 3797364428)
  var `?param` = [getPtr points, getPtr color, getPtr width, getPtr antialiased]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawPolylineColors*(self: CanvasItem; points: PackedVector2Array; colors: PackedColorArray; width: Float = -1.0; antialiased: bool = false): void =
  expandMethodBind(className CanvasItem, "draw_polyline_colors", 2311979562)
  var `?param` = [getPtr points, getPtr colors, getPtr width, getPtr antialiased]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawArc*(self: CanvasItem; center: Vector2; radius: Float; startAngle: Float; endAngle: Float; pointCount: int32; color: Color; width: Float = -1.0; antialiased: bool = false): void =
  expandMethodBind(className CanvasItem, "draw_arc", 4140652635)
  var `?param` = [getPtr center, getPtr radius, getPtr startAngle, getPtr endAngle, getPtr pointCount, getPtr color, getPtr width, getPtr antialiased]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawMultiline*(self: CanvasItem; points: PackedVector2Array; color: Color; width: Float = -1.0; antialiased: bool = false): void =
  expandMethodBind(className CanvasItem, "draw_multiline", 3797364428)
  var `?param` = [getPtr points, getPtr color, getPtr width, getPtr antialiased]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawMultilineColors*(self: CanvasItem; points: PackedVector2Array; colors: PackedColorArray; width: Float = -1.0; antialiased: bool = false): void =
  expandMethodBind(className CanvasItem, "draw_multiline_colors", 2311979562)
  var `?param` = [getPtr points, getPtr colors, getPtr width, getPtr antialiased]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawRect*(self: CanvasItem; rect: Rect2; color: Color; filled: bool = true; width: Float = -1.0; antialiased: bool = false): void =
  expandMethodBind(className CanvasItem, "draw_rect", 2773573813)
  var `?param` = [getPtr rect, getPtr color, getPtr filled, getPtr width, getPtr antialiased]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawCircle*(self: CanvasItem; position: Vector2; radius: Float; color: Color; filled: bool = true; width: Float = -1.0; antialiased: bool = false): void =
  expandMethodBind(className CanvasItem, "draw_circle", 3153026596)
  var `?param` = [getPtr position, getPtr radius, getPtr color, getPtr filled, getPtr width, getPtr antialiased]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawTexture*(self: CanvasItem; texture: gdref Texture2D; position: Vector2; modulate: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className CanvasItem, "draw_texture", 520200117)
  var `?param` = [getPtr texture, getPtr position, getPtr modulate]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawTextureRect*(self: CanvasItem; texture: gdref Texture2D; rect: Rect2; tile: bool; modulate: Color = color(1, 1, 1, 1); transpose: bool = false): void =
  expandMethodBind(className CanvasItem, "draw_texture_rect", 3832805018)
  var `?param` = [getPtr texture, getPtr rect, getPtr tile, getPtr modulate, getPtr transpose]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawTextureRectRegion*(self: CanvasItem; texture: gdref Texture2D; rect: Rect2; srcRect: Rect2; modulate: Color = color(1, 1, 1, 1); transpose: bool = false; clipUv: bool = true): void =
  expandMethodBind(className CanvasItem, "draw_texture_rect_region", 3883821411)
  var `?param` = [getPtr texture, getPtr rect, getPtr srcRect, getPtr modulate, getPtr transpose, getPtr clipUv]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawMsdfTextureRectRegion*(self: CanvasItem; texture: gdref Texture2D; rect: Rect2; srcRect: Rect2; modulate: Color = color(1, 1, 1, 1); outline: float64 = 0.0; pixelRange: float64 = 4.0; scale: float64 = 1.0): void =
  expandMethodBind(className CanvasItem, "draw_msdf_texture_rect_region", 4219163252)
  var `?param` = [getPtr texture, getPtr rect, getPtr srcRect, getPtr modulate, getPtr outline, getPtr pixelRange, getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawLcdTextureRectRegion*(self: CanvasItem; texture: gdref Texture2D; rect: Rect2; srcRect: Rect2; modulate: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className CanvasItem, "draw_lcd_texture_rect_region", 3212350954)
  var `?param` = [getPtr texture, getPtr rect, getPtr srcRect, getPtr modulate]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawStyleBox*(self: CanvasItem; styleBox: gdref StyleBox; rect: Rect2): void =
  expandMethodBind(className CanvasItem, "draw_style_box", 388176283)
  var `?param` = [getPtr styleBox, getPtr rect]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawPrimitive*(self: CanvasItem; points: PackedVector2Array; colors: PackedColorArray; uvs: PackedVector2Array; texture: gdref Texture2D = default gdref Texture2D): void =
  expandMethodBind(className CanvasItem, "draw_primitive", 3288481815)
  var `?param` = [getPtr points, getPtr colors, getPtr uvs, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawPolygon*(self: CanvasItem; points: PackedVector2Array; colors: PackedColorArray; uvs: PackedVector2Array = PackedVector2Array(); texture: gdref Texture2D = default gdref Texture2D): void =
  expandMethodBind(className CanvasItem, "draw_polygon", 974537912)
  var `?param` = [getPtr points, getPtr colors, getPtr uvs, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawColoredPolygon*(self: CanvasItem; points: PackedVector2Array; color: Color; uvs: PackedVector2Array = PackedVector2Array(); texture: gdref Texture2D = default gdref Texture2D): void =
  expandMethodBind(className CanvasItem, "draw_colored_polygon", 15245644)
  var `?param` = [getPtr points, getPtr color, getPtr uvs, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawString*(self: CanvasItem; font: gdref Font; pos: Vector2; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; modulate: Color = color(1, 1, 1, 1); justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal): void =
  expandMethodBind(className CanvasItem, "draw_string", 728290553)
  var `?param` = [getPtr font, getPtr pos, getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr modulate, getPtr justificationFlags, getPtr direction, getPtr orientation]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawMultilineString*(self: CanvasItem; font: gdref Font; pos: Vector2; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; maxLines: int32 = -1; modulate: Color = color(1, 1, 1, 1); brkFlags: set[TextServer_LineBreakFlag] = {breakMandatory, breakWordBound}; justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal): void =
  expandMethodBind(className CanvasItem, "draw_multiline_string", 1927038192)
  var `?param` = [getPtr font, getPtr pos, getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr maxLines, getPtr modulate, getPtr brkFlags, getPtr justificationFlags, getPtr direction, getPtr orientation]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawStringOutline*(self: CanvasItem; font: gdref Font; pos: Vector2; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; size: int32 = 1; modulate: Color = color(1, 1, 1, 1); justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal): void =
  expandMethodBind(className CanvasItem, "draw_string_outline", 340562381)
  var `?param` = [getPtr font, getPtr pos, getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr size, getPtr modulate, getPtr justificationFlags, getPtr direction, getPtr orientation]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawMultilineStringOutline*(self: CanvasItem; font: gdref Font; pos: Vector2; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; maxLines: int32 = -1; size: int32 = 1; modulate: Color = color(1, 1, 1, 1); brkFlags: set[TextServer_LineBreakFlag] = {breakMandatory, breakWordBound}; justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal): void =
  expandMethodBind(className CanvasItem, "draw_multiline_string_outline", 1912318525)
  var `?param` = [getPtr font, getPtr pos, getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr maxLines, getPtr size, getPtr modulate, getPtr brkFlags, getPtr justificationFlags, getPtr direction, getPtr orientation]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawChar*(self: CanvasItem; font: gdref Font; pos: Vector2; char: String; fontSize: int32 = 16; modulate: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className CanvasItem, "draw_char", 3339793283)
  var `?param` = [getPtr font, getPtr pos, getPtr char, getPtr fontSize, getPtr modulate]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawCharOutline*(self: CanvasItem; font: gdref Font; pos: Vector2; char: String; fontSize: int32 = 16; size: int32 = -1; modulate: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className CanvasItem, "draw_char_outline", 3302344391)
  var `?param` = [getPtr font, getPtr pos, getPtr char, getPtr fontSize, getPtr size, getPtr modulate]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawMesh*(self: CanvasItem; mesh: gdref Mesh; texture: gdref Texture2D; transform: Transform2D = transform2D(); modulate: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className CanvasItem, "draw_mesh", 153818295)
  var `?param` = [getPtr mesh, getPtr texture, getPtr transform, getPtr modulate]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawMultimesh*(self: CanvasItem; multimesh: gdref MultiMesh; texture: gdref Texture2D): void =
  expandMethodBind(className CanvasItem, "draw_multimesh", 937992368)
  var `?param` = [getPtr multimesh, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawSetTransform*(self: CanvasItem; position: Vector2; rotation: Float = 0.0; scale: Vector2 = vector2(1, 1)): void =
  expandMethodBind(className CanvasItem, "draw_set_transform", 288975085)
  var `?param` = [getPtr position, getPtr rotation, getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawSetTransformMatrix*(self: CanvasItem; xform: Transform2D): void =
  expandMethodBind(className CanvasItem, "draw_set_transform_matrix", 2761652528)
  var `?param` = [getPtr xform]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawAnimationSlice*(self: CanvasItem; animationLength: float64; sliceBegin: float64; sliceEnd: float64; offset: float64 = 0.0): void =
  expandMethodBind(className CanvasItem, "draw_animation_slice", 3112831842)
  var `?param` = [getPtr animationLength, getPtr sliceBegin, getPtr sliceEnd, getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawEndAnimation*(self: CanvasItem): void =
  expandMethodBind(className CanvasItem, "draw_end_animation", 3218959716)
  methodbind.ptrcall(self, nil)

proc getTransform*(self: CanvasItem): Transform2D =
  expandMethodBind(className CanvasItem, "get_transform", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform2D)

proc getGlobalTransform*(self: CanvasItem): Transform2D =
  expandMethodBind(className CanvasItem, "get_global_transform", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform2D)

proc getGlobalTransformWithCanvas*(self: CanvasItem): Transform2D =
  expandMethodBind(className CanvasItem, "get_global_transform_with_canvas", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform2D)

proc getViewportTransform*(self: CanvasItem): Transform2D =
  expandMethodBind(className CanvasItem, "get_viewport_transform", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform2D)

proc getViewportRect*(self: CanvasItem): Rect2 =
  expandMethodBind(className CanvasItem, "get_viewport_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2)

proc getCanvasTransform*(self: CanvasItem): Transform2D =
  expandMethodBind(className CanvasItem, "get_canvas_transform", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform2D)

proc getScreenTransform*(self: CanvasItem): Transform2D =
  expandMethodBind(className CanvasItem, "get_screen_transform", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform2D)

proc getLocalMousePosition*(self: CanvasItem): Vector2 =
  expandMethodBind(className CanvasItem, "get_local_mouse_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getGlobalMousePosition*(self: CanvasItem): Vector2 =
  expandMethodBind(className CanvasItem, "get_global_mouse_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getCanvas*(self: CanvasItem): Rid =
  expandMethodBind(className CanvasItem, "get_canvas", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getCanvasLayerNode*(self: CanvasItem): CanvasLayer =
  expandMethodBind(className CanvasItem, "get_canvas_layer_node", 2602762519)
  var ret: encoded CanvasLayer
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CanvasLayer)

proc getWorld2D*(self: CanvasItem): gdref World2D =
  expandMethodBind(className CanvasItem, "get_world_2d", 2339128592)
  var ret: encoded gdref World2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref World2D)

proc setMaterial*(self: CanvasItem; material: gdref Material): void =
  expandMethodBind(className CanvasItem, "set_material", 2757459619)
  var `?param` = [getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaterial*(self: CanvasItem): gdref Material =
  expandMethodBind(className CanvasItem, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Material)

proc setUseParentMaterial*(self: CanvasItem; enable: bool): void =
  expandMethodBind(className CanvasItem, "set_use_parent_material", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUseParentMaterial*(self: CanvasItem): bool =
  expandMethodBind(className CanvasItem, "get_use_parent_material", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setNotifyLocalTransform*(self: CanvasItem; enable: bool): void =
  expandMethodBind(className CanvasItem, "set_notify_local_transform", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isLocalTransformNotificationEnabled*(self: CanvasItem): bool =
  expandMethodBind(className CanvasItem, "is_local_transform_notification_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setNotifyTransform*(self: CanvasItem; enable: bool): void =
  expandMethodBind(className CanvasItem, "set_notify_transform", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isTransformNotificationEnabled*(self: CanvasItem): bool =
  expandMethodBind(className CanvasItem, "is_transform_notification_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc forceUpdateTransform*(self: CanvasItem): void =
  expandMethodBind(className CanvasItem, "force_update_transform", 3218959716)
  methodbind.ptrcall(self, nil)

proc makeCanvasPositionLocal*(self: CanvasItem; screenPoint: Vector2): Vector2 =
  expandMethodBind(className CanvasItem, "make_canvas_position_local", 2656412154)
  var `?param` = [getPtr screenPoint]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc makeInputLocal*(self: CanvasItem; event: gdref InputEvent): gdref InputEvent =
  expandMethodBind(className CanvasItem, "make_input_local", 811130057)
  var `?param` = [getPtr event]
  var ret: encoded gdref InputEvent
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref InputEvent)

proc setVisibilityLayer*(self: CanvasItem; layer: uint32): void =
  expandMethodBind(className CanvasItem, "set_visibility_layer", 1286410249)
  var `?param` = [getPtr layer]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVisibilityLayer*(self: CanvasItem): uint32 =
  expandMethodBind(className CanvasItem, "get_visibility_layer", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setVisibilityLayerBit*(self: CanvasItem; layer: uint32; enabled: bool): void =
  expandMethodBind(className CanvasItem, "set_visibility_layer_bit", 300928843)
  var `?param` = [getPtr layer, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVisibilityLayerBit*(self: CanvasItem; layer: uint32): bool =
  expandMethodBind(className CanvasItem, "get_visibility_layer_bit", 1116898809)
  var `?param` = [getPtr layer]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setTextureFilter*(self: CanvasItem; mode: CanvasItem_TextureFilter): void =
  expandMethodBind(className CanvasItem, "set_texture_filter", 1037999706)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureFilter*(self: CanvasItem): CanvasItem_TextureFilter =
  expandMethodBind(className CanvasItem, "get_texture_filter", 121960042)
  var ret: encoded CanvasItem_TextureFilter
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CanvasItem_TextureFilter)

proc setTextureRepeat*(self: CanvasItem; mode: CanvasItem_TextureRepeat): void =
  expandMethodBind(className CanvasItem, "set_texture_repeat", 1716472974)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureRepeat*(self: CanvasItem): CanvasItem_TextureRepeat =
  expandMethodBind(className CanvasItem, "get_texture_repeat", 2667158319)
  var ret: encoded CanvasItem_TextureRepeat
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CanvasItem_TextureRepeat)

proc setClipChildrenMode*(self: CanvasItem; mode: CanvasItem_ClipChildrenMode): void =
  expandMethodBind(className CanvasItem, "set_clip_children_mode", 1319393776)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getClipChildrenMode*(self: CanvasItem): CanvasItem_ClipChildrenMode =
  expandMethodBind(className CanvasItem, "get_clip_children_mode", 3581808349)
  var ret: encoded CanvasItem_ClipChildrenMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CanvasItem_ClipChildrenMode)

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

const CanvasItem_vmap =
  Node.vmap.concat toTable {
    "draw" : "_draw",
    }
template vmap*(_: typedesc[CanvasItem]): Table[string, string] = CanvasItem_vmap

proc draw*(self: CanvasItem): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("draw")
  self.emitSignal(signalname)

proc visibilityChanged*(self: CanvasItem): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("visibility_changed")
  self.emitSignal(signalname)

proc hidden*(self: CanvasItem): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("hidden")
  self.emitSignal(signalname)

proc itemRectChanged*(self: CanvasItem): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("item_rect_changed")
  self.emitSignal(signalname)