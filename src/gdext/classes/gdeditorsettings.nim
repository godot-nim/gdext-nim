{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc hasSetting*(self: EditorSettings; name: String): bool =
  expandMethodBind(className EditorSettings, "has_setting", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc setSetting*(self: EditorSettings; name: String; value: Variant): void =
  expandMethodBind(className EditorSettings, "set_setting", 402577236)
  methodbind.ptrcall(self, [getPtr name, getPtr value])

proc getSetting*(self: EditorSettings; name: String): Variant =
  expandMethodBind(className EditorSettings, "get_setting", 1868160156)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(Variant)

proc erase*(self: EditorSettings; property: String): void =
  expandMethodBind(className EditorSettings, "erase", 83702148)
  methodbind.ptrcall(self, [getPtr property])

proc setInitialValue*(self: EditorSettings; name: StringName; value: Variant; updateCurrent: bool): void =
  expandMethodBind(className EditorSettings, "set_initial_value", 1529169264)
  methodbind.ptrcall(self, [getPtr name, getPtr value, getPtr updateCurrent])

proc addPropertyInfo*(self: EditorSettings; info: Dictionary): void =
  expandMethodBind(className EditorSettings, "add_property_info", 4155329257)
  methodbind.ptrcall(self, [getPtr info])

proc setProjectMetadata*(self: EditorSettings; section: String; key: String; data: Variant): void =
  expandMethodBind(className EditorSettings, "set_project_metadata", 2504492430)
  methodbind.ptrcall(self, [getPtr section, getPtr key, getPtr data])

proc getProjectMetadata*(self: EditorSettings; section: String; key: String; default: Variant = default(Variant)): Variant =
  expandMethodBind(className EditorSettings, "get_project_metadata", 89809366)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr section, getPtr key, getPtr default], addr ret)
  (addr ret).decode_result(Variant)

proc setFavorites*(self: EditorSettings; dirs: PackedStringArray): void =
  expandMethodBind(className EditorSettings, "set_favorites", 4015028928)
  methodbind.ptrcall(self, [getPtr dirs])

proc getFavorites*(self: EditorSettings): PackedStringArray =
  expandMethodBind(className EditorSettings, "get_favorites", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setRecentDirs*(self: EditorSettings; dirs: PackedStringArray): void =
  expandMethodBind(className EditorSettings, "set_recent_dirs", 4015028928)
  methodbind.ptrcall(self, [getPtr dirs])

proc getRecentDirs*(self: EditorSettings): PackedStringArray =
  expandMethodBind(className EditorSettings, "get_recent_dirs", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setBuiltinActionOverride*(self: EditorSettings; name: String; actionsList: TypedArray[InputEvent]): void =
  expandMethodBind(className EditorSettings, "set_builtin_action_override", 1209351045)
  methodbind.ptrcall(self, [getPtr name, getPtr actionsList])

proc checkChangedSettingsInGroup*(self: EditorSettings; settingPrefix: String): bool =
  expandMethodBind(className EditorSettings, "check_changed_settings_in_group", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr settingPrefix], addr ret)
  (addr ret).decode_result(bool)

proc getChangedSettings*(self: EditorSettings): PackedStringArray =
  expandMethodBind(className EditorSettings, "get_changed_settings", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc markSettingChanged*(self: EditorSettings; setting: String): void =
  expandMethodBind(className EditorSettings, "mark_setting_changed", 83702148)
  methodbind.ptrcall(self, [getPtr setting])

const EditorSettings_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorSettings]): Table[string, string] = EditorSettings_vmap

proc settingsChanged*(self: EditorSettings): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("settings_changed")
  self.emitSignal(signalname)