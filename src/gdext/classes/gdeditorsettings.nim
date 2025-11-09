{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(EditorSettings, Resource)

const NotificationEditorSettingsChanged* = 10000

proc hasSetting*(self: EditorSettings; name: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSettings, "has_setting", 3927539163)
  methodbind.ptrcall(self, [getPtr name], bool)

proc setSetting*(self: EditorSettings; name: String; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSettings, "set_setting", 402577236)
  methodbind.ptrcall(self, [getPtr name, getPtr value], void)

proc getSetting*(self: EditorSettings; name: String): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSettings, "get_setting", 1868160156)
  methodbind.ptrcall(self, [getPtr name], Variant)

proc erase*(self: EditorSettings; property: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSettings, "erase", 83702148)
  methodbind.ptrcall(self, [getPtr property], void)

proc setInitialValue*(self: EditorSettings; name: StringName; value: Variant; updateCurrent: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSettings, "set_initial_value", 1529169264)
  methodbind.ptrcall(self, [getPtr name, getPtr value, getPtr updateCurrent], void)

proc addPropertyInfo*(self: EditorSettings; info: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSettings, "add_property_info", 4155329257)
  methodbind.ptrcall(self, [getPtr info], void)

proc setProjectMetadata*(self: EditorSettings; section: String; key: String; data: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSettings, "set_project_metadata", 2504492430)
  methodbind.ptrcall(self, [getPtr section, getPtr key, getPtr data], void)

proc getProjectMetadata*(self: EditorSettings; section: String; key: String; default: Variant = default(Variant)): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSettings, "get_project_metadata", 89809366)
  methodbind.ptrcall(self, [getPtr section, getPtr key, getPtr default], Variant)

proc setFavorites*(self: EditorSettings; dirs: PackedStringArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSettings, "set_favorites", 4015028928)
  methodbind.ptrcall(self, [getPtr dirs], void)

proc getFavorites*(self: EditorSettings): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSettings, "get_favorites", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setRecentDirs*(self: EditorSettings; dirs: PackedStringArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSettings, "set_recent_dirs", 4015028928)
  methodbind.ptrcall(self, [getPtr dirs], void)

proc getRecentDirs*(self: EditorSettings): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSettings, "get_recent_dirs", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setBuiltinActionOverride*(self: EditorSettings; name: String; actionsList: TypedArray[gdref InputEvent]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSettings, "set_builtin_action_override", 1209351045)
  methodbind.ptrcall(self, [getPtr name, getPtr actionsList], void)

proc checkChangedSettingsInGroup*(self: EditorSettings; settingPrefix: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSettings, "check_changed_settings_in_group", 3927539163)
  methodbind.ptrcall(self, [getPtr settingPrefix], bool)

proc getChangedSettings*(self: EditorSettings): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSettings, "get_changed_settings", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc markSettingChanged*(self: EditorSettings; setting: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSettings, "mark_setting_changed", 83702148)
  methodbind.ptrcall(self, [getPtr setting], void)
