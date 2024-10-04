{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc open*(self: ZipReader; path: String): Error =
  expandMethodBind(className ZipReader, "open", 166001499)
  var `?param` = [getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc close*(self: ZipReader): Error =
  expandMethodBind(className ZipReader, "close", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc getFiles*(self: ZipReader): PackedStringArray =
  expandMethodBind(className ZipReader, "get_files", 2981934095)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc readFile*(self: ZipReader; path: String; caseSensitive: bool = true): PackedByteArray =
  expandMethodBind(className ZipReader, "read_file", 740857591)
  var `?param` = [getPtr path, getPtr caseSensitive]
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc fileExists*(self: ZipReader; path: String; caseSensitive: bool = true): bool =
  expandMethodBind(className ZipReader, "file_exists", 35364943)
  var `?param` = [getPtr path, getPtr caseSensitive]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

const ZipReader_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ZipReader]): Table[string, string] = ZipReader_vmap