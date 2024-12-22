{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc pckStart*(self: PCKPacker; pckName: String; alignment: int32 = 32; key: String = gdstring"0000000000000000000000000000000000000000000000000000000000000000"; encryptDirectory: bool = false): Error =
  expandMethodBind(className PCKPacker, "pck_start", 508410629)
  var `?param` = [getPtr pckName, getPtr alignment, getPtr key, getPtr encryptDirectory]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc addFile*(self: PCKPacker; pckPath: String; sourcePath: String; encrypt: bool = false): Error =
  expandMethodBind(className PCKPacker, "add_file", 2215643711)
  var `?param` = [getPtr pckPath, getPtr sourcePath, getPtr encrypt]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc flush*(self: PCKPacker; verbose: bool = false): Error =
  expandMethodBind(className PCKPacker, "flush", 1633102583)
  var `?param` = [getPtr verbose]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

const PCKPacker_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PCKPacker]): Table[string, string] = PCKPacker_vmap