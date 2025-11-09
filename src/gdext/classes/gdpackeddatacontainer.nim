{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(PackedDataContainer, Resource)

proc pack*(self: PackedDataContainer; value: Variant): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PackedDataContainer, "pack", 966674026)
  methodbind.ptrcall(self, [getPtr value], Error)

proc size*(self: PackedDataContainer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PackedDataContainer, "size", 3905245786)
  methodbind.ptrcall(self, [], int32)
