{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(RegEx, RefCounted)

proc createFromString*(_: typedesc[RegEx]; pattern: String; showError: bool = true): gdref RegEx =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RegEx, "create_from_string", 4249111514)
  methodbind.ptrcall([getPtr pattern, getPtr showError], gdref RegEx)

proc clear*(self: RegEx): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RegEx, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc compile*(self: RegEx; pattern: String; showError: bool = true): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RegEx, "compile", 3565188097)
  methodbind.ptrcall(self, [getPtr pattern, getPtr showError], Error)

proc search*(self: RegEx; subject: String; offset: int32 = 0; `end`: int32 = -1): gdref RegExMatch =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RegEx, "search", 3365977994)
  methodbind.ptrcall(self, [getPtr subject, getPtr offset, getPtr `end`], gdref RegExMatch)

proc searchAll*(self: RegEx; subject: String; offset: int32 = 0; `end`: int32 = -1): TypedArray[gdref RegExMatch] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RegEx, "search_all", 849021363)
  methodbind.ptrcall(self, [getPtr subject, getPtr offset, getPtr `end`], TypedArray[gdref RegExMatch])

proc sub*(self: RegEx; subject: String; replacement: String; all: bool = false; offset: int32 = 0; `end`: int32 = -1): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RegEx, "sub", 54019702)
  methodbind.ptrcall(self, [getPtr subject, getPtr replacement, getPtr all, getPtr offset, getPtr `end`], String)

proc isValid*(self: RegEx): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RegEx, "is_valid", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getPattern*(self: RegEx): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RegEx, "get_pattern", 201670096)
  methodbind.ptrcall(self, [], String)

proc getGroupCount*(self: RegEx): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RegEx, "get_group_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getNames*(self: RegEx): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RegEx, "get_names", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)
