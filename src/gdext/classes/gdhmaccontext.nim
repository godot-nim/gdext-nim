{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc start*(self: HmacContext; hashType: HashingContext_HashType; key: PackedByteArray): Error =
  expandMethodBind(className HmacContext, "start", 3537364598)
  var `?param` = [getPtr hashType, getPtr key]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc update*(self: HmacContext; data: PackedByteArray): Error =
  expandMethodBind(className HmacContext, "update", 680677267)
  var `?param` = [getPtr data]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc finish*(self: HmacContext): PackedByteArray =
  expandMethodBind(className HmacContext, "finish", 2115431945)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

const HmacContext_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HmacContext]): Table[string, string] = HmacContext_vmap