{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

method forwardCanvasGuiInput*(self: EditorPlugin; event: gdref InputEvent): bool {.base.} = (discard)
proc forwardCanvasGuiInput(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).forwardCanvasGuiInput(p_args[0].decode(gdref InputEvent)).encode(r_ret)
template forwardCanvasGuiInput_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = forwardCanvasGuiInput

method forwardCanvasDrawOverViewport*(self: EditorPlugin; viewportControl: Control): void {.base.} = (discard)
proc forwardCanvasDrawOverViewport(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).forwardCanvasDrawOverViewport(p_args[0].decode(Control))
template forwardCanvasDrawOverViewport_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = forwardCanvasDrawOverViewport

method forwardCanvasForceDrawOverViewport*(self: EditorPlugin; viewportControl: Control): void {.base.} = (discard)
proc forwardCanvasForceDrawOverViewport(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).forwardCanvasForceDrawOverViewport(p_args[0].decode(Control))
template forwardCanvasForceDrawOverViewport_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = forwardCanvasForceDrawOverViewport

method forward3DGuiInput*(self: EditorPlugin; viewportCamera: Camera3D; event: gdref InputEvent): int32 {.base.} = (discard)
proc forward3DGuiInput(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).forward3DGuiInput(p_args[0].decode(Camera3D), p_args[1].decode(gdref InputEvent)).encode(r_ret)
template forward3DGuiInput_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = forward3DGuiInput

method forward3DDrawOverViewport*(self: EditorPlugin; viewportControl: Control): void {.base.} = (discard)
proc forward3DDrawOverViewport(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).forward3DDrawOverViewport(p_args[0].decode(Control))
template forward3DDrawOverViewport_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = forward3DDrawOverViewport

method forward3DForceDrawOverViewport*(self: EditorPlugin; viewportControl: Control): void {.base.} = (discard)
proc forward3DForceDrawOverViewport(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).forward3DForceDrawOverViewport(p_args[0].decode(Control))
template forward3DForceDrawOverViewport_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = forward3DForceDrawOverViewport

method getPluginName*(self: EditorPlugin): String {.base.} = (discard)
proc getPluginName(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).getPluginName().encode(r_ret)
template getPluginName_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = getPluginName

method getPluginIcon*(self: EditorPlugin): gdref Texture2D {.base.} = (discard)
proc getPluginIcon(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).getPluginIcon().encode(r_ret)
template getPluginIcon_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = getPluginIcon

method hasMainScreen*(self: EditorPlugin): bool {.base.} = (discard)
proc hasMainScreen(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).hasMainScreen().encode(r_ret)
template hasMainScreen_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = hasMainScreen

method makeVisible*(self: EditorPlugin; visible: bool): void {.base.} = (discard)
proc makeVisible(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).makeVisible(p_args[0].decode(bool))
template makeVisible_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = makeVisible

method edit*(self: EditorPlugin; `object`: Object): void {.base.} = (discard)
proc edit(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).edit(p_args[0].decode(Object))
template edit_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = edit

method handles*(self: EditorPlugin; `object`: Object): bool {.base.} = (discard)
proc handles(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).handles(p_args[0].decode(Object)).encode(r_ret)
template handles_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = handles

method getState*(self: EditorPlugin): Dictionary {.base.} = (discard)
proc getState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).getState().encode(r_ret)
template getState_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = getState

method setState*(self: EditorPlugin; state: Dictionary): void {.base.} = (discard)
proc setState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).setState(p_args[0].decode(Dictionary))
template setState_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = setState

method clear*(self: EditorPlugin): void {.base.} = (discard)
proc clear(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).clear()
template clear_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = clear

method getUnsavedStatus*(self: EditorPlugin; forScene: String): String {.base.} = (discard)
proc getUnsavedStatus(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).getUnsavedStatus(p_args[0].decode(String)).encode(r_ret)
template getUnsavedStatus_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = getUnsavedStatus

