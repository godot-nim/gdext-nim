{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(Viewport, Node)

proc setWorld2D*(self: Viewport; world2D: gdref World2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_world_2d", 2736080068)
  methodbind.ptrcall(self, [getPtr world2D], void)

proc getWorld2D*(self: Viewport): gdref World2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_world_2d", 2339128592)
  methodbind.ptrcall(self, [], gdref World2D)

proc findWorld2D*(self: Viewport): gdref World2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "find_world_2d", 2339128592)
  methodbind.ptrcall(self, [], gdref World2D)

proc setCanvasTransform*(self: Viewport; xform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_canvas_transform", 2761652528)
  methodbind.ptrcall(self, [getPtr xform], void)

proc getCanvasTransform*(self: Viewport): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_canvas_transform", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc setGlobalCanvasTransform*(self: Viewport; xform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_global_canvas_transform", 2761652528)
  methodbind.ptrcall(self, [getPtr xform], void)

proc getGlobalCanvasTransform*(self: Viewport): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_global_canvas_transform", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc getStretchTransform*(self: Viewport): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_stretch_transform", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc getFinalTransform*(self: Viewport): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_final_transform", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc getScreenTransform*(self: Viewport): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_screen_transform", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc getVisibleRect*(self: Viewport): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_visible_rect", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

proc setTransparentBackground*(self: Viewport; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_transparent_background", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc hasTransparentBackground*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "has_transparent_background", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUseHdr2D*(self: Viewport; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_use_hdr_2d", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingHdr2D*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "is_using_hdr_2d", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMsaa2D*(self: Viewport; msaa: Viewport_MSAA): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_msaa_2d", 3330258708)
  methodbind.ptrcall(self, [getPtr msaa], void)

proc getMsaa2D*(self: Viewport): Viewport_MSAA =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_msaa_2d", 2542055527)
  methodbind.ptrcall(self, [], Viewport_MSAA)

proc setMsaa3D*(self: Viewport; msaa: Viewport_MSAA): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_msaa_3d", 3330258708)
  methodbind.ptrcall(self, [getPtr msaa], void)

proc getMsaa3D*(self: Viewport): Viewport_MSAA =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_msaa_3d", 2542055527)
  methodbind.ptrcall(self, [], Viewport_MSAA)

proc setScreenSpaceAa*(self: Viewport; screenSpaceAa: Viewport_ScreenSpaceAA): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_screen_space_aa", 3544169389)
  methodbind.ptrcall(self, [getPtr screenSpaceAa], void)

proc getScreenSpaceAa*(self: Viewport): Viewport_ScreenSpaceAA =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_screen_space_aa", 1390814124)
  methodbind.ptrcall(self, [], Viewport_ScreenSpaceAA)

proc setUseTaa*(self: Viewport; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_use_taa", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingTaa*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "is_using_taa", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUseDebanding*(self: Viewport; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_use_debanding", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingDebanding*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "is_using_debanding", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUseOcclusionCulling*(self: Viewport; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_use_occlusion_culling", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingOcclusionCulling*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "is_using_occlusion_culling", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDebugDraw*(self: Viewport; debugDraw: Viewport_DebugDraw): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_debug_draw", 1970246205)
  methodbind.ptrcall(self, [getPtr debugDraw], void)

proc getDebugDraw*(self: Viewport): Viewport_DebugDraw =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_debug_draw", 579191299)
  methodbind.ptrcall(self, [], Viewport_DebugDraw)

proc setUseOversampling*(self: Viewport; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_use_oversampling", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingOversampling*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "is_using_oversampling", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setOversamplingOverride*(self: Viewport; oversampling: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_oversampling_override", 373806689)
  methodbind.ptrcall(self, [getPtr oversampling], void)

proc getOversamplingOverride*(self: Viewport): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_oversampling_override", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getOversampling*(self: Viewport): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_oversampling", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getRenderInfo*(self: Viewport; `type`: Viewport_RenderInfoType; info: Viewport_RenderInfo): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_render_info", 481977019)
  methodbind.ptrcall(self, [getPtr `type`, getPtr info], int32)

proc getTexture*(self: Viewport): gdref ViewportTexture =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_texture", 1746695840)
  methodbind.ptrcall(self, [], gdref ViewportTexture)

proc setPhysicsObjectPicking*(self: Viewport; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_physics_object_picking", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getPhysicsObjectPicking*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_physics_object_picking", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setPhysicsObjectPickingSort*(self: Viewport; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_physics_object_picking_sort", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getPhysicsObjectPickingSort*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_physics_object_picking_sort", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setPhysicsObjectPickingFirstOnly*(self: Viewport; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_physics_object_picking_first_only", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getPhysicsObjectPickingFirstOnly*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_physics_object_picking_first_only", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc getViewportRid*(self: Viewport): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_viewport_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc pushTextInput*(self: Viewport; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "push_text_input", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc pushInput*(self: Viewport; event: gdref InputEvent; inLocalCoords: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "push_input", 3644664830)
  methodbind.ptrcall(self, [getPtr event, getPtr inLocalCoords], void)

proc pushUnhandledInput*(self: Viewport; event: gdref InputEvent; inLocalCoords: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "push_unhandled_input", 3644664830)
  methodbind.ptrcall(self, [getPtr event, getPtr inLocalCoords], void)

proc notifyMouseEntered*(self: Viewport): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "notify_mouse_entered", 3218959716)
  methodbind.ptrcall(self, [], void)

proc notifyMouseExited*(self: Viewport): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "notify_mouse_exited", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getMousePosition*(self: Viewport): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_mouse_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc warpMouse*(self: Viewport; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "warp_mouse", 743155724)
  methodbind.ptrcall(self, [getPtr position], void)

proc updateMouseCursorState*(self: Viewport): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "update_mouse_cursor_state", 3218959716)
  methodbind.ptrcall(self, [], void)

proc guiCancelDrag*(self: Viewport): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "gui_cancel_drag", 3218959716)
  methodbind.ptrcall(self, [], void)

proc guiGetDragData*(self: Viewport): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "gui_get_drag_data", 1214101251)
  methodbind.ptrcall(self, [], Variant)

proc guiGetDragDescription*(self: Viewport): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "gui_get_drag_description", 201670096)
  methodbind.ptrcall(self, [], String)

proc guiSetDragDescription*(self: Viewport; description: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "gui_set_drag_description", 83702148)
  methodbind.ptrcall(self, [getPtr description], void)

proc guiIsDragging*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "gui_is_dragging", 36873697)
  methodbind.ptrcall(self, [], bool)

proc guiIsDragSuccessful*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "gui_is_drag_successful", 36873697)
  methodbind.ptrcall(self, [], bool)

