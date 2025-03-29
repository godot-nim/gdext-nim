{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc createFromString*(_: typedesc[RegEx]; pattern: String; showError: bool = true): gdref RegEx =
  expandMethodBind(className RegEx, "create_from_string", 4249111514)
  var ret: encoded gdref RegEx
  methodbind.ptrcall([getPtr pattern, getPtr showError], addr ret)
  (addr ret).decode_result(gdref RegEx)

proc clear*(self: RegEx): void =
  expandMethodBind(className RegEx, "clear", 3218959716)
  methodbind.ptrcall(self, [])

proc compile*(self: RegEx; pattern: String; showError: bool = true): Error =
  expandMethodBind(className RegEx, "compile", 3565188097)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr pattern, getPtr showError], addr ret)
  (addr ret).decode_result(Error)

proc search*(self: RegEx; subject: String; offset: int32 = 0; `end`: int32 = -1): gdref RegExMatch =
  expandMethodBind(className RegEx, "search", 3365977994)
  var ret: encoded gdref RegExMatch
  methodbind.ptrcall(self, [getPtr subject, getPtr offset, getPtr `end`], addr ret)
  (addr ret).decode_result(gdref RegExMatch)

proc searchAll*(self: RegEx; subject: String; offset: int32 = 0; `end`: int32 = -1): TypedArray[gdref RegExMatch] =
  expandMethodBind(className RegEx, "search_all", 849021363)
  var ret: encoded TypedArray[gdref RegExMatch]
  methodbind.ptrcall(self, [getPtr subject, getPtr offset, getPtr `end`], addr ret)
  (addr ret).decode_result(TypedArray[gdref RegExMatch])

proc sub*(self: RegEx; subject: String; replacement: String; all: bool = false; offset: int32 = 0; `end`: int32 = -1): String =
  expandMethodBind(className RegEx, "sub", 54019702)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr subject, getPtr replacement, getPtr all, getPtr offset, getPtr `end`], addr ret)
  (addr ret).decode_result(String)

proc isValid*(self: RegEx): bool =
  expandMethodBind(className RegEx, "is_valid", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getPattern*(self: RegEx): String =
  expandMethodBind(className RegEx, "get_pattern", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getGroupCount*(self: RegEx): int32 =
  expandMethodBind(className RegEx, "get_group_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getNames*(self: RegEx): PackedStringArray =
  expandMethodBind(className RegEx, "get_names", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)