method saveExternalData*(self: EditorPlugin): void {.base.} = (discard)
proc saveExternalData(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).saveExternalData()
template saveExternalData_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = saveExternalData

method applyChanges*(self: EditorPlugin): void {.base.} = (discard)
proc applyChanges(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).applyChanges()
template applyChanges_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = applyChanges

method getBreakpoints*(self: EditorPlugin): PackedStringArray {.base.} = (discard)
proc getBreakpoints(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).getBreakpoints().encode(r_ret)
template getBreakpoints_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = getBreakpoints

method setWindowLayout*(self: EditorPlugin; configuration: gdref ConfigFile): void {.base.} = (discard)
proc setWindowLayout(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).setWindowLayout(p_args[0].decode(gdref ConfigFile))
template setWindowLayout_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = setWindowLayout

method getWindowLayout*(self: EditorPlugin; configuration: gdref ConfigFile): void {.base.} = (discard)
proc getWindowLayout(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).getWindowLayout(p_args[0].decode(gdref ConfigFile))
template getWindowLayout_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = getWindowLayout

method build*(self: EditorPlugin): bool {.base.} = (discard)
proc build(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).build().encode(r_ret)
template build_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = build

method enablePlugin*(self: EditorPlugin): void {.base.} = (discard)
proc enablePlugin(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).enablePlugin()
template enablePlugin_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = enablePlugin

method disablePlugin*(self: EditorPlugin): void {.base.} = (discard)
proc disablePlugin(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorPlugin](p_instance).disablePlugin()
template disablePlugin_bind*(_: typedesc[EditorPlugin]): ClassCallVirtual = disablePlugin

proc addControlToContainer*(self: EditorPlugin; container: EditorPlugin_CustomControlContainer; control: Control): void =
  expandMethodBind(className EditorPlugin, "add_control_to_container", 3092750152)
  var `?param` = [getPtr container, getPtr control]
  methodbind.ptrcall(self, addr `?param`[0])

proc addControlToBottomPanel*(self: EditorPlugin; control: Control; title: String; shortcut: gdref Shortcut = default gdref Shortcut): Button =
  expandMethodBind(className EditorPlugin, "add_control_to_bottom_panel", 111032269)
  var `?param` = [getPtr control, getPtr title, getPtr shortcut]
  var ret: encoded Button
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Button)

proc addControlToDock*(self: EditorPlugin; slot: EditorPlugin_DockSlot; control: Control; shortcut: gdref Shortcut = default gdref Shortcut): void =
  expandMethodBind(className EditorPlugin, "add_control_to_dock", 2994930786)
  var `?param` = [getPtr slot, getPtr control, getPtr shortcut]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeControlFromDocks*(self: EditorPlugin; control: Control): void =
  expandMethodBind(className EditorPlugin, "remove_control_from_docks", 1496901182)
  var `?param` = [getPtr control]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeControlFromBottomPanel*(self: EditorPlugin; control: Control): void =
  expandMethodBind(className EditorPlugin, "remove_control_from_bottom_panel", 1496901182)
  var `?param` = [getPtr control]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeControlFromContainer*(self: EditorPlugin; container: EditorPlugin_CustomControlContainer; control: Control): void =
  expandMethodBind(className EditorPlugin, "remove_control_from_container", 3092750152)
  var `?param` = [getPtr container, getPtr control]
  methodbind.ptrcall(self, addr `?param`[0])

proc setDockTabIcon*(self: EditorPlugin; control: Control; icon: gdref Texture2D): void =
  expandMethodBind(className EditorPlugin, "set_dock_tab_icon", 3450529724)
  var `?param` = [getPtr control, getPtr icon]
  methodbind.ptrcall(self, addr `?param`[0])

proc addToolMenuItem*(self: EditorPlugin; name: String; callable: Callable): void =
  expandMethodBind(className EditorPlugin, "add_tool_menu_item", 2137474292)
  var `?param` = [getPtr name, getPtr callable]
  methodbind.ptrcall(self, addr `?param`[0])

