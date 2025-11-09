{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(EditorInterface, Object)

proc restartEditor*(self: EditorInterface; save: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "restart_editor", 3216645846)
  methodbind.ptrcall(self, [getPtr save], void)

proc getCommandPalette*(self: EditorInterface): EditorCommandPalette =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_command_palette", 2471163807)
  methodbind.ptrcall(self, [], EditorCommandPalette)

proc getResourceFilesystem*(self: EditorInterface): EditorFileSystem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_resource_filesystem", 780151678)
  methodbind.ptrcall(self, [], EditorFileSystem)

proc getEditorPaths*(self: EditorInterface): EditorPaths =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_editor_paths", 1595760068)
  methodbind.ptrcall(self, [], EditorPaths)

proc getResourcePreviewer*(self: EditorInterface): EditorResourcePreview =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_resource_previewer", 943486957)
  methodbind.ptrcall(self, [], EditorResourcePreview)

proc getSelection*(self: EditorInterface): EditorSelection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_selection", 2690272531)
  methodbind.ptrcall(self, [], EditorSelection)

proc getEditorSettings*(self: EditorInterface): gdref EditorSettings =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_editor_settings", 4086932459)
  methodbind.ptrcall(self, [], gdref EditorSettings)

proc getEditorToaster*(self: EditorInterface): EditorToaster =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_editor_toaster", 3612675797)
  methodbind.ptrcall(self, [], EditorToaster)

proc getEditorUndoRedo*(self: EditorInterface): EditorUndoRedoManager =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_editor_undo_redo", 3819628421)
  methodbind.ptrcall(self, [], EditorUndoRedoManager)

proc makeMeshPreviews*(self: EditorInterface; meshes: TypedArray[gdref Mesh]; previewSize: int32): TypedArray[gdref Texture2D] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "make_mesh_previews", 878078554)
  methodbind.ptrcall(self, [getPtr meshes, getPtr previewSize], TypedArray[gdref Texture2D])

proc setPluginEnabled*(self: EditorInterface; plugin: String; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "set_plugin_enabled", 2678287736)
  methodbind.ptrcall(self, [getPtr plugin, getPtr enabled], void)

proc isPluginEnabled*(self: EditorInterface; plugin: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "is_plugin_enabled", 3927539163)
  methodbind.ptrcall(self, [getPtr plugin], bool)

proc getEditorTheme*(self: EditorInterface): gdref Theme =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_editor_theme", 3846893731)
  methodbind.ptrcall(self, [], gdref Theme)

proc getBaseControl*(self: EditorInterface): Control =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_base_control", 2783021301)
  methodbind.ptrcall(self, [], Control)

proc getEditorMainScreen*(self: EditorInterface): VBoxContainer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_editor_main_screen", 1706218421)
  methodbind.ptrcall(self, [], VBoxContainer)

proc getScriptEditor*(self: EditorInterface): ScriptEditor =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_script_editor", 90868003)
  methodbind.ptrcall(self, [], ScriptEditor)

proc getEditorViewport2D*(self: EditorInterface): SubViewport =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_editor_viewport_2d", 3750751911)
  methodbind.ptrcall(self, [], SubViewport)

proc getEditorViewport3D*(self: EditorInterface; idx: int32 = 0): SubViewport =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_editor_viewport_3d", 1970834490)
  methodbind.ptrcall(self, [getPtr idx], SubViewport)

proc setMainScreenEditor*(self: EditorInterface; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "set_main_screen_editor", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc setDistractionFreeMode*(self: EditorInterface; enter: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "set_distraction_free_mode", 2586408642)
  methodbind.ptrcall(self, [getPtr enter], void)

proc isDistractionFreeModeEnabled*(self: EditorInterface): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "is_distraction_free_mode_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isMultiWindowEnabled*(self: EditorInterface): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "is_multi_window_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getEditorScale*(self: EditorInterface): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_editor_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc popupDialog*(self: EditorInterface; dialog: Window; rect: Rect2i = rect2i(0, 0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "popup_dialog", 2015770942)
  methodbind.ptrcall(self, [getPtr dialog, getPtr rect], void)

proc popupDialogCentered*(self: EditorInterface; dialog: Window; minsize: Vector2i = vector2i(0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "popup_dialog_centered", 346557367)
  methodbind.ptrcall(self, [getPtr dialog, getPtr minsize], void)

proc popupDialogCenteredRatio*(self: EditorInterface; dialog: Window; ratio: Float = 0.8): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "popup_dialog_centered_ratio", 2093669136)
  methodbind.ptrcall(self, [getPtr dialog, getPtr ratio], void)

proc popupDialogCenteredClamped*(self: EditorInterface; dialog: Window; minsize: Vector2i = vector2i(0, 0); fallbackRatio: Float = 0.75): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "popup_dialog_centered_clamped", 3763385571)
  methodbind.ptrcall(self, [getPtr dialog, getPtr minsize, getPtr fallbackRatio], void)

proc getCurrentFeatureProfile*(self: EditorInterface): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_current_feature_profile", 201670096)
  methodbind.ptrcall(self, [], String)

proc setCurrentFeatureProfile*(self: EditorInterface; profileName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "set_current_feature_profile", 83702148)
  methodbind.ptrcall(self, [getPtr profileName], void)

proc popupNodeSelector*(self: EditorInterface; callback: Callable; validTypes: TypedArray[StringName] = newTypedArray[StringName](); currentValue: Node = default Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "popup_node_selector", 2444591477)
  methodbind.ptrcall(self, [getPtr callback, getPtr validTypes, getPtr currentValue], void)

proc popupPropertySelector*(self: EditorInterface; `object`: Object; callback: Callable; typeFilter: PackedInt32Array = PackedInt32Array(); currentValue: String = newGdString()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "popup_property_selector", 2955609011)
  methodbind.ptrcall(self, [getPtr `object`, getPtr callback, getPtr typeFilter, getPtr currentValue], void)

proc popupMethodSelector*(self: EditorInterface; `object`: Object; callback: Callable; currentValue: String = newGdString()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "popup_method_selector", 3585505226)
  methodbind.ptrcall(self, [getPtr `object`, getPtr callback, getPtr currentValue], void)

proc popupQuickOpen*(self: EditorInterface; callback: Callable; baseTypes: TypedArray[StringName] = newTypedArray[StringName]()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "popup_quick_open", 2271411043)
  methodbind.ptrcall(self, [getPtr callback, getPtr baseTypes], void)

proc popupCreateDialog*(self: EditorInterface; callback: Callable; baseType: StringName = default(StringName); currentType: String = newGdString(); dialogTitle: String = newGdString(); typeBlocklist: TypedArray[StringName] = newTypedArray[StringName]()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "popup_create_dialog", 495277124)
  methodbind.ptrcall(self, [getPtr callback, getPtr baseType, getPtr currentType, getPtr dialogTitle, getPtr typeBlocklist], void)

proc getFileSystemDock*(self: EditorInterface): FileSystemDock =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_file_system_dock", 3751012327)
  methodbind.ptrcall(self, [], FileSystemDock)

proc selectFile*(self: EditorInterface; file: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "select_file", 83702148)
  methodbind.ptrcall(self, [getPtr file], void)

proc getSelectedPaths*(self: EditorInterface): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_selected_paths", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getCurrentPath*(self: EditorInterface): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_current_path", 201670096)
  methodbind.ptrcall(self, [], String)