proc guiReleaseFocus*(self: Viewport): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "gui_release_focus", 3218959716)
  methodbind.ptrcall(self, [], void)

proc guiGetFocusOwner*(self: Viewport): Control =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "gui_get_focus_owner", 2783021301)
  methodbind.ptrcall(self, [], Control)

proc guiGetHoveredControl*(self: Viewport): Control =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "gui_get_hovered_control", 2783021301)
  methodbind.ptrcall(self, [], Control)

proc setDisableInput*(self: Viewport; disable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_disable_input", 2586408642)
  methodbind.ptrcall(self, [getPtr disable], void)

proc isInputDisabled*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "is_input_disabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPositionalShadowAtlasSize*(self: Viewport; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_positional_shadow_atlas_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size], void)

proc getPositionalShadowAtlasSize*(self: Viewport): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_positional_shadow_atlas_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPositionalShadowAtlas16Bits*(self: Viewport; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_positional_shadow_atlas_16_bits", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getPositionalShadowAtlas16Bits*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_positional_shadow_atlas_16_bits", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSnapControlsToPixels*(self: Viewport; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_snap_controls_to_pixels", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isSnapControlsToPixelsEnabled*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "is_snap_controls_to_pixels_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSnap2DTransformsToPixel*(self: Viewport; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_snap_2d_transforms_to_pixel", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isSnap2DTransformsToPixelEnabled*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "is_snap_2d_transforms_to_pixel_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSnap2DVerticesToPixel*(self: Viewport; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_snap_2d_vertices_to_pixel", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isSnap2DVerticesToPixelEnabled*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "is_snap_2d_vertices_to_pixel_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPositionalShadowAtlasQuadrantSubdiv*(self: Viewport; quadrant: int32; subdiv: Viewport_PositionalShadowAtlasQuadrantSubdiv): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_positional_shadow_atlas_quadrant_subdiv", 2596956071)
  methodbind.ptrcall(self, [getPtr quadrant, getPtr subdiv], void)

proc getPositionalShadowAtlasQuadrantSubdiv*(self: Viewport; quadrant: int32): Viewport_PositionalShadowAtlasQuadrantSubdiv =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_positional_shadow_atlas_quadrant_subdiv", 2676778355)
  methodbind.ptrcall(self, [getPtr quadrant], Viewport_PositionalShadowAtlasQuadrantSubdiv)

proc setInputAsHandled*(self: Viewport): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_input_as_handled", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isInputHandled*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "is_input_handled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHandleInputLocally*(self: Viewport; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_handle_input_locally", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isHandlingInputLocally*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "is_handling_input_locally", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDefaultCanvasItemTextureFilter*(self: Viewport; mode: Viewport_DefaultCanvasItemTextureFilter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_default_canvas_item_texture_filter", 2815160100)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getDefaultCanvasItemTextureFilter*(self: Viewport): Viewport_DefaultCanvasItemTextureFilter =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_default_canvas_item_texture_filter", 896601198)
  methodbind.ptrcall(self, [], Viewport_DefaultCanvasItemTextureFilter)

proc setEmbeddingSubwindows*(self: Viewport; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_embedding_subwindows", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isEmbeddingSubwindows*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "is_embedding_subwindows", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getEmbeddedSubwindows*(self: Viewport): TypedArray[Window] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_embedded_subwindows", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Window])

proc setCanvasCullMask*(self: Viewport; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_canvas_cull_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getCanvasCullMask*(self: Viewport): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_canvas_cull_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setCanvasCullMaskBit*(self: Viewport; layer: uint32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_canvas_cull_mask_bit", 300928843)
  methodbind.ptrcall(self, [getPtr layer, getPtr enable], void)

proc getCanvasCullMaskBit*(self: Viewport; layer: uint32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_canvas_cull_mask_bit", 1116898809)
  methodbind.ptrcall(self, [getPtr layer], bool)

proc setDefaultCanvasItemTextureRepeat*(self: Viewport; mode: Viewport_DefaultCanvasItemTextureRepeat): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_default_canvas_item_texture_repeat", 1658513413)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getDefaultCanvasItemTextureRepeat*(self: Viewport): Viewport_DefaultCanvasItemTextureRepeat =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_default_canvas_item_texture_repeat", 4049774160)
  methodbind.ptrcall(self, [], Viewport_DefaultCanvasItemTextureRepeat)

proc setSdfOversize*(self: Viewport; oversize: Viewport_SDFOversize): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_sdf_oversize", 2574159017)
  methodbind.ptrcall(self, [getPtr oversize], void)

proc getSdfOversize*(self: Viewport): Viewport_SDFOversize =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_sdf_oversize", 2631427510)
  methodbind.ptrcall(self, [], Viewport_SDFOversize)

proc setSdfScale*(self: Viewport; scale: Viewport_SDFScale): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_sdf_scale", 1402773951)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getSdfScale*(self: Viewport): Viewport_SDFScale =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_sdf_scale", 3162688184)
  methodbind.ptrcall(self, [], Viewport_SDFScale)

proc setMeshLodThreshold*(self: Viewport; pixels: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_mesh_lod_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr pixels], void)

proc getMeshLodThreshold*(self: Viewport): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_mesh_lod_threshold", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAsAudioListener2D*(self: Viewport; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_as_audio_listener_2d", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isAudioListener2D*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "is_audio_listener_2d", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getAudioListener2D*(self: Viewport): AudioListener2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_audio_listener_2d", 1840977180)
  methodbind.ptrcall(self, [], AudioListener2D)

proc getCamera2D*(self: Viewport): Camera2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_camera_2d", 3551466917)
  methodbind.ptrcall(self, [], Camera2D)

proc setWorld3D*(self: Viewport; world3D: gdref World3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_world_3d", 1400875337)
  methodbind.ptrcall(self, [getPtr world3D], void)

proc getWorld3D*(self: Viewport): gdref World3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_world_3d", 317588385)
  methodbind.ptrcall(self, [], gdref World3D)

proc findWorld3D*(self: Viewport): gdref World3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "find_world_3d", 317588385)
  methodbind.ptrcall(self, [], gdref World3D)

proc setUseOwnWorld3D*(self: Viewport; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_use_own_world_3d", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingOwnWorld3D*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "is_using_own_world_3d", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getAudioListener3D*(self: Viewport): AudioListener3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_audio_listener_3d", 3472246991)
  methodbind.ptrcall(self, [], AudioListener3D)

proc getCamera3D*(self: Viewport): Camera3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_camera_3d", 2285090890)
  methodbind.ptrcall(self, [], Camera3D)

proc setAsAudioListener3D*(self: Viewport; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_as_audio_listener_3d", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isAudioListener3D*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "is_audio_listener_3d", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDisable3D*(self: Viewport; disable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_disable_3d", 2586408642)
  methodbind.ptrcall(self, [getPtr disable], void)

proc is3DDisabled*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "is_3d_disabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUseXr*(self: Viewport; use: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_use_xr", 2586408642)
  methodbind.ptrcall(self, [getPtr use], void)

proc isUsingXr*(self: Viewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "is_using_xr", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setScaling3DMode*(self: Viewport; scaling3DMode: Viewport_Scaling3DMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_scaling_3d_mode", 1531597597)
  methodbind.ptrcall(self, [getPtr scaling3DMode], void)

proc getScaling3DMode*(self: Viewport): Viewport_Scaling3DMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_scaling_3d_mode", 2597660574)
  methodbind.ptrcall(self, [], Viewport_Scaling3DMode)

proc setScaling3DScale*(self: Viewport; scale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_scaling_3d_scale", 373806689)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getScaling3DScale*(self: Viewport): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_scaling_3d_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFsrSharpness*(self: Viewport; fsrSharpness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_fsr_sharpness", 373806689)
  methodbind.ptrcall(self, [getPtr fsrSharpness], void)

proc getFsrSharpness*(self: Viewport): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_fsr_sharpness", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTextureMipmapBias*(self: Viewport; textureMipmapBias: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_texture_mipmap_bias", 373806689)
  methodbind.ptrcall(self, [getPtr textureMipmapBias], void)

proc getTextureMipmapBias*(self: Viewport): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_texture_mipmap_bias", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAnisotropicFilteringLevel*(self: Viewport; anisotropicFilteringLevel: Viewport_AnisotropicFiltering): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_anisotropic_filtering_level", 3445583046)
  methodbind.ptrcall(self, [getPtr anisotropicFilteringLevel], void)

proc getAnisotropicFilteringLevel*(self: Viewport): Viewport_AnisotropicFiltering =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_anisotropic_filtering_level", 3991528932)
  methodbind.ptrcall(self, [], Viewport_AnisotropicFiltering)

proc setVrsMode*(self: Viewport; mode: Viewport_VRSMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_vrs_mode", 2749867817)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getVrsMode*(self: Viewport): Viewport_VRSMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_vrs_mode", 349660525)
  methodbind.ptrcall(self, [], Viewport_VRSMode)

proc setVrsUpdateMode*(self: Viewport; mode: Viewport_VRSUpdateMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_vrs_update_mode", 3182412319)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getVrsUpdateMode*(self: Viewport): Viewport_VRSUpdateMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_vrs_update_mode", 2255951583)
  methodbind.ptrcall(self, [], Viewport_VRSUpdateMode)

proc setVrsTexture*(self: Viewport; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "set_vrs_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getVrsTexture*(self: Viewport): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Viewport, "get_vrs_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

template disable3D*(self: Viewport): untyped = self.is3DDisabled()
template `disable3D=`*(self: Viewport; value) = self.setDisable3D(value)

template useXr*(self: Viewport): untyped = self.isUsingXr()
template `useXr=`*(self: Viewport; value) = self.setUseXr(value)

template ownWorld3D*(self: Viewport): untyped = self.isUsingOwnWorld3D()
template `ownWorld3D=`*(self: Viewport; value) = self.setUseOwnWorld3D(value)

template world3D*(self: Viewport): untyped = self.getWorld3D()
template `world3D=`*(self: Viewport; value) = self.setWorld3D(value)

template world2D*(self: Viewport): untyped = self.getWorld2D()
template `world2D=`*(self: Viewport; value) = self.setWorld2D(value)

template transparentBg*(self: Viewport): untyped = self.hasTransparentBackground()
template `transparentBg=`*(self: Viewport; value) = self.setTransparentBackground(value)

template handleInputLocally*(self: Viewport): untyped = self.isHandlingInputLocally()
template `handleInputLocally=`*(self: Viewport; value) = self.setHandleInputLocally(value)

template snap2DTransformsToPixel*(self: Viewport): untyped = self.isSnap2DTransformsToPixelEnabled()
template `snap2DTransformsToPixel=`*(self: Viewport; value) = self.setSnap2DTransformsToPixel(value)

template snap2DVerticesToPixel*(self: Viewport): untyped = self.isSnap2DVerticesToPixelEnabled()
template `snap2DVerticesToPixel=`*(self: Viewport; value) = self.setSnap2DVerticesToPixel(value)

template msaa2D*(self: Viewport): untyped = self.getMsaa2D()
template `msaa2D=`*(self: Viewport; value) = self.setMsaa2D(value)

template msaa3D*(self: Viewport): untyped = self.getMsaa3D()
template `msaa3D=`*(self: Viewport; value) = self.setMsaa3D(value)

template screenSpaceAa*(self: Viewport): untyped = self.getScreenSpaceAa()
template `screenSpaceAa=`*(self: Viewport; value) = self.setScreenSpaceAa(value)

template useTaa*(self: Viewport): untyped = self.isUsingTaa()
template `useTaa=`*(self: Viewport; value) = self.setUseTaa(value)

template useDebanding*(self: Viewport): untyped = self.isUsingDebanding()
template `useDebanding=`*(self: Viewport; value) = self.setUseDebanding(value)

template useOcclusionCulling*(self: Viewport): untyped = self.isUsingOcclusionCulling()
template `useOcclusionCulling=`*(self: Viewport; value) = self.setUseOcclusionCulling(value)

template meshLodThreshold*(self: Viewport): untyped = self.getMeshLodThreshold()
template `meshLodThreshold=`*(self: Viewport; value) = self.setMeshLodThreshold(value)

template debugDraw*(self: Viewport): untyped = self.getDebugDraw()
template `debugDraw=`*(self: Viewport; value) = self.setDebugDraw(value)

template useHdr2D*(self: Viewport): untyped = self.isUsingHdr2D()
template `useHdr2D=`*(self: Viewport; value) = self.setUseHdr2D(value)

template scaling3DMode*(self: Viewport): untyped = self.getScaling3DMode()
template `scaling3DMode=`*(self: Viewport; value) = self.setScaling3DMode(value)

template scaling3DScale*(self: Viewport): untyped = self.getScaling3DScale()
template `scaling3DScale=`*(self: Viewport; value) = self.setScaling3DScale(value)

template textureMipmapBias*(self: Viewport): untyped = self.getTextureMipmapBias()
template `textureMipmapBias=`*(self: Viewport; value) = self.setTextureMipmapBias(value)

template anisotropicFilteringLevel*(self: Viewport): untyped = self.getAnisotropicFilteringLevel()
template `anisotropicFilteringLevel=`*(self: Viewport; value) = self.setAnisotropicFilteringLevel(value)

template fsrSharpness*(self: Viewport): untyped = self.getFsrSharpness()
template `fsrSharpness=`*(self: Viewport; value) = self.setFsrSharpness(value)

template vrsMode*(self: Viewport): untyped = self.getVrsMode()
template `vrsMode=`*(self: Viewport; value) = self.setVrsMode(value)

template vrsUpdateMode*(self: Viewport): untyped = self.getVrsUpdateMode()
template `vrsUpdateMode=`*(self: Viewport; value) = self.setVrsUpdateMode(value)

template vrsTexture*(self: Viewport): untyped = self.getVrsTexture()
template `vrsTexture=`*(self: Viewport; value) = self.setVrsTexture(value)

template canvasItemDefaultTextureFilter*(self: Viewport): untyped = self.getDefaultCanvasItemTextureFilter()
template `canvasItemDefaultTextureFilter=`*(self: Viewport; value) = self.setDefaultCanvasItemTextureFilter(value)

template canvasItemDefaultTextureRepeat*(self: Viewport): untyped = self.getDefaultCanvasItemTextureRepeat()
template `canvasItemDefaultTextureRepeat=`*(self: Viewport; value) = self.setDefaultCanvasItemTextureRepeat(value)

template audioListenerEnable2D*(self: Viewport): untyped = self.isAudioListener2D()
template `audioListenerEnable2D=`*(self: Viewport; value) = self.setAsAudioListener2D(value)

template audioListenerEnable3D*(self: Viewport): untyped = self.isAudioListener3D()
template `audioListenerEnable3D=`*(self: Viewport; value) = self.setAsAudioListener3D(value)

template physicsObjectPicking*(self: Viewport): untyped = self.getPhysicsObjectPicking()
template `physicsObjectPicking=`*(self: Viewport; value) = self.setPhysicsObjectPicking(value)

template physicsObjectPickingSort*(self: Viewport): untyped = self.getPhysicsObjectPickingSort()
template `physicsObjectPickingSort=`*(self: Viewport; value) = self.setPhysicsObjectPickingSort(value)

template physicsObjectPickingFirstOnly*(self: Viewport): untyped = self.getPhysicsObjectPickingFirstOnly()
template `physicsObjectPickingFirstOnly=`*(self: Viewport; value) = self.setPhysicsObjectPickingFirstOnly(value)

template guiDisableInput*(self: Viewport): untyped = self.isInputDisabled()
template `guiDisableInput=`*(self: Viewport; value) = self.setDisableInput(value)

template guiSnapControlsToPixels*(self: Viewport): untyped = self.isSnapControlsToPixelsEnabled()
template `guiSnapControlsToPixels=`*(self: Viewport; value) = self.setSnapControlsToPixels(value)

template guiEmbedSubwindows*(self: Viewport): untyped = self.isEmbeddingSubwindows()
template `guiEmbedSubwindows=`*(self: Viewport; value) = self.setEmbeddingSubwindows(value)

template sdfOversize*(self: Viewport): untyped = self.getSdfOversize()
template `sdfOversize=`*(self: Viewport; value) = self.setSdfOversize(value)

template sdfScale*(self: Viewport): untyped = self.getSdfScale()
template `sdfScale=`*(self: Viewport; value) = self.setSdfScale(value)

template positionalShadowAtlasSize*(self: Viewport): untyped = self.getPositionalShadowAtlasSize()
template `positionalShadowAtlasSize=`*(self: Viewport; value) = self.setPositionalShadowAtlasSize(value)

template positionalShadowAtlas16Bits*(self: Viewport): untyped = self.getPositionalShadowAtlas16Bits()
template `positionalShadowAtlas16Bits=`*(self: Viewport; value) = self.setPositionalShadowAtlas16Bits(value)

template positionalShadowAtlasQuad0*(self: Viewport): untyped = self.getPositionalShadowAtlasQuadrantSubdiv(int32(0))
template `positionalShadowAtlasQuad0=`*(self: Viewport; value) = self.setPositionalShadowAtlasQuadrantSubdiv(int32(0), value)

template positionalShadowAtlasQuad1*(self: Viewport): untyped = self.getPositionalShadowAtlasQuadrantSubdiv(int32(1))
template `positionalShadowAtlasQuad1=`*(self: Viewport; value) = self.setPositionalShadowAtlasQuadrantSubdiv(int32(1), value)

template positionalShadowAtlasQuad2*(self: Viewport): untyped = self.getPositionalShadowAtlasQuadrantSubdiv(int32(2))
template `positionalShadowAtlasQuad2=`*(self: Viewport; value) = self.setPositionalShadowAtlasQuadrantSubdiv(int32(2), value)

template positionalShadowAtlasQuad3*(self: Viewport): untyped = self.getPositionalShadowAtlasQuadrantSubdiv(int32(3))
template `positionalShadowAtlasQuad3=`*(self: Viewport; value) = self.setPositionalShadowAtlasQuadrantSubdiv(int32(3), value)

template canvasTransform*(self: Viewport): untyped = self.getCanvasTransform()
template `canvasTransform=`*(self: Viewport; value) = self.setCanvasTransform(value)

template globalCanvasTransform*(self: Viewport): untyped = self.getGlobalCanvasTransform()
template `globalCanvasTransform=`*(self: Viewport; value) = self.setGlobalCanvasTransform(value)

template canvasCullMask*(self: Viewport): untyped = self.getCanvasCullMask()
template `canvasCullMask=`*(self: Viewport; value) = self.setCanvasCullMask(value)

template oversampling*(self: Viewport): untyped = self.isUsingOversampling()
template `oversampling=`*(self: Viewport; value) = self.setUseOversampling(value)

template oversamplingOverride*(self: Viewport): untyped = self.getOversamplingOverride()
template `oversamplingOverride=`*(self: Viewport; value) = self.setOversamplingOverride(value)
