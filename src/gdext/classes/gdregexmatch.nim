{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(RegExMatch, RefCounted)

proc getSubject*(self: RegExMatch): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RegExMatch, "get_subject", 201670096)
  methodbind.ptrcall(self, [], String)

proc getGroupCount*(self: RegExMatch): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RegExMatch, "get_group_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getNames*(self: RegExMatch): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RegExMatch, "get_names", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc getStrings*(self: RegExMatch): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RegExMatch, "get_strings", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getString*(self: RegExMatch; name: Variant = default(Variant)): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RegExMatch, "get_string", 687115856)
  methodbind.ptrcall(self, [getPtr name], String)

proc getStart*(self: RegExMatch; name: Variant = default(Variant)): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RegExMatch, "get_start", 490464691)
  methodbind.ptrcall(self, [getPtr name], int32)

proc getEnd*(self: RegExMatch; name: Variant = default(Variant)): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RegExMatch, "get_end", 490464691)
  methodbind.ptrcall(self, [getPtr name], int32)

template subject*(self: RegExMatch): untyped = self.getSubject()

template names*(self: RegExMatch): untyped = self.getNames()

template strings*(self: RegExMatch): untyped = self.getStrings()
