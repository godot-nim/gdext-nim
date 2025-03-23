{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

method forwardCanvasGuiInput*(self: EditorPlugin; event: gdref InputEvent): bool {.base.} = (discard)
proc registerVirtual_forwardCanvasGuiInput*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_forward_canvas_gui_input"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).forwardCanvasGuiInput(p_args[0].decode(gdref InputEvent)).encode(r_ret)

method forwardCanvasDrawOverViewport*(self: EditorPlugin; viewportControl: Control): void {.base.} = (discard)
proc registerVirtual_forwardCanvasDrawOverViewport*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_forward_canvas_draw_over_viewport"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).forwardCanvasDrawOverViewport(p_args[0].decode(Control))

method forwardCanvasForceDrawOverViewport*(self: EditorPlugin; viewportControl: Control): void {.base.} = (discard)
proc registerVirtual_forwardCanvasForceDrawOverViewport*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_forward_canvas_force_draw_over_viewport"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).forwardCanvasForceDrawOverViewport(p_args[0].decode(Control))

method forward3DGuiInput*(self: EditorPlugin; viewportCamera: Camera3D; event: gdref InputEvent): int32 {.base.} = (discard)
proc registerVirtual_forward3DGuiInput*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_forward_3d_gui_input"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).forward3DGuiInput(p_args[0].decode(Camera3D), p_args[1].decode(gdref InputEvent)).encode(r_ret)

method forward3DDrawOverViewport*(self: EditorPlugin; viewportControl: Control): void {.base.} = (discard)
proc registerVirtual_forward3DDrawOverViewport*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_forward_3d_draw_over_viewport"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).forward3DDrawOverViewport(p_args[0].decode(Control))

method forward3DForceDrawOverViewport*(self: EditorPlugin; viewportControl: Control): void {.base.} = (discard)
proc registerVirtual_forward3DForceDrawOverViewport*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_forward_3d_force_draw_over_viewport"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).forward3DForceDrawOverViewport(p_args[0].decode(Control))

method getPluginName*(self: EditorPlugin): String {.base.} = (discard)
proc registerVirtual_getPluginName*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_plugin_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).getPluginName().encode(r_ret)

method getPluginIcon*(self: EditorPlugin): gdref Texture2D {.base.} = (discard)
proc registerVirtual_getPluginIcon*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_plugin_icon"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).getPluginIcon().encode(r_ret)

method hasMainScreen*(self: EditorPlugin): bool {.base.} = (discard)
proc registerVirtual_hasMainScreen*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_has_main_screen"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).hasMainScreen().encode(r_ret)

method makeVisible*(self: EditorPlugin; visible: bool): void {.base.} = (discard)
proc registerVirtual_makeVisible*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_make_visible"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).makeVisible(p_args[0].decode(bool))

method edit*(self: EditorPlugin; `object`: Object): void {.base.} = (discard)
proc registerVirtual_edit*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_edit"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).edit(p_args[0].decode(Object))

method handles*(self: EditorPlugin; `object`: Object): bool {.base.} = (discard)
proc registerVirtual_handles*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_handles"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).handles(p_args[0].decode(Object)).encode(r_ret)

method getState*(self: EditorPlugin): Dictionary {.base.} = (discard)
proc registerVirtual_getState*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).getState().encode(r_ret)

method setState*(self: EditorPlugin; state: Dictionary): void {.base.} = (discard)
proc registerVirtual_setState*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).setState(p_args[0].decode(Dictionary))

method clear*(self: EditorPlugin): void {.base.} = (discard)
proc registerVirtual_clear*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_clear"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).clear()

method getUnsavedStatus*(self: EditorPlugin; forScene: String): String {.base.} = (discard)
proc registerVirtual_getUnsavedStatus*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_unsaved_status"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).getUnsavedStatus(p_args[0].decode(String)).encode(r_ret)

method saveExternalData*(self: EditorPlugin): void {.base.} = (discard)
proc registerVirtual_saveExternalData*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_save_external_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).saveExternalData()

method applyChanges*(self: EditorPlugin): void {.base.} = (discard)
proc registerVirtual_applyChanges*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_apply_changes"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).applyChanges()

method getBreakpoints*(self: EditorPlugin): PackedStringArray {.base.} = (discard)
proc registerVirtual_getBreakpoints*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_breakpoints"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).getBreakpoints().encode(r_ret)

method setWindowLayout*(self: EditorPlugin; configuration: gdref ConfigFile): void {.base.} = (discard)
proc registerVirtual_setWindowLayout*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_window_layout"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).setWindowLayout(p_args[0].decode(gdref ConfigFile))

method getWindowLayout*(self: EditorPlugin; configuration: gdref ConfigFile): void {.base.} = (discard)
proc registerVirtual_getWindowLayout*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_window_layout"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).getWindowLayout(p_args[0].decode(gdref ConfigFile))

