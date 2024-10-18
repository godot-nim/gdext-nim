{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc pckStart*(self: PckPacker; pckName: String; alignment: int32 = 32; key: String = gdstring"0000000000000000000000000000000000000000000000000000000000000000"; encryptDirectory: bool = false): Error =
  expandMethodBind(className PckPacker, "pck_start", 508410629)
  var `?param` = [getPtr pckName, getPtr alignment, getPtr key, getPtr encryptDirectory]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc addFile*(self: PckPacker; pckPath: String; sourcePath: String; encrypt: bool = false): Error =
  expandMethodBind(className PckPacker, "add_file", 2215643711)
  var `?param` = [getPtr pckPath, getPtr sourcePath, getPtr encrypt]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc flush*(self: PckPacker; verbose: bool = false): Error =
  expandMethodBind(className PckPacker, "flush", 1633102583)
  var `?param` = [getPtr verbose]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

const PckPacker_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PckPacker]): Table[string, string] = PckPacker_vmap