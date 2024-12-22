{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc open*(self: ZIPPacker; path: String; append: ZIPPacker_ZipAppend = appendCreate): Error =
  expandMethodBind(className ZIPPacker, "open", 1936816515)
  var `?param` = [getPtr path, getPtr append]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc startFile*(self: ZIPPacker; path: String): Error =
  expandMethodBind(className ZIPPacker, "start_file", 166001499)
  var `?param` = [getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc writeFile*(self: ZIPPacker; data: PackedByteArray): Error =
  expandMethodBind(className ZIPPacker, "write_file", 680677267)
  var `?param` = [getPtr data]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc closeFile*(self: ZIPPacker): Error =
  expandMethodBind(className ZIPPacker, "close_file", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc close*(self: ZIPPacker): Error =
  expandMethodBind(className ZIPPacker, "close", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

const ZIPPacker_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ZIPPacker]): Table[string, string] = ZIPPacker_vmap