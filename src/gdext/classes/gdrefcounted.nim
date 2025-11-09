{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(RefCounted, Object)

proc initRef*(self: RefCounted): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RefCounted, "init_ref", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc reference*(self: RefCounted): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RefCounted, "reference", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc unreference*(self: RefCounted): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RefCounted, "unreference", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc getReferenceCount*(self: RefCounted): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RefCounted, "get_reference_count", 3905245786)
  methodbind.ptrcall(self, [], int32)
