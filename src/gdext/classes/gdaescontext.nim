{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc start*(self: AESContext; mode: AESContext_Mode; key: PackedByteArray; iv: PackedByteArray = PackedByteArray()): Error =
  expandMethodBind(className AESContext, "start", 3122411423)
  var `?param` = [getPtr mode, getPtr key, getPtr iv]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc update*(self: AESContext; src: PackedByteArray): PackedByteArray =
  expandMethodBind(className AESContext, "update", 527836100)
  var `?param` = [getPtr src]
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc getIvState*(self: AESContext): PackedByteArray =
  expandMethodBind(className AESContext, "get_iv_state", 2115431945)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

proc finish*(self: AESContext): void =
  expandMethodBind(className AESContext, "finish", 3218959716)
  methodbind.ptrcall(self, nil)

const AESContext_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AESContext]): Table[string, string] = AESContext_vmap