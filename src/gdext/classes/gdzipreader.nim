{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc open*(self: ZIPReader; path: String): Error =
  expandMethodBind(className ZIPReader, "open", 166001499)
  var `?param` = [getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc close*(self: ZIPReader): Error =
  expandMethodBind(className ZIPReader, "close", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc getFiles*(self: ZIPReader): PackedStringArray =
  expandMethodBind(className ZIPReader, "get_files", 2981934095)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc readFile*(self: ZIPReader; path: String; caseSensitive: bool = true): PackedByteArray =
  expandMethodBind(className ZIPReader, "read_file", 740857591)
  var `?param` = [getPtr path, getPtr caseSensitive]
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc fileExists*(self: ZIPReader; path: String; caseSensitive: bool = true): bool =
  expandMethodBind(className ZIPReader, "file_exists", 35364943)
  var `?param` = [getPtr path, getPtr caseSensitive]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

const ZIPReader_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ZIPReader]): Table[string, string] = ZIPReader_vmap