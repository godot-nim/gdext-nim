{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(HashingContext, RefCounted)

proc start*(self: HashingContext; `type`: HashingContext_HashType): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HashingContext, "start", 3940338335)
  methodbind.ptrcall(self, [getPtr `type`], Error)

proc update*(self: HashingContext; chunk: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HashingContext, "update", 680677267)
  methodbind.ptrcall(self, [getPtr chunk], Error)

proc finish*(self: HashingContext): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HashingContext, "finish", 2115431945)
  methodbind.ptrcall(self, [], PackedByteArray)
