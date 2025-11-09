{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(HMACContext, RefCounted)

proc start*(self: HMACContext; hashType: HashingContext_HashType; key: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HMACContext, "start", 3537364598)
  methodbind.ptrcall(self, [getPtr hashType, getPtr key], Error)

proc update*(self: HMACContext; data: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HMACContext, "update", 680677267)
  methodbind.ptrcall(self, [getPtr data], Error)

proc finish*(self: HMACContext): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HMACContext, "finish", 2115431945)
  methodbind.ptrcall(self, [], PackedByteArray)
