{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(ProjectSettings, Object)

proc hasSetting*(self: ProjectSettings; name: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "has_setting", 3927539163)
  methodbind.ptrcall(self, [getPtr name], bool)

proc setSetting*(self: ProjectSettings; name: String; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "set_setting", 402577236)
  methodbind.ptrcall(self, [getPtr name, getPtr value], void)

proc getSetting*(self: ProjectSettings; name: String; defaultValue: Variant = default(Variant)): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "get_setting", 223050753)
  methodbind.ptrcall(self, [getPtr name, getPtr defaultValue], Variant)

proc getSettingWithOverride*(self: ProjectSettings; name: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "get_setting_with_override", 2760726917)
  methodbind.ptrcall(self, [getPtr name], Variant)

proc getGlobalClassList*(self: ProjectSettings): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "get_global_class_list", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[Dictionary])

proc getSettingWithOverrideAndCustomFeatures*(self: ProjectSettings; name: StringName; features: PackedStringArray): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "get_setting_with_override_and_custom_features", 2434817427)
  methodbind.ptrcall(self, [getPtr name, getPtr features], Variant)

proc setOrder*(self: ProjectSettings; name: String; position: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "set_order", 2956805083)
  methodbind.ptrcall(self, [getPtr name, getPtr position], void)

proc getOrder*(self: ProjectSettings; name: String): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "get_order", 1321353865)
  methodbind.ptrcall(self, [getPtr name], int32)

proc setInitialValue*(self: ProjectSettings; name: String; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "set_initial_value", 402577236)
  methodbind.ptrcall(self, [getPtr name, getPtr value], void)

proc setAsBasic*(self: ProjectSettings; name: String; basic: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "set_as_basic", 2678287736)
  methodbind.ptrcall(self, [getPtr name, getPtr basic], void)

proc setAsInternal*(self: ProjectSettings; name: String; internal: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "set_as_internal", 2678287736)
  methodbind.ptrcall(self, [getPtr name, getPtr internal], void)

proc addPropertyInfo*(self: ProjectSettings; hint: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "add_property_info", 4155329257)
  methodbind.ptrcall(self, [getPtr hint], void)

proc setRestartIfChanged*(self: ProjectSettings; name: String; restart: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "set_restart_if_changed", 2678287736)
  methodbind.ptrcall(self, [getPtr name, getPtr restart], void)

proc clear*(self: ProjectSettings; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "clear", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc localizePath*(self: ProjectSettings; path: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "localize_path", 3135753539)
  methodbind.ptrcall(self, [getPtr path], String)

proc globalizePath*(self: ProjectSettings; path: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "globalize_path", 3135753539)
  methodbind.ptrcall(self, [getPtr path], String)

proc save*(self: ProjectSettings): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "save", 166280745)
  methodbind.ptrcall(self, [], Error)

proc loadResourcePack*(self: ProjectSettings; pack: String; replaceFiles: bool = true; offset: int32 = 0): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "load_resource_pack", 708980503)
  methodbind.ptrcall(self, [getPtr pack, getPtr replaceFiles, getPtr offset], bool)

proc saveCustom*(self: ProjectSettings; file: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProjectSettings, "save_custom", 166001499)
  methodbind.ptrcall(self, [getPtr file], Error)