proc getCurrentDirectory*(self: EditorInterface): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_current_directory", 201670096)
  methodbind.ptrcall(self, [], String)

proc getInspector*(self: EditorInterface): EditorInspector =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_inspector", 3517113938)
  methodbind.ptrcall(self, [], EditorInspector)

proc inspectObject*(self: EditorInterface; `object`: Object; forProperty: String = newGdString(); inspectorOnly: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "inspect_object", 127962172)
  methodbind.ptrcall(self, [getPtr `object`, getPtr forProperty, getPtr inspectorOnly], void)

proc editResource*(self: EditorInterface; resource: gdref Resource): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "edit_resource", 968641751)
  methodbind.ptrcall(self, [getPtr resource], void)

proc editNode*(self: EditorInterface; node: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "edit_node", 1078189570)
  methodbind.ptrcall(self, [getPtr node], void)

proc editScript*(self: EditorInterface; script: gdref Script; line: int32 = -1; column: int32 = 0; grabFocus: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "edit_script", 219829402)
  methodbind.ptrcall(self, [getPtr script, getPtr line, getPtr column, getPtr grabFocus], void)

proc openSceneFromPath*(self: EditorInterface; sceneFilepath: String; setInherited: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "open_scene_from_path", 1168363258)
  methodbind.ptrcall(self, [getPtr sceneFilepath, getPtr setInherited], void)

proc reloadSceneFromPath*(self: EditorInterface; sceneFilepath: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "reload_scene_from_path", 83702148)
  methodbind.ptrcall(self, [getPtr sceneFilepath], void)

proc getOpenScenes*(self: EditorInterface): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_open_scenes", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getOpenSceneRoots*(self: EditorInterface): TypedArray[Node] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_open_scene_roots", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Node])

proc getEditedSceneRoot*(self: EditorInterface): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_edited_scene_root", 3160264692)
  methodbind.ptrcall(self, [], Node)

proc saveScene*(self: EditorInterface): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "save_scene", 166280745)
  methodbind.ptrcall(self, [], Error)

proc saveSceneAs*(self: EditorInterface; path: String; withPreview: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "save_scene_as", 3647332257)
  methodbind.ptrcall(self, [getPtr path, getPtr withPreview], void)

proc saveAllScenes*(self: EditorInterface): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "save_all_scenes", 3218959716)
  methodbind.ptrcall(self, [], void)

proc closeScene*(self: EditorInterface): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "close_scene", 166280745)
  methodbind.ptrcall(self, [], Error)

proc markSceneAsUnsaved*(self: EditorInterface): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "mark_scene_as_unsaved", 3218959716)
  methodbind.ptrcall(self, [], void)

proc playMainScene*(self: EditorInterface): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "play_main_scene", 3218959716)
  methodbind.ptrcall(self, [], void)

proc playCurrentScene*(self: EditorInterface): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "play_current_scene", 3218959716)
  methodbind.ptrcall(self, [], void)

proc playCustomScene*(self: EditorInterface; sceneFilepath: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "play_custom_scene", 83702148)
  methodbind.ptrcall(self, [getPtr sceneFilepath], void)

proc stopPlayingScene*(self: EditorInterface): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "stop_playing_scene", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isPlayingScene*(self: EditorInterface): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "is_playing_scene", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getPlayingScene*(self: EditorInterface): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "get_playing_scene", 201670096)
  methodbind.ptrcall(self, [], String)

proc setMovieMakerEnabled*(self: EditorInterface; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "set_movie_maker_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isMovieMakerEnabled*(self: EditorInterface): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInterface, "is_movie_maker_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

template distractionFreeMode*(self: EditorInterface): untyped = self.isDistractionFreeModeEnabled()
template `distractionFreeMode=`*(self: EditorInterface; value) = self.setDistractionFreeMode(value)

template movieMakerEnabled*(self: EditorInterface): untyped = self.isMovieMakerEnabled()
template `movieMakerEnabled=`*(self: EditorInterface; value) = self.setMovieMakerEnabled(value)
