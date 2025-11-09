{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(WeakRef, RefCounted)

proc getRef*(self: WeakRef): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WeakRef, "get_ref", 1214101251)
  methodbind.ptrcall(self, [], Variant)
