{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc hasSetting*(self: ProjectSettings; name: String): bool =
  expandMethodBind(className ProjectSettings, "has_setting", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc setSetting*(self: ProjectSettings; name: String; value: Variant): void =
  expandMethodBind(className ProjectSettings, "set_setting", 402577236)
  methodbind.ptrcall(self, [getPtr name, getPtr value])

proc getSetting*(self: ProjectSettings; name: String; defaultValue: Variant = default(Variant)): Variant =
  expandMethodBind(className ProjectSettings, "get_setting", 223050753)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr name, getPtr defaultValue], addr ret)
  (addr ret).decode_result(Variant)

proc getSettingWithOverride*(self: ProjectSettings; name: StringName): Variant =
  expandMethodBind(className ProjectSettings, "get_setting_with_override", 2760726917)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(Variant)

proc getGlobalClassList*(self: ProjectSettings): TypedArray[Dictionary] =
  expandMethodBind(className ProjectSettings, "get_global_class_list", 2915620761)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc setOrder*(self: ProjectSettings; name: String; position: int32): void =
  expandMethodBind(className ProjectSettings, "set_order", 2956805083)
  methodbind.ptrcall(self, [getPtr name, getPtr position])

proc getOrder*(self: ProjectSettings; name: String): int32 =
  expandMethodBind(className ProjectSettings, "get_order", 1321353865)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(int32)

proc setInitialValue*(self: ProjectSettings; name: String; value: Variant): void =
  expandMethodBind(className ProjectSettings, "set_initial_value", 402577236)
  methodbind.ptrcall(self, [getPtr name, getPtr value])

proc setAsBasic*(self: ProjectSettings; name: String; basic: bool): void =
  expandMethodBind(className ProjectSettings, "set_as_basic", 2678287736)
  methodbind.ptrcall(self, [getPtr name, getPtr basic])

proc setAsInternal*(self: ProjectSettings; name: String; internal: bool): void =
  expandMethodBind(className ProjectSettings, "set_as_internal", 2678287736)
  methodbind.ptrcall(self, [getPtr name, getPtr internal])

proc addPropertyInfo*(self: ProjectSettings; hint: Dictionary): void =
  expandMethodBind(className ProjectSettings, "add_property_info", 4155329257)
  methodbind.ptrcall(self, [getPtr hint])

proc setRestartIfChanged*(self: ProjectSettings; name: String; restart: bool): void =
  expandMethodBind(className ProjectSettings, "set_restart_if_changed", 2678287736)
  methodbind.ptrcall(self, [getPtr name, getPtr restart])

proc clear*(self: ProjectSettings; name: String): void =
  expandMethodBind(className ProjectSettings, "clear", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc localizePath*(self: ProjectSettings; path: String): String =
  expandMethodBind(className ProjectSettings, "localize_path", 3135753539)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(String)

proc globalizePath*(self: ProjectSettings; path: String): String =
  expandMethodBind(className ProjectSettings, "globalize_path", 3135753539)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(String)

proc save*(self: ProjectSettings): Error =
  expandMethodBind(className ProjectSettings, "save", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Error)

proc loadResourcePack*(self: ProjectSettings; pack: String; replaceFiles: bool = true; offset: int32 = 0): bool =
  expandMethodBind(className ProjectSettings, "load_resource_pack", 708980503)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr pack, getPtr replaceFiles, getPtr offset], addr ret)
  (addr ret).decode_result(bool)

proc saveCustom*(self: ProjectSettings; file: String): Error =
  expandMethodBind(className ProjectSettings, "save_custom", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr file], addr ret)
  (addr ret).decode_result(Error)

const ProjectSettings_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ProjectSettings]): Table[string, string] = ProjectSettings_vmap

proc settingsChanged*(self: ProjectSettings): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("settings_changed")
  self.emitSignal(signalname)