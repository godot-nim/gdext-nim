{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(PCKPacker, RefCounted)

proc pckStart*(self: PCKPacker; pckPath: String; alignment: int32 = 32; key: String = newGdString("0000000000000000000000000000000000000000000000000000000000000000"); encryptDirectory: bool = false): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PCKPacker, "pck_start", 508410629)
  methodbind.ptrcall(self, [getPtr pckPath, getPtr alignment, getPtr key, getPtr encryptDirectory], Error)

proc addFile*(self: PCKPacker; targetPath: String; sourcePath: String; encrypt: bool = false): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PCKPacker, "add_file", 2215643711)
  methodbind.ptrcall(self, [getPtr targetPath, getPtr sourcePath, getPtr encrypt], Error)

proc addFileRemoval*(self: PCKPacker; targetPath: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PCKPacker, "add_file_removal", 166001499)
  methodbind.ptrcall(self, [getPtr targetPath], Error)

proc flush*(self: PCKPacker; verbose: bool = false): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PCKPacker, "flush", 1633102583)
  methodbind.ptrcall(self, [getPtr verbose], Error)
