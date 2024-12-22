{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

proc setWorld2D*(self: Viewport; world2D: gdref World2D): void =
  expandMethodBind(className Viewport, "set_world_2d", 2736080068)
  var `?param` = [getPtr world2D]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWorld2D*(self: Viewport): gdref World2D =
  expandMethodBind(className Viewport, "get_world_2d", 2339128592)
  var ret: encoded gdref World2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref World2D)

proc findWorld2D*(self: Viewport): gdref World2D =
  expandMethodBind(className Viewport, "find_world_2d", 2339128592)
  var ret: encoded gdref World2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref World2D)

proc setCanvasTransform*(self: Viewport; xform: Transform2D): void =
  expandMethodBind(className Viewport, "set_canvas_transform", 2761652528)
  var `?param` = [getPtr xform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCanvasTransform*(self: Viewport): Transform2D =
  expandMethodBind(className Viewport, "get_canvas_transform", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform2D)

proc setGlobalCanvasTransform*(self: Viewport; xform: Transform2D): void =
  expandMethodBind(className Viewport, "set_global_canvas_transform", 2761652528)
  var `?param` = [getPtr xform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlobalCanvasTransform*(self: Viewport): Transform2D =
  expandMethodBind(className Viewport, "get_global_canvas_transform", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform2D)

proc getFinalTransform*(self: Viewport): Transform2D =
  expandMethodBind(className Viewport, "get_final_transform", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform2D)

proc getScreenTransform*(self: Viewport): Transform2D =
  expandMethodBind(className Viewport, "get_screen_transform", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform2D)

proc getVisibleRect*(self: Viewport): Rect2 =
  expandMethodBind(className Viewport, "get_visible_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2)

proc setTransparentBackground*(self: Viewport; enable: bool): void =
  expandMethodBind(className Viewport, "set_transparent_background", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasTransparentBackground*(self: Viewport): bool =
  expandMethodBind(className Viewport, "has_transparent_background", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUseHdr2D*(self: Viewport; enable: bool): void =
  expandMethodBind(className Viewport, "set_use_hdr_2d", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingHdr2D*(self: Viewport): bool =
  expandMethodBind(className Viewport, "is_using_hdr_2d", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMsaa2D*(self: Viewport; msaa: Viewport_MSAA): void =
  expandMethodBind(className Viewport, "set_msaa_2d", 3330258708)
  var `?param` = [getPtr msaa]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMsaa2D*(self: Viewport): Viewport_MSAA =
  expandMethodBind(className Viewport, "get_msaa_2d", 2542055527)
  var ret: encoded Viewport_MSAA
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Viewport_MSAA)

proc setMsaa3D*(self: Viewport; msaa: Viewport_MSAA): void =
  expandMethodBind(className Viewport, "set_msaa_3d", 3330258708)
  var `?param` = [getPtr msaa]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMsaa3D*(self: Viewport): Viewport_MSAA =
  expandMethodBind(className Viewport, "get_msaa_3d", 2542055527)
  var ret: encoded Viewport_MSAA
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Viewport_MSAA)

proc setScreenSpaceAa*(self: Viewport; screenSpaceAa: Viewport_ScreenSpaceAA): void =
  expandMethodBind(className Viewport, "set_screen_space_aa", 3544169389)
  var `?param` = [getPtr screenSpaceAa]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScreenSpaceAa*(self: Viewport): Viewport_ScreenSpaceAA =
  expandMethodBind(className Viewport, "get_screen_space_aa", 1390814124)
  var ret: encoded Viewport_ScreenSpaceAA
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Viewport_ScreenSpaceAA)

proc setUseTaa*(self: Viewport; enable: bool): void =
  expandMethodBind(className Viewport, "set_use_taa", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingTaa*(self: Viewport): bool =
  expandMethodBind(className Viewport, "is_using_taa", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUseDebanding*(self: Viewport; enable: bool): void =
  expandMethodBind(className Viewport, "set_use_debanding", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingDebanding*(self: Viewport): bool =
  expandMethodBind(className Viewport, "is_using_debanding", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUseOcclusionCulling*(self: Viewport; enable: bool): void =
  expandMethodBind(className Viewport, "set_use_occlusion_culling", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingOcclusionCulling*(self: Viewport): bool =
  expandMethodBind(className Viewport, "is_using_occlusion_culling", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDebugDraw*(self: Viewport; debugDraw: Viewport_DebugDraw): void =
  expandMethodBind(className Viewport, "set_debug_draw", 1970246205)
  var `?param` = [getPtr debugDraw]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDebugDraw*(self: Viewport): Viewport_DebugDraw =
  expandMethodBind(className Viewport, "get_debug_draw", 579191299)
  var ret: encoded Viewport_DebugDraw
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Viewport_DebugDraw)

proc getRenderInfo*(self: Viewport; `type`: Viewport_RenderInfoType; info: Viewport_RenderInfo): int32 =
  expandMethodBind(className Viewport, "get_render_info", 481977019)
  var `?param` = [getPtr `type`, getPtr info]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getTexture*(self: Viewport): gdref ViewportTexture =
  expandMethodBind(className Viewport, "get_texture", 1746695840)
  var ret: encoded gdref ViewportTexture
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref ViewportTexture)

proc setPhysicsObjectPicking*(self: Viewport; enable: bool): void =
  expandMethodBind(className Viewport, "set_physics_object_picking", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicsObjectPicking*(self: Viewport): bool =
  expandMethodBind(className Viewport, "get_physics_object_picking", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPhysicsObjectPickingSort*(self: Viewport; enable: bool): void =
  expandMethodBind(className Viewport, "set_physics_object_picking_sort", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicsObjectPickingSort*(self: Viewport): bool =
  expandMethodBind(className Viewport, "get_physics_object_picking_sort", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPhysicsObjectPickingFirstOnly*(self: Viewport; enable: bool): void =
  expandMethodBind(className Viewport, "set_physics_object_picking_first_only", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicsObjectPickingFirstOnly*(self: Viewport): bool =
  expandMethodBind(className Viewport, "get_physics_object_picking_first_only", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getViewportRid*(self: Viewport): RID =
  expandMethodBind(className Viewport, "get_viewport_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

proc pushTextInput*(self: Viewport; text: String): void =
  expandMethodBind(className Viewport, "push_text_input", 83702148)
  var `?param` = [getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushInput*(self: Viewport; event: gdref InputEvent; inLocalCoords: bool = false): void =
  expandMethodBind(className Viewport, "push_input", 3644664830)
  var `?param` = [getPtr event, getPtr inLocalCoords]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushUnhandledInput*(self: Viewport; event: gdref InputEvent; inLocalCoords: bool = false): void =
  expandMethodBind(className Viewport, "push_unhandled_input", 3644664830)
  var `?param` = [getPtr event, getPtr inLocalCoords]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMousePosition*(self: Viewport): Vector2 =
  expandMethodBind(className Viewport, "get_mouse_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc warpMouse*(self: Viewport; position: Vector2): void =
  expandMethodBind(className Viewport, "warp_mouse", 743155724)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc updateMouseCursorState*(self: Viewport): void =
  expandMethodBind(className Viewport, "update_mouse_cursor_state", 3218959716)
  methodbind.ptrcall(self, nil)

proc guiGetDragData*(self: Viewport): Variant =
  expandMethodBind(className Viewport, "gui_get_drag_data", 1214101251)
  var ret: encoded Variant
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Variant)

proc guiIsDragging*(self: Viewport): bool =
  expandMethodBind(className Viewport, "gui_is_dragging", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc guiIsDragSuccessful*(self: Viewport): bool =
  expandMethodBind(className Viewport, "gui_is_drag_successful", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc guiReleaseFocus*(self: Viewport): void =
  expandMethodBind(className Viewport, "gui_release_focus", 3218959716)
  methodbind.ptrcall(self, nil)

proc guiGetFocusOwner*(self: Viewport): Control =
  expandMethodBind(className Viewport, "gui_get_focus_owner", 2783021301)
  var ret: encoded Control
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control)

proc guiGetHoveredControl*(self: Viewport): Control =
  expandMethodBind(className Viewport, "gui_get_hovered_control", 2783021301)
  var ret: encoded Control
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control)

proc setDisableInput*(self: Viewport; disable: bool): void =
  expandMethodBind(className Viewport, "set_disable_input", 2586408642)
  var `?param` = [getPtr disable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isInputDisabled*(self: Viewport): bool =
  expandMethodBind(className Viewport, "is_input_disabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPositionalShadowAtlasSize*(self: Viewport; size: int32): void =
  expandMethodBind(className Viewport, "set_positional_shadow_atlas_size", 1286410249)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPositionalShadowAtlasSize*(self: Viewport): int32 =
  expandMethodBind(className Viewport, "get_positional_shadow_atlas_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setPositionalShadowAtlas16Bits*(self: Viewport; enable: bool): void =
  expandMethodBind(className Viewport, "set_positional_shadow_atlas_16_bits", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPositionalShadowAtlas16Bits*(self: Viewport): bool =
  expandMethodBind(className Viewport, "get_positional_shadow_atlas_16_bits", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSnapControlsToPixels*(self: Viewport; enabled: bool): void =
  expandMethodBind(className Viewport, "set_snap_controls_to_pixels", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSnapControlsToPixelsEnabled*(self: Viewport): bool =
  expandMethodBind(className Viewport, "is_snap_controls_to_pixels_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSnap2DTransformsToPixel*(self: Viewport; enabled: bool): void =
  expandMethodBind(className Viewport, "set_snap_2d_transforms_to_pixel", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSnap2DTransformsToPixelEnabled*(self: Viewport): bool =
  expandMethodBind(className Viewport, "is_snap_2d_transforms_to_pixel_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSnap2DVerticesToPixel*(self: Viewport; enabled: bool): void =
  expandMethodBind(className Viewport, "set_snap_2d_vertices_to_pixel", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSnap2DVerticesToPixelEnabled*(self: Viewport): bool =
  expandMethodBind(className Viewport, "is_snap_2d_vertices_to_pixel_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPositionalShadowAtlasQuadrantSubdiv*(self: Viewport; quadrant: int32; subdiv: Viewport_PositionalShadowAtlasQuadrantSubdiv): void =
  expandMethodBind(className Viewport, "set_positional_shadow_atlas_quadrant_subdiv", 2596956071)
  var `?param` = [getPtr quadrant, getPtr subdiv]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPositionalShadowAtlasQuadrantSubdiv*(self: Viewport; quadrant: int32): Viewport_PositionalShadowAtlasQuadrantSubdiv =
  expandMethodBind(className Viewport, "get_positional_shadow_atlas_quadrant_subdiv", 2676778355)
  var `?param` = [getPtr quadrant]
  var ret: encoded Viewport_PositionalShadowAtlasQuadrantSubdiv
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Viewport_PositionalShadowAtlasQuadrantSubdiv)

proc setInputAsHandled*(self: Viewport): void =
  expandMethodBind(className Viewport, "set_input_as_handled", 3218959716)
  methodbind.ptrcall(self, nil)

proc isInputHandled*(self: Viewport): bool =
  expandMethodBind(className Viewport, "is_input_handled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setHandleInputLocally*(self: Viewport; enable: bool): void =
  expandMethodBind(className Viewport, "set_handle_input_locally", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isHandlingInputLocally*(self: Viewport): bool =
  expandMethodBind(className Viewport, "is_handling_input_locally", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDefaultCanvasItemTextureFilter*(self: Viewport; mode: Viewport_DefaultCanvasItemTextureFilter): void =
  expandMethodBind(className Viewport, "set_default_canvas_item_texture_filter", 2815160100)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDefaultCanvasItemTextureFilter*(self: Viewport): Viewport_DefaultCanvasItemTextureFilter =
  expandMethodBind(className Viewport, "get_default_canvas_item_texture_filter", 896601198)
  var ret: encoded Viewport_DefaultCanvasItemTextureFilter
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Viewport_DefaultCanvasItemTextureFilter)

proc setEmbeddingSubwindows*(self: Viewport; enable: bool): void =
  expandMethodBind(className Viewport, "set_embedding_subwindows", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEmbeddingSubwindows*(self: Viewport): bool =
  expandMethodBind(className Viewport, "is_embedding_subwindows", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getEmbeddedSubwindows*(self: Viewport): TypedArray[Window] =
  expandMethodBind(className Viewport, "get_embedded_subwindows", 3995934104)
  var ret: encoded TypedArray[Window]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Window])

proc setCanvasCullMask*(self: Viewport; mask: uint32): void =
  expandMethodBind(className Viewport, "set_canvas_cull_mask", 1286410249)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCanvasCullMask*(self: Viewport): uint32 =
  expandMethodBind(className Viewport, "get_canvas_cull_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setCanvasCullMaskBit*(self: Viewport; layer: uint32; enable: bool): void =
  expandMethodBind(className Viewport, "set_canvas_cull_mask_bit", 300928843)
  var `?param` = [getPtr layer, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCanvasCullMaskBit*(self: Viewport; layer: uint32): bool =
  expandMethodBind(className Viewport, "get_canvas_cull_mask_bit", 1116898809)
  var `?param` = [getPtr layer]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setDefaultCanvasItemTextureRepeat*(self: Viewport; mode: Viewport_DefaultCanvasItemTextureRepeat): void =
  expandMethodBind(className Viewport, "set_default_canvas_item_texture_repeat", 1658513413)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDefaultCanvasItemTextureRepeat*(self: Viewport): Viewport_DefaultCanvasItemTextureRepeat =
  expandMethodBind(className Viewport, "get_default_canvas_item_texture_repeat", 4049774160)
  var ret: encoded Viewport_DefaultCanvasItemTextureRepeat
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Viewport_DefaultCanvasItemTextureRepeat)

proc setSdfOversize*(self: Viewport; oversize: Viewport_SDFOversize): void =
  expandMethodBind(className Viewport, "set_sdf_oversize", 2574159017)
  var `?param` = [getPtr oversize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSdfOversize*(self: Viewport): Viewport_SDFOversize =
  expandMethodBind(className Viewport, "get_sdf_oversize", 2631427510)
  var ret: encoded Viewport_SDFOversize
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Viewport_SDFOversize)

proc setSdfScale*(self: Viewport; scale: Viewport_SDFScale): void =
  expandMethodBind(className Viewport, "set_sdf_scale", 1402773951)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSdfScale*(self: Viewport): Viewport_SDFScale =
  expandMethodBind(className Viewport, "get_sdf_scale", 3162688184)
  var ret: encoded Viewport_SDFScale
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Viewport_SDFScale)

proc setMeshLodThreshold*(self: Viewport; pixels: Float): void =
  expandMethodBind(className Viewport, "set_mesh_lod_threshold", 373806689)
  var `?param` = [getPtr pixels]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMeshLodThreshold*(self: Viewport): Float =
  expandMethodBind(className Viewport, "get_mesh_lod_threshold", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAsAudioListener2D*(self: Viewport; enable: bool): void =
  expandMethodBind(className Viewport, "set_as_audio_listener_2d", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAudioListener2D*(self: Viewport): bool =
  expandMethodBind(className Viewport, "is_audio_listener_2d", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getCamera2D*(self: Viewport): Camera2D =
  expandMethodBind(className Viewport, "get_camera_2d", 3551466917)
  var ret: encoded Camera2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Camera2D)

proc setWorld3D*(self: Viewport; world3D: gdref World3D): void =
  expandMethodBind(className Viewport, "set_world_3d", 1400875337)
  var `?param` = [getPtr world3D]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWorld3D*(self: Viewport): gdref World3D =
  expandMethodBind(className Viewport, "get_world_3d", 317588385)
  var ret: encoded gdref World3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref World3D)

proc findWorld3D*(self: Viewport): gdref World3D =
  expandMethodBind(className Viewport, "find_world_3d", 317588385)
  var ret: encoded gdref World3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref World3D)

proc setUseOwnWorld3D*(self: Viewport; enable: bool): void =
  expandMethodBind(className Viewport, "set_use_own_world_3d", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingOwnWorld3D*(self: Viewport): bool =
  expandMethodBind(className Viewport, "is_using_own_world_3d", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getCamera3D*(self: Viewport): Camera3D =
  expandMethodBind(className Viewport, "get_camera_3d", 2285090890)
  var ret: encoded Camera3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Camera3D)

proc setAsAudioListener3D*(self: Viewport; enable: bool): void =
  expandMethodBind(className Viewport, "set_as_audio_listener_3d", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAudioListener3D*(self: Viewport): bool =
  expandMethodBind(className Viewport, "is_audio_listener_3d", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDisable3D*(self: Viewport; disable: bool): void =
  expandMethodBind(className Viewport, "set_disable_3d", 2586408642)
  var `?param` = [getPtr disable]
  methodbind.ptrcall(self, addr `?param`[0])

proc is3DDisabled*(self: Viewport): bool =
  expandMethodBind(className Viewport, "is_3d_disabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUseXr*(self: Viewport; use: bool): void =
  expandMethodBind(className Viewport, "set_use_xr", 2586408642)
  var `?param` = [getPtr use]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingXr*(self: Viewport): bool =
  expandMethodBind(className Viewport, "is_using_xr", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setScaling3DMode*(self: Viewport; scaling3DMode: Viewport_Scaling3DMode): void =
  expandMethodBind(className Viewport, "set_scaling_3d_mode", 1531597597)
  var `?param` = [getPtr scaling3DMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScaling3DMode*(self: Viewport): Viewport_Scaling3DMode =
  expandMethodBind(className Viewport, "get_scaling_3d_mode", 2597660574)
  var ret: encoded Viewport_Scaling3DMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Viewport_Scaling3DMode)

proc setScaling3DScale*(self: Viewport; scale: Float): void =
  expandMethodBind(className Viewport, "set_scaling_3d_scale", 373806689)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScaling3DScale*(self: Viewport): Float =
  expandMethodBind(className Viewport, "get_scaling_3d_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFsrSharpness*(self: Viewport; fsrSharpness: Float): void =
  expandMethodBind(className Viewport, "set_fsr_sharpness", 373806689)
  var `?param` = [getPtr fsrSharpness]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFsrSharpness*(self: Viewport): Float =
  expandMethodBind(className Viewport, "get_fsr_sharpness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTextureMipmapBias*(self: Viewport; textureMipmapBias: Float): void =
  expandMethodBind(className Viewport, "set_texture_mipmap_bias", 373806689)
  var `?param` = [getPtr textureMipmapBias]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureMipmapBias*(self: Viewport): Float =
  expandMethodBind(className Viewport, "get_texture_mipmap_bias", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVrsMode*(self: Viewport; mode: Viewport_VRSMode): void =
  expandMethodBind(className Viewport, "set_vrs_mode", 2749867817)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVrsMode*(self: Viewport): Viewport_VRSMode =
  expandMethodBind(className Viewport, "get_vrs_mode", 349660525)
  var ret: encoded Viewport_VRSMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Viewport_VRSMode)

proc setVrsUpdateMode*(self: Viewport; mode: Viewport_VRSUpdateMode): void =
  expandMethodBind(className Viewport, "set_vrs_update_mode", 3182412319)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVrsUpdateMode*(self: Viewport): Viewport_VRSUpdateMode =
  expandMethodBind(className Viewport, "get_vrs_update_mode", 2255951583)
  var ret: encoded Viewport_VRSUpdateMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Viewport_VRSUpdateMode)

proc setVrsTexture*(self: Viewport; texture: gdref Texture2D): void =
  expandMethodBind(className Viewport, "set_vrs_texture", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVrsTexture*(self: Viewport): gdref Texture2D =
  expandMethodBind(className Viewport, "get_vrs_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

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

const Viewport_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Viewport]): Table[string, string] = Viewport_vmap

proc sizeChanged*(self: Viewport): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("size_changed")
  self.emitSignal(signalname)

proc guiFocusChanged*(self: Viewport; node: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("gui_focus_changed")
  let args = [node]
  self.emitSignal(signalname, args)