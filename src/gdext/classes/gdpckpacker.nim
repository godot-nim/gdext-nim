{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc pckStart*(self: PCKPacker; pckPath: String; alignment: int32 = 32; key: String = newGdString("0000000000000000000000000000000000000000000000000000000000000000"); encryptDirectory: bool = false): Error =
  expandMethodBind(className PCKPacker, "pck_start", 508410629)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr pckPath, getPtr alignment, getPtr key, getPtr encryptDirectory], addr ret)
  (addr ret).decode_result(Error)

proc addFile*(self: PCKPacker; targetPath: String; sourcePath: String; encrypt: bool = false): Error =
  expandMethodBind(className PCKPacker, "add_file", 2215643711)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr targetPath, getPtr sourcePath, getPtr encrypt], addr ret)
  (addr ret).decode_result(Error)

proc addFileRemoval*(self: PCKPacker; targetPath: String): Error =
  expandMethodBind(className PCKPacker, "add_file_removal", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr targetPath], addr ret)
  (addr ret).decode_result(Error)

proc flush*(self: PCKPacker; verbose: bool = false): Error =
  expandMethodBind(className PCKPacker, "flush", 1633102583)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr verbose], addr ret)
  (addr ret).decode_result(Error)
