{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc start*(self: AesContext; mode: AesContext_Mode; key: PackedByteArray; iv: PackedByteArray = PackedByteArray()): Error =
  expandMethodBind(className AesContext, "start", 3122411423)
  var `?param` = [getPtr mode, getPtr key, getPtr iv]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc update*(self: AesContext; src: PackedByteArray): PackedByteArray =
  expandMethodBind(className AesContext, "update", 527836100)
  var `?param` = [getPtr src]
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc getIvState*(self: AesContext): PackedByteArray =
  expandMethodBind(className AesContext, "get_iv_state", 2115431945)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

proc finish*(self: AesContext): void =
  expandMethodBind(className AesContext, "finish", 3218959716)
  methodbind.ptrcall(self, nil)

const AesContext_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AesContext]): Table[string, string] = AesContext_vmap