{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(ZIPReader, RefCounted)

proc open*(self: ZIPReader; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ZIPReader, "open", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

proc close*(self: ZIPReader): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ZIPReader, "close", 166280745)
  methodbind.ptrcall(self, [], Error)

proc getFiles*(self: ZIPReader): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ZIPReader, "get_files", 2981934095)
  methodbind.ptrcall(self, [], PackedStringArray)

proc readFile*(self: ZIPReader; path: String; caseSensitive: bool = true): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ZIPReader, "read_file", 740857591)
  methodbind.ptrcall(self, [getPtr path, getPtr caseSensitive], PackedByteArray)

proc fileExists*(self: ZIPReader; path: String; caseSensitive: bool = true): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ZIPReader, "file_exists", 35364943)
  methodbind.ptrcall(self, [getPtr path, getPtr caseSensitive], bool)

proc getCompressionLevel*(self: ZIPReader; path: String; caseSensitive: bool = true): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ZIPReader, "get_compression_level", 3694577386)
  methodbind.ptrcall(self, [getPtr path, getPtr caseSensitive], int32)
