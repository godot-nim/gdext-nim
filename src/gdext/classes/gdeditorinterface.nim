{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc restartEditor*(self: EditorInterface; save: bool = true): void =
  expandMethodBind(className EditorInterface, "restart_editor", 3216645846)
  var `?param` = [getPtr save]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCommandPalette*(self: EditorInterface): EditorCommandPalette =
  expandMethodBind(className EditorInterface, "get_command_palette", 2471163807)
  var ret: encoded EditorCommandPalette
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(EditorCommandPalette)

proc getResourceFilesystem*(self: EditorInterface): EditorFileSystem =
  expandMethodBind(className EditorInterface, "get_resource_filesystem", 780151678)
  var ret: encoded EditorFileSystem
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(EditorFileSystem)

proc getEditorPaths*(self: EditorInterface): EditorPaths =
  expandMethodBind(className EditorInterface, "get_editor_paths", 1595760068)
  var ret: encoded EditorPaths
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(EditorPaths)

proc getResourcePreviewer*(self: EditorInterface): EditorResourcePreview =
  expandMethodBind(className EditorInterface, "get_resource_previewer", 943486957)
  var ret: encoded EditorResourcePreview
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(EditorResourcePreview)

proc getSelection*(self: EditorInterface): EditorSelection =
  expandMethodBind(className EditorInterface, "get_selection", 2690272531)
  var ret: encoded EditorSelection
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(EditorSelection)

proc getEditorSettings*(self: EditorInterface): gdref EditorSettings =
  expandMethodBind(className EditorInterface, "get_editor_settings", 4086932459)
  var ret: encoded gdref EditorSettings
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref EditorSettings)

proc makeMeshPreviews*(self: EditorInterface; meshes: TypedArray[Mesh]; previewSize: int32): TypedArray[Texture2D] =
  expandMethodBind(className EditorInterface, "make_mesh_previews", 878078554)
  var `?param` = [getPtr meshes, getPtr previewSize]
  var ret: encoded TypedArray[Texture2D]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Texture2D])

proc setPluginEnabled*(self: EditorInterface; plugin: String; enabled: bool): void =
  expandMethodBind(className EditorInterface, "set_plugin_enabled", 2678287736)
  var `?param` = [getPtr plugin, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPluginEnabled*(self: EditorInterface; plugin: String): bool =
  expandMethodBind(className EditorInterface, "is_plugin_enabled", 3927539163)
  var `?param` = [getPtr plugin]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getEditorTheme*(self: EditorInterface): gdref Theme =
  expandMethodBind(className EditorInterface, "get_editor_theme", 3846893731)
  var ret: encoded gdref Theme
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Theme)

proc getBaseControl*(self: EditorInterface): Control =
  expandMethodBind(className EditorInterface, "get_base_control", 2783021301)
  var ret: encoded Control
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control)

proc getEditorMainScreen*(self: EditorInterface): VBoxContainer =
  expandMethodBind(className EditorInterface, "get_editor_main_screen", 1706218421)
  var ret: encoded VBoxContainer
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VBoxContainer)

proc getScriptEditor*(self: EditorInterface): ScriptEditor =
  expandMethodBind(className EditorInterface, "get_script_editor", 90868003)
  var ret: encoded ScriptEditor
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(ScriptEditor)

proc getEditorViewport2D*(self: EditorInterface): SubViewport =
  expandMethodBind(className EditorInterface, "get_editor_viewport_2d", 3750751911)
  var ret: encoded SubViewport
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(SubViewport)

proc getEditorViewport3D*(self: EditorInterface; idx: int32 = 0): SubViewport =
  expandMethodBind(className EditorInterface, "get_editor_viewport_3d", 1970834490)
  var `?param` = [getPtr idx]
  var ret: encoded SubViewport
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(SubViewport)

