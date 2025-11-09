{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(ConfigFile, RefCounted)

proc setValue*(self: ConfigFile; section: String; key: String; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfigFile, "set_value", 2504492430)
  methodbind.ptrcall(self, [getPtr section, getPtr key, getPtr value], void)

proc getValue*(self: ConfigFile; section: String; key: String; default: Variant = default(Variant)): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfigFile, "get_value", 89809366)
  methodbind.ptrcall(self, [getPtr section, getPtr key, getPtr default], Variant)

proc hasSection*(self: ConfigFile; section: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfigFile, "has_section", 3927539163)
  methodbind.ptrcall(self, [getPtr section], bool)

proc hasSectionKey*(self: ConfigFile; section: String; key: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfigFile, "has_section_key", 820780508)
  methodbind.ptrcall(self, [getPtr section, getPtr key], bool)

proc getSections*(self: ConfigFile): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfigFile, "get_sections", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getSectionKeys*(self: ConfigFile; section: String): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfigFile, "get_section_keys", 4291131558)
  methodbind.ptrcall(self, [getPtr section], PackedStringArray)

proc eraseSection*(self: ConfigFile; section: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfigFile, "erase_section", 83702148)
  methodbind.ptrcall(self, [getPtr section], void)

proc eraseSectionKey*(self: ConfigFile; section: String; key: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfigFile, "erase_section_key", 3186203200)
  methodbind.ptrcall(self, [getPtr section, getPtr key], void)

proc load*(self: ConfigFile; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfigFile, "load", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

proc parse*(self: ConfigFile; data: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfigFile, "parse", 166001499)
  methodbind.ptrcall(self, [getPtr data], Error)

proc save*(self: ConfigFile; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfigFile, "save", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

proc encodeToText*(self: ConfigFile): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfigFile, "encode_to_text", 201670096)
  methodbind.ptrcall(self, [], String)

proc loadEncrypted*(self: ConfigFile; path: String; key: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfigFile, "load_encrypted", 887037711)
  methodbind.ptrcall(self, [getPtr path, getPtr key], Error)

proc loadEncryptedPass*(self: ConfigFile; path: String; password: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfigFile, "load_encrypted_pass", 852856452)
  methodbind.ptrcall(self, [getPtr path, getPtr password], Error)

proc saveEncrypted*(self: ConfigFile; path: String; key: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfigFile, "save_encrypted", 887037711)
  methodbind.ptrcall(self, [getPtr path, getPtr key], Error)

proc saveEncryptedPass*(self: ConfigFile; path: String; password: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfigFile, "save_encrypted_pass", 852856452)
  methodbind.ptrcall(self, [getPtr path, getPtr password], Error)

proc clear*(self: ConfigFile): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfigFile, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)