method build*(self: EditorPlugin): bool {.base.} = (discard)
proc registerVirtual_build*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_build"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).build().encode(r_ret)

method enablePlugin*(self: EditorPlugin): void {.base.} = (discard)
proc registerVirtual_enablePlugin*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_enable_plugin"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).enablePlugin()

method disablePlugin*(self: EditorPlugin): void {.base.} = (discard)
proc registerVirtual_disablePlugin*[T: EditorPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_disable_plugin"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorPlugin](p_instance).disablePlugin()

proc addControlToContainer*(self: EditorPlugin; container: EditorPlugin_CustomControlContainer; control: Control): void =
  expandMethodBind(className EditorPlugin, "add_control_to_container", 3092750152)
  methodbind.ptrcall(self, [getPtr container, getPtr control])

proc addControlToBottomPanel*(self: EditorPlugin; control: Control; title: String; shortcut: gdref Shortcut = default gdref Shortcut): Button =
  expandMethodBind(className EditorPlugin, "add_control_to_bottom_panel", 111032269)
  var ret: encoded Button
  methodbind.ptrcall(self, [getPtr control, getPtr title, getPtr shortcut], addr ret)
  (addr ret).decode_result(Button)

proc addControlToDock*(self: EditorPlugin; slot: EditorPlugin_DockSlot; control: Control; shortcut: gdref Shortcut = default gdref Shortcut): void =
  expandMethodBind(className EditorPlugin, "add_control_to_dock", 2994930786)
  methodbind.ptrcall(self, [getPtr slot, getPtr control, getPtr shortcut])

proc removeControlFromDocks*(self: EditorPlugin; control: Control): void =
  expandMethodBind(className EditorPlugin, "remove_control_from_docks", 1496901182)
  methodbind.ptrcall(self, [getPtr control])

proc removeControlFromBottomPanel*(self: EditorPlugin; control: Control): void =
  expandMethodBind(className EditorPlugin, "remove_control_from_bottom_panel", 1496901182)
  methodbind.ptrcall(self, [getPtr control])

proc removeControlFromContainer*(self: EditorPlugin; container: EditorPlugin_CustomControlContainer; control: Control): void =
  expandMethodBind(className EditorPlugin, "remove_control_from_container", 3092750152)
  methodbind.ptrcall(self, [getPtr container, getPtr control])

proc setDockTabIcon*(self: EditorPlugin; control: Control; icon: gdref Texture2D): void =
  expandMethodBind(className EditorPlugin, "set_dock_tab_icon", 3450529724)
  methodbind.ptrcall(self, [getPtr control, getPtr icon])

proc addToolMenuItem*(self: EditorPlugin; name: String; callable: Callable): void =
  expandMethodBind(className EditorPlugin, "add_tool_menu_item", 2137474292)
  methodbind.ptrcall(self, [getPtr name, getPtr callable])

proc addToolSubmenuItem*(self: EditorPlugin; name: String; submenu: PopupMenu): void =
  expandMethodBind(className EditorPlugin, "add_tool_submenu_item", 1019428915)
  methodbind.ptrcall(self, [getPtr name, getPtr submenu])

proc removeToolMenuItem*(self: EditorPlugin; name: String): void =
  expandMethodBind(className EditorPlugin, "remove_tool_menu_item", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc getExportAsMenu*(self: EditorPlugin): PopupMenu =
  expandMethodBind(className EditorPlugin, "get_export_as_menu", 1775878644)
  var ret: encoded PopupMenu
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PopupMenu)

proc addCustomType*(self: EditorPlugin; `type`: String; base: String; script: gdref Script; icon: gdref Texture2D): void =
  expandMethodBind(className EditorPlugin, "add_custom_type", 1986814599)
  methodbind.ptrcall(self, [getPtr `type`, getPtr base, getPtr script, getPtr icon])

proc removeCustomType*(self: EditorPlugin; `type`: String): void =
  expandMethodBind(className EditorPlugin, "remove_custom_type", 83702148)
  methodbind.ptrcall(self, [getPtr `type`])

proc addAutoloadSingleton*(self: EditorPlugin; name: String; path: String): void =
  expandMethodBind(className EditorPlugin, "add_autoload_singleton", 3186203200)
  methodbind.ptrcall(self, [getPtr name, getPtr path])

proc removeAutoloadSingleton*(self: EditorPlugin; name: String): void =
  expandMethodBind(className EditorPlugin, "remove_autoload_singleton", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc updateOverlays*(self: EditorPlugin): int32 =
  expandMethodBind(className EditorPlugin, "update_overlays", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc makeBottomPanelItemVisible*(self: EditorPlugin; item: Control): void =
  expandMethodBind(className EditorPlugin, "make_bottom_panel_item_visible", 1496901182)
  methodbind.ptrcall(self, [getPtr item])

proc hideBottomPanel*(self: EditorPlugin): void =
  expandMethodBind(className EditorPlugin, "hide_bottom_panel", 3218959716)
  methodbind.ptrcall(self, [])

proc getUndoRedo*(self: EditorPlugin): EditorUndoRedoManager =
  expandMethodBind(className EditorPlugin, "get_undo_redo", 773492341)
  var ret: encoded EditorUndoRedoManager
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(EditorUndoRedoManager)

proc addUndoRedoInspectorHookCallback*(self: EditorPlugin; callable: Callable): void =
  expandMethodBind(className EditorPlugin, "add_undo_redo_inspector_hook_callback", 1611583062)
  methodbind.ptrcall(self, [getPtr callable])

proc removeUndoRedoInspectorHookCallback*(self: EditorPlugin; callable: Callable): void =
  expandMethodBind(className EditorPlugin, "remove_undo_redo_inspector_hook_callback", 1611583062)
  methodbind.ptrcall(self, [getPtr callable])

proc queueSaveLayout*(self: EditorPlugin): void =
  expandMethodBind(className EditorPlugin, "queue_save_layout", 3218959716)
  methodbind.ptrcall(self, [])

proc addTranslationParserPlugin*(self: EditorPlugin; parser: gdref EditorTranslationParserPlugin): void =
  expandMethodBind(className EditorPlugin, "add_translation_parser_plugin", 3116463128)
  methodbind.ptrcall(self, [getPtr parser])

proc removeTranslationParserPlugin*(self: EditorPlugin; parser: gdref EditorTranslationParserPlugin): void =
  expandMethodBind(className EditorPlugin, "remove_translation_parser_plugin", 3116463128)
  methodbind.ptrcall(self, [getPtr parser])

proc addImportPlugin*(self: EditorPlugin; importer: gdref EditorImportPlugin; firstPriority: bool = false): void =
  expandMethodBind(className EditorPlugin, "add_import_plugin", 3113975762)
  methodbind.ptrcall(self, [getPtr importer, getPtr firstPriority])

proc removeImportPlugin*(self: EditorPlugin; importer: gdref EditorImportPlugin): void =
  expandMethodBind(className EditorPlugin, "remove_import_plugin", 2312482773)
  methodbind.ptrcall(self, [getPtr importer])

proc addSceneFormatImporterPlugin*(self: EditorPlugin; sceneFormatImporter: gdref EditorSceneFormatImporter; firstPriority: bool = false): void =
  expandMethodBind(className EditorPlugin, "add_scene_format_importer_plugin", 2764104752)
  methodbind.ptrcall(self, [getPtr sceneFormatImporter, getPtr firstPriority])

proc removeSceneFormatImporterPlugin*(self: EditorPlugin; sceneFormatImporter: gdref EditorSceneFormatImporter): void =
  expandMethodBind(className EditorPlugin, "remove_scene_format_importer_plugin", 2637776123)
  methodbind.ptrcall(self, [getPtr sceneFormatImporter])

proc addScenePostImportPlugin*(self: EditorPlugin; sceneImportPlugin: gdref EditorScenePostImportPlugin; firstPriority: bool = false): void =
  expandMethodBind(className EditorPlugin, "add_scene_post_import_plugin", 3492436322)
  methodbind.ptrcall(self, [getPtr sceneImportPlugin, getPtr firstPriority])

proc removeScenePostImportPlugin*(self: EditorPlugin; sceneImportPlugin: gdref EditorScenePostImportPlugin): void =
  expandMethodBind(className EditorPlugin, "remove_scene_post_import_plugin", 3045178206)
  methodbind.ptrcall(self, [getPtr sceneImportPlugin])

proc addExportPlugin*(self: EditorPlugin; plugin: gdref EditorExportPlugin): void =
  expandMethodBind(className EditorPlugin, "add_export_plugin", 4095952207)
  methodbind.ptrcall(self, [getPtr plugin])

proc removeExportPlugin*(self: EditorPlugin; plugin: gdref EditorExportPlugin): void =
  expandMethodBind(className EditorPlugin, "remove_export_plugin", 4095952207)
  methodbind.ptrcall(self, [getPtr plugin])

proc addExportPlatform*(self: EditorPlugin; platform: gdref EditorExportPlatform): void =
  expandMethodBind(className EditorPlugin, "add_export_platform", 3431312373)
  methodbind.ptrcall(self, [getPtr platform])

proc removeExportPlatform*(self: EditorPlugin; platform: gdref EditorExportPlatform): void =
  expandMethodBind(className EditorPlugin, "remove_export_platform", 3431312373)
  methodbind.ptrcall(self, [getPtr platform])

proc addNode3DGizmoPlugin*(self: EditorPlugin; plugin: gdref EditorNode3DGizmoPlugin): void =
  expandMethodBind(className EditorPlugin, "add_node_3d_gizmo_plugin", 1541015022)
  methodbind.ptrcall(self, [getPtr plugin])

proc removeNode3DGizmoPlugin*(self: EditorPlugin; plugin: gdref EditorNode3DGizmoPlugin): void =
  expandMethodBind(className EditorPlugin, "remove_node_3d_gizmo_plugin", 1541015022)
  methodbind.ptrcall(self, [getPtr plugin])

proc addInspectorPlugin*(self: EditorPlugin; plugin: gdref EditorInspectorPlugin): void =
  expandMethodBind(className EditorPlugin, "add_inspector_plugin", 546395733)
  methodbind.ptrcall(self, [getPtr plugin])

proc removeInspectorPlugin*(self: EditorPlugin; plugin: gdref EditorInspectorPlugin): void =
  expandMethodBind(className EditorPlugin, "remove_inspector_plugin", 546395733)
  methodbind.ptrcall(self, [getPtr plugin])

proc addResourceConversionPlugin*(self: EditorPlugin; plugin: gdref EditorResourceConversionPlugin): void =
  expandMethodBind(className EditorPlugin, "add_resource_conversion_plugin", 2124849111)
  methodbind.ptrcall(self, [getPtr plugin])

proc removeResourceConversionPlugin*(self: EditorPlugin; plugin: gdref EditorResourceConversionPlugin): void =
  expandMethodBind(className EditorPlugin, "remove_resource_conversion_plugin", 2124849111)
  methodbind.ptrcall(self, [getPtr plugin])

proc setInputEventForwardingAlwaysEnabled*(self: EditorPlugin): void =
  expandMethodBind(className EditorPlugin, "set_input_event_forwarding_always_enabled", 3218959716)
  methodbind.ptrcall(self, [])

proc setForceDrawOverForwardingEnabled*(self: EditorPlugin): void =
  expandMethodBind(className EditorPlugin, "set_force_draw_over_forwarding_enabled", 3218959716)
  methodbind.ptrcall(self, [])

proc addContextMenuPlugin*(self: EditorPlugin; slot: EditorContextMenuPlugin_ContextMenuSlot; plugin: gdref EditorContextMenuPlugin): void =
  expandMethodBind(className EditorPlugin, "add_context_menu_plugin", 1904221872)
  methodbind.ptrcall(self, [getPtr slot, getPtr plugin])

proc removeContextMenuPlugin*(self: EditorPlugin; plugin: gdref EditorContextMenuPlugin): void =
  expandMethodBind(className EditorPlugin, "remove_context_menu_plugin", 2281511854)
  methodbind.ptrcall(self, [getPtr plugin])

proc getEditorInterface*(self: EditorPlugin): EditorInterface =
  expandMethodBind(className EditorPlugin, "get_editor_interface", 4223731786)
  var ret: encoded EditorInterface
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(EditorInterface)

proc getScriptCreateDialog*(self: EditorPlugin): ScriptCreateDialog =
  expandMethodBind(className EditorPlugin, "get_script_create_dialog", 3121871482)
  var ret: encoded ScriptCreateDialog
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(ScriptCreateDialog)

proc addDebuggerPlugin*(self: EditorPlugin; script: gdref EditorDebuggerPlugin): void =
  expandMethodBind(className EditorPlugin, "add_debugger_plugin", 3749880309)
  methodbind.ptrcall(self, [getPtr script])

proc removeDebuggerPlugin*(self: EditorPlugin; script: gdref EditorDebuggerPlugin): void =
  expandMethodBind(className EditorPlugin, "remove_debugger_plugin", 3749880309)
  methodbind.ptrcall(self, [getPtr script])

proc getPluginVersion*(self: EditorPlugin): String =
  expandMethodBind(className EditorPlugin, "get_plugin_version", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc call_sceneChanged*(self: EditorPlugin; sceneRoot: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("scene_changed")
  let args = [sceneRoot]
  self.emitSignal(signalname, args)

proc call_sceneClosed*(self: EditorPlugin; filepath: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("scene_closed")
  let args = [filepath]
  self.emitSignal(signalname, args)

proc call_mainScreenChanged*(self: EditorPlugin; screenName: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("main_screen_changed")
  let args = [screenName]
  self.emitSignal(signalname, args)

proc call_resourceSaved*(self: EditorPlugin; resource: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("resource_saved")
  let args = [resource]
  self.emitSignal(signalname, args)

proc call_sceneSaved*(self: EditorPlugin; filepath: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("scene_saved")
  let args = [filepath]
  self.emitSignal(signalname, args)

proc call_projectSettingsChanged*(self: EditorPlugin): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("project_settings_changed")
  self.emitSignal(signalname)