{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc start*(self: HMACContext; hashType: HashingContext_HashType; key: PackedByteArray): Error =
  expandMethodBind(className HMACContext, "start", 3537364598)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr hashType, getPtr key], addr ret)
  (addr ret).decode_result(Error)

proc update*(self: HMACContext; data: PackedByteArray): Error =
  expandMethodBind(className HMACContext, "update", 680677267)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr data], addr ret)
  (addr ret).decode_result(Error)

proc finish*(self: HMACContext): PackedByteArray =
  expandMethodBind(className HMACContext, "finish", 2115431945)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedByteArray)

const HMACContext_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HMACContext]): Table[string, string] = HMACContext_vmap