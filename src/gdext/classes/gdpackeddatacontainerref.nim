{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(PackedDataContainerRef, RefCounted)

proc size*(self: PackedDataContainerRef): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PackedDataContainerRef, "size", 3905245786)
  methodbind.ptrcall(self, [], int32)
