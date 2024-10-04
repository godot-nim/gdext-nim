{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc open*(self: ZipPacker; path: String; append: ZipPacker_ZipAppend = appendCreate): Error =
  expandMethodBind(className ZipPacker, "open", 1936816515)
  var `?param` = [getPtr path, getPtr append]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc startFile*(self: ZipPacker; path: String): Error =
  expandMethodBind(className ZipPacker, "start_file", 166001499)
  var `?param` = [getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc writeFile*(self: ZipPacker; data: PackedByteArray): Error =
  expandMethodBind(className ZipPacker, "write_file", 680677267)
  var `?param` = [getPtr data]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc closeFile*(self: ZipPacker): Error =
  expandMethodBind(className ZipPacker, "close_file", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc close*(self: ZipPacker): Error =
  expandMethodBind(className ZipPacker, "close", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

const ZipPacker_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ZipPacker]): Table[string, string] = ZipPacker_vmap