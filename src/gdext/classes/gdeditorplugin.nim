{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(EditorPlugin, Node)

method forwardCanvasGuiInput*(self: EditorPlugin; event: gdref InputEvent): bool {.base.} = (discard)
proc registerVirtual_forwardCanvasGuiInput*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_forward_canvas_gui_input"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).forwardCanvasGuiInput(p_args[0].decode(gdref InputEvent)).encode(r_ret)

method forwardCanvasDrawOverViewport*(self: EditorPlugin; viewportControl: Control): void {.base.} = (discard)
proc registerVirtual_forwardCanvasDrawOverViewport*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_forward_canvas_draw_over_viewport"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).forwardCanvasDrawOverViewport(p_args[0].decode(Control))

method forwardCanvasForceDrawOverViewport*(self: EditorPlugin; viewportControl: Control): void {.base.} = (discard)
proc registerVirtual_forwardCanvasForceDrawOverViewport*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_forward_canvas_force_draw_over_viewport"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).forwardCanvasForceDrawOverViewport(p_args[0].decode(Control))

method forward3DGuiInput*(self: EditorPlugin; viewportCamera: Camera3D; event: gdref InputEvent): int32 {.base.} = (discard)
proc registerVirtual_forward3DGuiInput*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_forward_3d_gui_input"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).forward3DGuiInput(p_args[0].decode(Camera3D), p_args[1].decode(gdref InputEvent)).encode(r_ret)

method forward3DDrawOverViewport*(self: EditorPlugin; viewportControl: Control): void {.base.} = (discard)
proc registerVirtual_forward3DDrawOverViewport*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_forward_3d_draw_over_viewport"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).forward3DDrawOverViewport(p_args[0].decode(Control))

method forward3DForceDrawOverViewport*(self: EditorPlugin; viewportControl: Control): void {.base.} = (discard)
proc registerVirtual_forward3DForceDrawOverViewport*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_forward_3d_force_draw_over_viewport"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).forward3DForceDrawOverViewport(p_args[0].decode(Control))

method getPluginName*(self: EditorPlugin): String {.base.} = (discard)
proc registerVirtual_getPluginName*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_plugin_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).getPluginName().encode(r_ret)

method getPluginIcon*(self: EditorPlugin): gdref Texture2D {.base.} = (discard)
proc registerVirtual_getPluginIcon*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_plugin_icon"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).getPluginIcon().encode(r_ret)

method hasMainScreen*(self: EditorPlugin): bool {.base.} = (discard)
proc registerVirtual_hasMainScreen*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_has_main_screen"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).hasMainScreen().encode(r_ret)

method makeVisible*(self: EditorPlugin; visible: bool): void {.base.} = (discard)
proc registerVirtual_makeVisible*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_make_visible"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).makeVisible(p_args[0].decode(bool))

method edit*(self: EditorPlugin; `object`: Object): void {.base.} = (discard)
proc registerVirtual_edit*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_edit"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).edit(p_args[0].decode(Object))

method handles*(self: EditorPlugin; `object`: Object): bool {.base.} = (discard)
proc registerVirtual_handles*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_handles"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).handles(p_args[0].decode(Object)).encode(r_ret)

method getState*(self: EditorPlugin): Dictionary {.base.} = (discard)
proc registerVirtual_getState*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).getState().encode(r_ret)

method setState*(self: EditorPlugin; state: Dictionary): void {.base.} = (discard)
proc registerVirtual_setState*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).setState(p_args[0].decode(Dictionary))

method clear*(self: EditorPlugin): void {.base.} = (discard)
proc registerVirtual_clear*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_clear"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).clear()

method getUnsavedStatus*(self: EditorPlugin; forScene: String): String {.base.} = (discard)
proc registerVirtual_getUnsavedStatus*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_unsaved_status"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).getUnsavedStatus(p_args[0].decode(String)).encode(r_ret)

method saveExternalData*(self: EditorPlugin): void {.base.} = (discard)
proc registerVirtual_saveExternalData*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_save_external_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).saveExternalData()

method applyChanges*(self: EditorPlugin): void {.base.} = (discard)
proc registerVirtual_applyChanges*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_apply_changes"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).applyChanges()

method getBreakpoints*(self: EditorPlugin): PackedStringArray {.base.} = (discard)
proc registerVirtual_getBreakpoints*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_breakpoints"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).getBreakpoints().encode(r_ret)

method setWindowLayout*(self: EditorPlugin; configuration: gdref ConfigFile): void {.base.} = (discard)
proc registerVirtual_setWindowLayout*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_window_layout"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).setWindowLayout(p_args[0].decode(gdref ConfigFile))

method getWindowLayout*(self: EditorPlugin; configuration: gdref ConfigFile): void {.base.} = (discard)
proc registerVirtual_getWindowLayout*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_window_layout"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).getWindowLayout(p_args[0].decode(gdref ConfigFile))

method build*(self: EditorPlugin): bool {.base.} = (discard)
proc registerVirtual_build*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_build"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).build().encode(r_ret)

