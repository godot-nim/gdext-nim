{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(AESContext, RefCounted)

proc start*(self: AESContext; mode: AESContext_Mode; key: PackedByteArray; iv: PackedByteArray = PackedByteArray()): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AESContext, "start", 3122411423)
  methodbind.ptrcall(self, [getPtr mode, getPtr key, getPtr iv], Error)

proc update*(self: AESContext; src: PackedByteArray): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AESContext, "update", 527836100)
  methodbind.ptrcall(self, [getPtr src], PackedByteArray)

proc getIvState*(self: AESContext): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AESContext, "get_iv_state", 2115431945)
  methodbind.ptrcall(self, [], PackedByteArray)

proc finish*(self: AESContext): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AESContext, "finish", 3218959716)
  methodbind.ptrcall(self, [], void)