proc setMainScreenEditor*(self: EditorInterface; name: String): void =
  expandMethodBind(className EditorInterface, "set_main_screen_editor", 83702148)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc setDistractionFreeMode*(self: EditorInterface; enter: bool): void =
  expandMethodBind(className EditorInterface, "set_distraction_free_mode", 2586408642)
  var `?param` = [getPtr enter]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDistractionFreeModeEnabled*(self: EditorInterface): bool =
  expandMethodBind(className EditorInterface, "is_distraction_free_mode_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isMultiWindowEnabled*(self: EditorInterface): bool =
  expandMethodBind(className EditorInterface, "is_multi_window_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getEditorScale*(self: EditorInterface): Float =
  expandMethodBind(className EditorInterface, "get_editor_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc popupDialog*(self: EditorInterface; dialog: Window; rect: Rect2i = rect2i(0, 0, 0, 0)): void =
  expandMethodBind(className EditorInterface, "popup_dialog", 2015770942)
  var `?param` = [getPtr dialog, getPtr rect]
  methodbind.ptrcall(self, addr `?param`[0])

proc popupDialogCentered*(self: EditorInterface; dialog: Window; minsize: Vector2i = vector2i(0, 0)): void =
  expandMethodBind(className EditorInterface, "popup_dialog_centered", 346557367)
  var `?param` = [getPtr dialog, getPtr minsize]
  methodbind.ptrcall(self, addr `?param`[0])

proc popupDialogCenteredRatio*(self: EditorInterface; dialog: Window; ratio: Float = 0.8): void =
  expandMethodBind(className EditorInterface, "popup_dialog_centered_ratio", 2093669136)
  var `?param` = [getPtr dialog, getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc popupDialogCenteredClamped*(self: EditorInterface; dialog: Window; minsize: Vector2i = vector2i(0, 0); fallbackRatio: Float = 0.75): void =
  expandMethodBind(className EditorInterface, "popup_dialog_centered_clamped", 3763385571)
  var `?param` = [getPtr dialog, getPtr minsize, getPtr fallbackRatio]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCurrentFeatureProfile*(self: EditorInterface): String =
  expandMethodBind(className EditorInterface, "get_current_feature_profile", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setCurrentFeatureProfile*(self: EditorInterface; profileName: String): void =
  expandMethodBind(className EditorInterface, "set_current_feature_profile", 83702148)
  var `?param` = [getPtr profileName]
  methodbind.ptrcall(self, addr `?param`[0])

proc popupNodeSelector*(self: EditorInterface; callback: Callable; validTypes: TypedArray[StringName] = TypedArray[StringName](gdarray())): void =
  expandMethodBind(className EditorInterface, "popup_node_selector", 2271411043)
  var `?param` = [getPtr callback, getPtr validTypes]
  methodbind.ptrcall(self, addr `?param`[0])

proc popupPropertySelector*(self: EditorInterface; `object`: Object; callback: Callable; typeFilter: PackedInt32Array = PackedInt32Array()): void =
  expandMethodBind(className EditorInterface, "popup_property_selector", 261221679)
  var `?param` = [getPtr `object`, getPtr callback, getPtr typeFilter]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFileSystemDock*(self: EditorInterface): FileSystemDock =
  expandMethodBind(className EditorInterface, "get_file_system_dock", 3751012327)
  var ret: encoded FileSystemDock
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(FileSystemDock)

proc selectFile*(self: EditorInterface; file: String): void =
  expandMethodBind(className EditorInterface, "select_file", 83702148)
  var `?param` = [getPtr file]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSelectedPaths*(self: EditorInterface): PackedStringArray =
  expandMethodBind(className EditorInterface, "get_selected_paths", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getCurrentPath*(self: EditorInterface): String =
  expandMethodBind(className EditorInterface, "get_current_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getCurrentDirectory*(self: EditorInterface): String =
  expandMethodBind(className EditorInterface, "get_current_directory", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getInspector*(self: EditorInterface): EditorInspector =
  expandMethodBind(className EditorInterface, "get_inspector", 3517113938)
  var ret: encoded EditorInspector
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(EditorInspector)

proc inspectObject*(self: EditorInterface; `object`: Object; forProperty: String = gdstring""; inspectorOnly: bool = false): void =
  expandMethodBind(className EditorInterface, "inspect_object", 127962172)
  var `?param` = [getPtr `object`, getPtr forProperty, getPtr inspectorOnly]
  methodbind.ptrcall(self, addr `?param`[0])

proc editResource*(self: EditorInterface; resource: gdref Resource): void =
  expandMethodBind(className EditorInterface, "edit_resource", 968641751)
  var `?param` = [getPtr resource]
  methodbind.ptrcall(self, addr `?param`[0])

proc editNode*(self: EditorInterface; node: Node): void =
  expandMethodBind(className EditorInterface, "edit_node", 1078189570)
  var `?param` = [getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

proc editScript*(self: EditorInterface; script: gdref Script; line: int32 = -1; column: int32 = 0; grabFocus: bool = true): void =
  expandMethodBind(className EditorInterface, "edit_script", 219829402)
  var `?param` = [getPtr script, getPtr line, getPtr column, getPtr grabFocus]
  methodbind.ptrcall(self, addr `?param`[0])

proc openSceneFromPath*(self: EditorInterface; sceneFilepath: String): void =
  expandMethodBind(className EditorInterface, "open_scene_from_path", 83702148)
  var `?param` = [getPtr sceneFilepath]
  methodbind.ptrcall(self, addr `?param`[0])

proc reloadSceneFromPath*(self: EditorInterface; sceneFilepath: String): void =
  expandMethodBind(className EditorInterface, "reload_scene_from_path", 83702148)
  var `?param` = [getPtr sceneFilepath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOpenScenes*(self: EditorInterface): PackedStringArray =
  expandMethodBind(className EditorInterface, "get_open_scenes", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getEditedSceneRoot*(self: EditorInterface): Node =
  expandMethodBind(className EditorInterface, "get_edited_scene_root", 3160264692)
  var ret: encoded Node
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Node)

proc saveScene*(self: EditorInterface): Error =
  expandMethodBind(className EditorInterface, "save_scene", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc saveSceneAs*(self: EditorInterface; path: String; withPreview: bool = true): void =
  expandMethodBind(className EditorInterface, "save_scene_as", 3647332257)
  var `?param` = [getPtr path, getPtr withPreview]
  methodbind.ptrcall(self, addr `?param`[0])

proc saveAllScenes*(self: EditorInterface): void =
  expandMethodBind(className EditorInterface, "save_all_scenes", 3218959716)
  methodbind.ptrcall(self, nil)

proc markSceneAsUnsaved*(self: EditorInterface): void =
  expandMethodBind(className EditorInterface, "mark_scene_as_unsaved", 3218959716)
  methodbind.ptrcall(self, nil)

proc playMainScene*(self: EditorInterface): void =
  expandMethodBind(className EditorInterface, "play_main_scene", 3218959716)
  methodbind.ptrcall(self, nil)

proc playCurrentScene*(self: EditorInterface): void =
  expandMethodBind(className EditorInterface, "play_current_scene", 3218959716)
  methodbind.ptrcall(self, nil)

proc playCustomScene*(self: EditorInterface; sceneFilepath: String): void =
  expandMethodBind(className EditorInterface, "play_custom_scene", 83702148)
  var `?param` = [getPtr sceneFilepath]
  methodbind.ptrcall(self, addr `?param`[0])

proc stopPlayingScene*(self: EditorInterface): void =
  expandMethodBind(className EditorInterface, "stop_playing_scene", 3218959716)
  methodbind.ptrcall(self, nil)

proc isPlayingScene*(self: EditorInterface): bool =
  expandMethodBind(className EditorInterface, "is_playing_scene", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getPlayingScene*(self: EditorInterface): String =
  expandMethodBind(className EditorInterface, "get_playing_scene", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setMovieMakerEnabled*(self: EditorInterface; enabled: bool): void =
  expandMethodBind(className EditorInterface, "set_movie_maker_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isMovieMakerEnabled*(self: EditorInterface): bool =
  expandMethodBind(className EditorInterface, "is_movie_maker_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template distractionFreeMode*(self: EditorInterface): untyped = self.isDistractionFreeModeEnabled()
template `distractionFreeMode=`*(self: EditorInterface; value) = self.setDistractionFreeMode(value)

template movieMakerEnabled*(self: EditorInterface): untyped = self.isMovieMakerEnabled()
template `movieMakerEnabled=`*(self: EditorInterface; value) = self.setMovieMakerEnabled(value)

const EditorInterface_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorInterface]): Table[string, string] = EditorInterface_vmap