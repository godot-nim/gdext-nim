{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setValue*(self: ConfigFile; section: String; key: String; value: Variant): void =
  expandMethodBind(className ConfigFile, "set_value", 2504492430)
  var `?param` = [getPtr section, getPtr key, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getValue*(self: ConfigFile; section: String; key: String; default: Variant = default(Variant)): Variant =
  expandMethodBind(className ConfigFile, "get_value", 89809366)
  var `?param` = [getPtr section, getPtr key, getPtr default]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc hasSection*(self: ConfigFile; section: String): bool =
  expandMethodBind(className ConfigFile, "has_section", 3927539163)
  var `?param` = [getPtr section]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc hasSectionKey*(self: ConfigFile; section: String; key: String): bool =
  expandMethodBind(className ConfigFile, "has_section_key", 820780508)
  var `?param` = [getPtr section, getPtr key]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getSections*(self: ConfigFile): PackedStringArray =
  expandMethodBind(className ConfigFile, "get_sections", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getSectionKeys*(self: ConfigFile; section: String): PackedStringArray =
  expandMethodBind(className ConfigFile, "get_section_keys", 4291131558)
  var `?param` = [getPtr section]
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc eraseSection*(self: ConfigFile; section: String): void =
  expandMethodBind(className ConfigFile, "erase_section", 83702148)
  var `?param` = [getPtr section]
  methodbind.ptrcall(self, addr `?param`[0])

proc eraseSectionKey*(self: ConfigFile; section: String; key: String): void =
  expandMethodBind(className ConfigFile, "erase_section_key", 3186203200)
  var `?param` = [getPtr section, getPtr key]
  methodbind.ptrcall(self, addr `?param`[0])

proc load*(self: ConfigFile; path: String): Error =
  expandMethodBind(className ConfigFile, "load", 166001499)
  var `?param` = [getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc parse*(self: ConfigFile; data: String): Error =
  expandMethodBind(className ConfigFile, "parse", 166001499)
  var `?param` = [getPtr data]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc save*(self: ConfigFile; path: String): Error =
  expandMethodBind(className ConfigFile, "save", 166001499)
  var `?param` = [getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc encodeToText*(self: ConfigFile): String =
  expandMethodBind(className ConfigFile, "encode_to_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc loadEncrypted*(self: ConfigFile; path: String; key: PackedByteArray): Error =
  expandMethodBind(className ConfigFile, "load_encrypted", 887037711)
  var `?param` = [getPtr path, getPtr key]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc loadEncryptedPass*(self: ConfigFile; path: String; password: String): Error =
  expandMethodBind(className ConfigFile, "load_encrypted_pass", 852856452)
  var `?param` = [getPtr path, getPtr password]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc saveEncrypted*(self: ConfigFile; path: String; key: PackedByteArray): Error =
  expandMethodBind(className ConfigFile, "save_encrypted", 887037711)
  var `?param` = [getPtr path, getPtr key]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc saveEncryptedPass*(self: ConfigFile; path: String; password: String): Error =
  expandMethodBind(className ConfigFile, "save_encrypted_pass", 852856452)
  var `?param` = [getPtr path, getPtr password]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc clear*(self: ConfigFile): void =
  expandMethodBind(className ConfigFile, "clear", 3218959716)
  methodbind.ptrcall(self, nil)

const ConfigFile_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ConfigFile]): Table[string, string] = ConfigFile_vmap