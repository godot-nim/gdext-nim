{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc hasSetting*(self: EditorSettings; name: String): bool =
  expandMethodBind(className EditorSettings, "has_setting", 3927539163)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setSetting*(self: EditorSettings; name: String; value: Variant): void =
  expandMethodBind(className EditorSettings, "set_setting", 402577236)
  var `?param` = [getPtr name, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSetting*(self: EditorSettings; name: String): Variant =
  expandMethodBind(className EditorSettings, "get_setting", 1868160156)
  var `?param` = [getPtr name]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc erase*(self: EditorSettings; property: String): void =
  expandMethodBind(className EditorSettings, "erase", 83702148)
  var `?param` = [getPtr property]
  methodbind.ptrcall(self, addr `?param`[0])

proc setInitialValue*(self: EditorSettings; name: StringName; value: Variant; updateCurrent: bool): void =
  expandMethodBind(className EditorSettings, "set_initial_value", 1529169264)
  var `?param` = [getPtr name, getPtr value, getPtr updateCurrent]
  methodbind.ptrcall(self, addr `?param`[0])

proc addPropertyInfo*(self: EditorSettings; info: Dictionary): void =
  expandMethodBind(className EditorSettings, "add_property_info", 4155329257)
  var `?param` = [getPtr info]
  methodbind.ptrcall(self, addr `?param`[0])

proc setProjectMetadata*(self: EditorSettings; section: String; key: String; data: Variant): void =
  expandMethodBind(className EditorSettings, "set_project_metadata", 2504492430)
  var `?param` = [getPtr section, getPtr key, getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc getProjectMetadata*(self: EditorSettings; section: String; key: String; default: Variant = default(Variant)): Variant =
  expandMethodBind(className EditorSettings, "get_project_metadata", 89809366)
  var `?param` = [getPtr section, getPtr key, getPtr default]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setFavorites*(self: EditorSettings; dirs: PackedStringArray): void =
  expandMethodBind(className EditorSettings, "set_favorites", 4015028928)
  var `?param` = [getPtr dirs]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFavorites*(self: EditorSettings): PackedStringArray =
  expandMethodBind(className EditorSettings, "get_favorites", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setRecentDirs*(self: EditorSettings; dirs: PackedStringArray): void =
  expandMethodBind(className EditorSettings, "set_recent_dirs", 4015028928)
  var `?param` = [getPtr dirs]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRecentDirs*(self: EditorSettings): PackedStringArray =
  expandMethodBind(className EditorSettings, "get_recent_dirs", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setBuiltinActionOverride*(self: EditorSettings; name: String; actionsList: gdref InputEvent): void =
  expandMethodBind(className EditorSettings, "set_builtin_action_override", 1209351045)
  var `?param` = [getPtr name, getPtr actionsList]
  methodbind.ptrcall(self, addr `?param`[0])

proc checkChangedSettingsInGroup*(self: EditorSettings; settingPrefix: String): bool =
  expandMethodBind(className EditorSettings, "check_changed_settings_in_group", 3927539163)
  var `?param` = [getPtr settingPrefix]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getChangedSettings*(self: EditorSettings): PackedStringArray =
  expandMethodBind(className EditorSettings, "get_changed_settings", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc markSettingChanged*(self: EditorSettings; setting: String): void =
  expandMethodBind(className EditorSettings, "mark_setting_changed", 83702148)
  var `?param` = [getPtr setting]
  methodbind.ptrcall(self, addr `?param`[0])

const EditorSettings_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorSettings]): Table[string, string] = EditorSettings_vmap

proc settingsChanged*(self: EditorSettings): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("settings_changed")
  self.emitSignal(signalname)