method enablePlugin*(self: EditorPlugin): void {.base.} = (discard)
proc registerVirtual_enablePlugin*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_enable_plugin"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).enablePlugin()

method disablePlugin*(self: EditorPlugin): void {.base.} = (discard)
proc registerVirtual_disablePlugin*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_disable_plugin"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).disablePlugin()

proc addControlToContainer*(self: EditorPlugin; container: EditorPlugin_CustomControlContainer; control: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_control_to_container", 3092750152)
  methodbind.ptrcall(self, [getPtr container, getPtr control], void)

proc addControlToBottomPanel*(self: EditorPlugin; control: Control; title: String; shortcut: gdref Shortcut = default gdref Shortcut): Button =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_control_to_bottom_panel", 111032269)
  methodbind.ptrcall(self, [getPtr control, getPtr title, getPtr shortcut], Button)

proc addControlToDock*(self: EditorPlugin; slot: EditorPlugin_DockSlot; control: Control; shortcut: gdref Shortcut = default gdref Shortcut): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_control_to_dock", 2994930786)
  methodbind.ptrcall(self, [getPtr slot, getPtr control, getPtr shortcut], void)

proc removeControlFromDocks*(self: EditorPlugin; control: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_control_from_docks", 1496901182)
  methodbind.ptrcall(self, [getPtr control], void)

proc removeControlFromBottomPanel*(self: EditorPlugin; control: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_control_from_bottom_panel", 1496901182)
  methodbind.ptrcall(self, [getPtr control], void)

proc removeControlFromContainer*(self: EditorPlugin; container: EditorPlugin_CustomControlContainer; control: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_control_from_container", 3092750152)
  methodbind.ptrcall(self, [getPtr container, getPtr control], void)

proc setDockTabIcon*(self: EditorPlugin; control: Control; icon: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "set_dock_tab_icon", 3450529724)
  methodbind.ptrcall(self, [getPtr control, getPtr icon], void)

proc addToolMenuItem*(self: EditorPlugin; name: String; callable: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_tool_menu_item", 2137474292)
  methodbind.ptrcall(self, [getPtr name, getPtr callable], void)

proc addToolSubmenuItem*(self: EditorPlugin; name: String; submenu: PopupMenu): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_tool_submenu_item", 1019428915)
  methodbind.ptrcall(self, [getPtr name, getPtr submenu], void)

proc removeToolMenuItem*(self: EditorPlugin; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_tool_menu_item", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getExportAsMenu*(self: EditorPlugin): PopupMenu =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "get_export_as_menu", 1775878644)
  methodbind.ptrcall(self, [], PopupMenu)

proc addCustomType*(self: EditorPlugin; `type`: String; base: String; script: gdref Script; icon: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_custom_type", 1986814599)
  methodbind.ptrcall(self, [getPtr `type`, getPtr base, getPtr script, getPtr icon], void)

proc removeCustomType*(self: EditorPlugin; `type`: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_custom_type", 83702148)
  methodbind.ptrcall(self, [getPtr `type`], void)

proc addAutoloadSingleton*(self: EditorPlugin; name: String; path: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_autoload_singleton", 3186203200)
  methodbind.ptrcall(self, [getPtr name, getPtr path], void)

proc removeAutoloadSingleton*(self: EditorPlugin; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_autoload_singleton", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc updateOverlays*(self: EditorPlugin): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "update_overlays", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc makeBottomPanelItemVisible*(self: EditorPlugin; item: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "make_bottom_panel_item_visible", 1496901182)
  methodbind.ptrcall(self, [getPtr item], void)

proc hideBottomPanel*(self: EditorPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "hide_bottom_panel", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getUndoRedo*(self: EditorPlugin): EditorUndoRedoManager =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "get_undo_redo", 773492341)
  methodbind.ptrcall(self, [], EditorUndoRedoManager)

proc addUndoRedoInspectorHookCallback*(self: EditorPlugin; callable: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_undo_redo_inspector_hook_callback", 1611583062)
  methodbind.ptrcall(self, [getPtr callable], void)

proc removeUndoRedoInspectorHookCallback*(self: EditorPlugin; callable: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_undo_redo_inspector_hook_callback", 1611583062)
  methodbind.ptrcall(self, [getPtr callable], void)

proc queueSaveLayout*(self: EditorPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "queue_save_layout", 3218959716)
  methodbind.ptrcall(self, [], void)

proc addTranslationParserPlugin*(self: EditorPlugin; parser: gdref EditorTranslationParserPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_translation_parser_plugin", 3116463128)
  methodbind.ptrcall(self, [getPtr parser], void)

proc removeTranslationParserPlugin*(self: EditorPlugin; parser: gdref EditorTranslationParserPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_translation_parser_plugin", 3116463128)
  methodbind.ptrcall(self, [getPtr parser], void)

proc addImportPlugin*(self: EditorPlugin; importer: gdref EditorImportPlugin; firstPriority: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_import_plugin", 3113975762)
  methodbind.ptrcall(self, [getPtr importer, getPtr firstPriority], void)

proc removeImportPlugin*(self: EditorPlugin; importer: gdref EditorImportPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_import_plugin", 2312482773)
  methodbind.ptrcall(self, [getPtr importer], void)

proc addSceneFormatImporterPlugin*(self: EditorPlugin; sceneFormatImporter: gdref EditorSceneFormatImporter; firstPriority: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_scene_format_importer_plugin", 2764104752)
  methodbind.ptrcall(self, [getPtr sceneFormatImporter, getPtr firstPriority], void)

proc removeSceneFormatImporterPlugin*(self: EditorPlugin; sceneFormatImporter: gdref EditorSceneFormatImporter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_scene_format_importer_plugin", 2637776123)
  methodbind.ptrcall(self, [getPtr sceneFormatImporter], void)

proc addScenePostImportPlugin*(self: EditorPlugin; sceneImportPlugin: gdref EditorScenePostImportPlugin; firstPriority: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_scene_post_import_plugin", 3492436322)
  methodbind.ptrcall(self, [getPtr sceneImportPlugin, getPtr firstPriority], void)

proc removeScenePostImportPlugin*(self: EditorPlugin; sceneImportPlugin: gdref EditorScenePostImportPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_scene_post_import_plugin", 3045178206)
  methodbind.ptrcall(self, [getPtr sceneImportPlugin], void)

proc addExportPlugin*(self: EditorPlugin; plugin: gdref EditorExportPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_export_plugin", 4095952207)
  methodbind.ptrcall(self, [getPtr plugin], void)

proc removeExportPlugin*(self: EditorPlugin; plugin: gdref EditorExportPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_export_plugin", 4095952207)
  methodbind.ptrcall(self, [getPtr plugin], void)

proc addExportPlatform*(self: EditorPlugin; platform: gdref EditorExportPlatform): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_export_platform", 3431312373)
  methodbind.ptrcall(self, [getPtr platform], void)

proc removeExportPlatform*(self: EditorPlugin; platform: gdref EditorExportPlatform): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_export_platform", 3431312373)
  methodbind.ptrcall(self, [getPtr platform], void)

proc addNode3DGizmoPlugin*(self: EditorPlugin; plugin: gdref EditorNode3DGizmoPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_node_3d_gizmo_plugin", 1541015022)
  methodbind.ptrcall(self, [getPtr plugin], void)

proc removeNode3DGizmoPlugin*(self: EditorPlugin; plugin: gdref EditorNode3DGizmoPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_node_3d_gizmo_plugin", 1541015022)
  methodbind.ptrcall(self, [getPtr plugin], void)

proc addInspectorPlugin*(self: EditorPlugin; plugin: gdref EditorInspectorPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_inspector_plugin", 546395733)
  methodbind.ptrcall(self, [getPtr plugin], void)

proc removeInspectorPlugin*(self: EditorPlugin; plugin: gdref EditorInspectorPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_inspector_plugin", 546395733)
  methodbind.ptrcall(self, [getPtr plugin], void)

proc addResourceConversionPlugin*(self: EditorPlugin; plugin: gdref EditorResourceConversionPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_resource_conversion_plugin", 2124849111)
  methodbind.ptrcall(self, [getPtr plugin], void)

proc removeResourceConversionPlugin*(self: EditorPlugin; plugin: gdref EditorResourceConversionPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_resource_conversion_plugin", 2124849111)
  methodbind.ptrcall(self, [getPtr plugin], void)

proc setInputEventForwardingAlwaysEnabled*(self: EditorPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "set_input_event_forwarding_always_enabled", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setForceDrawOverForwardingEnabled*(self: EditorPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "set_force_draw_over_forwarding_enabled", 3218959716)
  methodbind.ptrcall(self, [], void)

proc addContextMenuPlugin*(self: EditorPlugin; slot: EditorContextMenuPlugin_ContextMenuSlot; plugin: gdref EditorContextMenuPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_context_menu_plugin", 1904221872)
  methodbind.ptrcall(self, [getPtr slot, getPtr plugin], void)

proc removeContextMenuPlugin*(self: EditorPlugin; plugin: gdref EditorContextMenuPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_context_menu_plugin", 2281511854)
  methodbind.ptrcall(self, [getPtr plugin], void)

proc getEditorInterface*(self: EditorPlugin): EditorInterface =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "get_editor_interface", 4223731786)
  methodbind.ptrcall(self, [], EditorInterface)

proc getScriptCreateDialog*(self: EditorPlugin): ScriptCreateDialog =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "get_script_create_dialog", 3121871482)
  methodbind.ptrcall(self, [], ScriptCreateDialog)

proc addDebuggerPlugin*(self: EditorPlugin; script: gdref EditorDebuggerPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "add_debugger_plugin", 3749880309)
  methodbind.ptrcall(self, [getPtr script], void)

proc removeDebuggerPlugin*(self: EditorPlugin; script: gdref EditorDebuggerPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "remove_debugger_plugin", 3749880309)
  methodbind.ptrcall(self, [getPtr script], void)

proc getPluginVersion*(self: EditorPlugin): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPlugin, "get_plugin_version", 201670096)
  methodbind.ptrcall(self, [], String)