proc addToolSubmenuItem*(self: EditorPlugin; name: String; submenu: PopupMenu): void =
  expandMethodBind(className EditorPlugin, "add_tool_submenu_item", 1019428915)
  var `?param` = [getPtr name, getPtr submenu]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeToolMenuItem*(self: EditorPlugin; name: String): void =
  expandMethodBind(className EditorPlugin, "remove_tool_menu_item", 83702148)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExportAsMenu*(self: EditorPlugin): PopupMenu =
  expandMethodBind(className EditorPlugin, "get_export_as_menu", 1775878644)
  var ret: encoded PopupMenu
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PopupMenu)

proc addCustomType*(self: EditorPlugin; `type`: String; base: String; script: gdref Script; icon: gdref Texture2D): void =
  expandMethodBind(className EditorPlugin, "add_custom_type", 1986814599)
  var `?param` = [getPtr `type`, getPtr base, getPtr script, getPtr icon]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeCustomType*(self: EditorPlugin; `type`: String): void =
  expandMethodBind(className EditorPlugin, "remove_custom_type", 83702148)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc addAutoloadSingleton*(self: EditorPlugin; name: String; path: String): void =
  expandMethodBind(className EditorPlugin, "add_autoload_singleton", 3186203200)
  var `?param` = [getPtr name, getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeAutoloadSingleton*(self: EditorPlugin; name: String): void =
  expandMethodBind(className EditorPlugin, "remove_autoload_singleton", 83702148)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc updateOverlays*(self: EditorPlugin): int32 =
  expandMethodBind(className EditorPlugin, "update_overlays", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc makeBottomPanelItemVisible*(self: EditorPlugin; item: Control): void =
  expandMethodBind(className EditorPlugin, "make_bottom_panel_item_visible", 1496901182)
  var `?param` = [getPtr item]
  methodbind.ptrcall(self, addr `?param`[0])

proc hideBottomPanel*(self: EditorPlugin): void =
  expandMethodBind(className EditorPlugin, "hide_bottom_panel", 3218959716)
  methodbind.ptrcall(self, nil)

proc getUndoRedo*(self: EditorPlugin): EditorUndoRedoManager =
  expandMethodBind(className EditorPlugin, "get_undo_redo", 773492341)
  var ret: encoded EditorUndoRedoManager
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(EditorUndoRedoManager)

proc addUndoRedoInspectorHookCallback*(self: EditorPlugin; callable: Callable): void =
  expandMethodBind(className EditorPlugin, "add_undo_redo_inspector_hook_callback", 1611583062)
  var `?param` = [getPtr callable]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeUndoRedoInspectorHookCallback*(self: EditorPlugin; callable: Callable): void =
  expandMethodBind(className EditorPlugin, "remove_undo_redo_inspector_hook_callback", 1611583062)
  var `?param` = [getPtr callable]
  methodbind.ptrcall(self, addr `?param`[0])

proc queueSaveLayout*(self: EditorPlugin): void =
  expandMethodBind(className EditorPlugin, "queue_save_layout", 3218959716)
  methodbind.ptrcall(self, nil)

proc addTranslationParserPlugin*(self: EditorPlugin; parser: gdref EditorTranslationParserPlugin): void =
  expandMethodBind(className EditorPlugin, "add_translation_parser_plugin", 3116463128)
  var `?param` = [getPtr parser]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeTranslationParserPlugin*(self: EditorPlugin; parser: gdref EditorTranslationParserPlugin): void =
  expandMethodBind(className EditorPlugin, "remove_translation_parser_plugin", 3116463128)
  var `?param` = [getPtr parser]
  methodbind.ptrcall(self, addr `?param`[0])

proc addImportPlugin*(self: EditorPlugin; importer: gdref EditorImportPlugin; firstPriority: bool = false): void =
  expandMethodBind(className EditorPlugin, "add_import_plugin", 3113975762)
  var `?param` = [getPtr importer, getPtr firstPriority]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeImportPlugin*(self: EditorPlugin; importer: gdref EditorImportPlugin): void =
  expandMethodBind(className EditorPlugin, "remove_import_plugin", 2312482773)
  var `?param` = [getPtr importer]
  methodbind.ptrcall(self, addr `?param`[0])

proc addSceneFormatImporterPlugin*(self: EditorPlugin; sceneFormatImporter: gdref EditorSceneFormatImporter; firstPriority: bool = false): void =
  expandMethodBind(className EditorPlugin, "add_scene_format_importer_plugin", 2764104752)
  var `?param` = [getPtr sceneFormatImporter, getPtr firstPriority]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeSceneFormatImporterPlugin*(self: EditorPlugin; sceneFormatImporter: gdref EditorSceneFormatImporter): void =
  expandMethodBind(className EditorPlugin, "remove_scene_format_importer_plugin", 2637776123)
  var `?param` = [getPtr sceneFormatImporter]
  methodbind.ptrcall(self, addr `?param`[0])

proc addScenePostImportPlugin*(self: EditorPlugin; sceneImportPlugin: gdref EditorScenePostImportPlugin; firstPriority: bool = false): void =
  expandMethodBind(className EditorPlugin, "add_scene_post_import_plugin", 3492436322)
  var `?param` = [getPtr sceneImportPlugin, getPtr firstPriority]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeScenePostImportPlugin*(self: EditorPlugin; sceneImportPlugin: gdref EditorScenePostImportPlugin): void =
  expandMethodBind(className EditorPlugin, "remove_scene_post_import_plugin", 3045178206)
  var `?param` = [getPtr sceneImportPlugin]
  methodbind.ptrcall(self, addr `?param`[0])

proc addExportPlugin*(self: EditorPlugin; plugin: gdref EditorExportPlugin): void =
  expandMethodBind(className EditorPlugin, "add_export_plugin", 4095952207)
  var `?param` = [getPtr plugin]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeExportPlugin*(self: EditorPlugin; plugin: gdref EditorExportPlugin): void =
  expandMethodBind(className EditorPlugin, "remove_export_plugin", 4095952207)
  var `?param` = [getPtr plugin]
  methodbind.ptrcall(self, addr `?param`[0])

proc addNode3DGizmoPlugin*(self: EditorPlugin; plugin: gdref EditorNode3DGizmoPlugin): void =
  expandMethodBind(className EditorPlugin, "add_node_3d_gizmo_plugin", 1541015022)
  var `?param` = [getPtr plugin]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeNode3DGizmoPlugin*(self: EditorPlugin; plugin: gdref EditorNode3DGizmoPlugin): void =
  expandMethodBind(className EditorPlugin, "remove_node_3d_gizmo_plugin", 1541015022)
  var `?param` = [getPtr plugin]
  methodbind.ptrcall(self, addr `?param`[0])

proc addInspectorPlugin*(self: EditorPlugin; plugin: gdref EditorInspectorPlugin): void =
  expandMethodBind(className EditorPlugin, "add_inspector_plugin", 546395733)
  var `?param` = [getPtr plugin]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeInspectorPlugin*(self: EditorPlugin; plugin: gdref EditorInspectorPlugin): void =
  expandMethodBind(className EditorPlugin, "remove_inspector_plugin", 546395733)
  var `?param` = [getPtr plugin]
  methodbind.ptrcall(self, addr `?param`[0])

proc addResourceConversionPlugin*(self: EditorPlugin; plugin: gdref EditorResourceConversionPlugin): void =
  expandMethodBind(className EditorPlugin, "add_resource_conversion_plugin", 2124849111)
  var `?param` = [getPtr plugin]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeResourceConversionPlugin*(self: EditorPlugin; plugin: gdref EditorResourceConversionPlugin): void =
  expandMethodBind(className EditorPlugin, "remove_resource_conversion_plugin", 2124849111)
  var `?param` = [getPtr plugin]
  methodbind.ptrcall(self, addr `?param`[0])

proc setInputEventForwardingAlwaysEnabled*(self: EditorPlugin): void =
  expandMethodBind(className EditorPlugin, "set_input_event_forwarding_always_enabled", 3218959716)
  methodbind.ptrcall(self, nil)

proc setForceDrawOverForwardingEnabled*(self: EditorPlugin): void =
  expandMethodBind(className EditorPlugin, "set_force_draw_over_forwarding_enabled", 3218959716)
  methodbind.ptrcall(self, nil)

proc getEditorInterface*(self: EditorPlugin): EditorInterface =
  expandMethodBind(className EditorPlugin, "get_editor_interface", 4223731786)
  var ret: encoded EditorInterface
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(EditorInterface)

proc getScriptCreateDialog*(self: EditorPlugin): ScriptCreateDialog =
  expandMethodBind(className EditorPlugin, "get_script_create_dialog", 3121871482)
  var ret: encoded ScriptCreateDialog
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(ScriptCreateDialog)

proc addDebuggerPlugin*(self: EditorPlugin; script: gdref EditorDebuggerPlugin): void =
  expandMethodBind(className EditorPlugin, "add_debugger_plugin", 3749880309)
  var `?param` = [getPtr script]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeDebuggerPlugin*(self: EditorPlugin; script: gdref EditorDebuggerPlugin): void =
  expandMethodBind(className EditorPlugin, "remove_debugger_plugin", 3749880309)
  var `?param` = [getPtr script]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPluginVersion*(self: EditorPlugin): String =
  expandMethodBind(className EditorPlugin, "get_plugin_version", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

const EditorPlugin_vmap =
  Node.vmap.concat toTable {
    "forwardcanvasguiinput" : "_forward_canvas_gui_input",
    "forwardcanvasdrawoverviewport" : "_forward_canvas_draw_over_viewport",
    "forwardcanvasforcedrawoverviewport" : "_forward_canvas_force_draw_over_viewport",
    "forward3dguiinput" : "_forward_3d_gui_input",
    "forward3ddrawoverviewport" : "_forward_3d_draw_over_viewport",
    "forward3dforcedrawoverviewport" : "_forward_3d_force_draw_over_viewport",
    "getpluginname" : "_get_plugin_name",
    "getpluginicon" : "_get_plugin_icon",
    "hasmainscreen" : "_has_main_screen",
    "makevisible" : "_make_visible",
    "edit" : "_edit",
    "handles" : "_handles",
    "getstate" : "_get_state",
    "setstate" : "_set_state",
    "clear" : "_clear",
    "getunsavedstatus" : "_get_unsaved_status",
    "saveexternaldata" : "_save_external_data",
    "applychanges" : "_apply_changes",
    "getbreakpoints" : "_get_breakpoints",
    "setwindowlayout" : "_set_window_layout",
    "getwindowlayout" : "_get_window_layout",
    "build" : "_build",
    "enableplugin" : "_enable_plugin",
    "disableplugin" : "_disable_plugin",
    }
template vmap*(_: typedesc[EditorPlugin]): Table[string, string] = EditorPlugin_vmap

proc sceneChanged*(self: EditorPlugin; sceneRoot: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("scene_changed")
  let args = [sceneRoot]
  self.emitSignal(signalname, args)

proc sceneClosed*(self: EditorPlugin; filepath: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("scene_closed")
  let args = [filepath]
  self.emitSignal(signalname, args)

proc mainScreenChanged*(self: EditorPlugin; screenName: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("main_screen_changed")
  let args = [screenName]
  self.emitSignal(signalname, args)

proc resourceSaved*(self: EditorPlugin; resource: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("resource_saved")
  let args = [resource]
  self.emitSignal(signalname, args)

proc sceneSaved*(self: EditorPlugin; filepath: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("scene_saved")
  let args = [filepath]
  self.emitSignal(signalname, args)

proc projectSettingsChanged*(self: EditorPlugin): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("project_settings_changed")
  self.emitSignal(signalname)