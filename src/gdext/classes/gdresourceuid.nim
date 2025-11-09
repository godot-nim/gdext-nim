{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(ResourceUID, Object)

const InvalidId* = -1

proc idToText*(self: ResourceUID; id: int64): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceUID, "id_to_text", 844755477)
  methodbind.ptrcall(self, [getPtr id], String)

proc textToId*(self: ResourceUID; textId: String): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceUID, "text_to_id", 1321353865)
  methodbind.ptrcall(self, [getPtr textId], int64)

proc createId*(self: ResourceUID): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceUID, "create_id", 2455072627)
  methodbind.ptrcall(self, [], int64)

proc createIdForPath*(self: ResourceUID; path: String): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceUID, "create_id_for_path", 1597066294)
  methodbind.ptrcall(self, [getPtr path], int64)

proc hasId*(self: ResourceUID; id: int64): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceUID, "has_id", 1116898809)
  methodbind.ptrcall(self, [getPtr id], bool)

proc addId*(self: ResourceUID; id: int64; path: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceUID, "add_id", 501894301)
  methodbind.ptrcall(self, [getPtr id, getPtr path], void)

proc setId*(self: ResourceUID; id: int64; path: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceUID, "set_id", 501894301)
  methodbind.ptrcall(self, [getPtr id, getPtr path], void)

proc getIdPath*(self: ResourceUID; id: int64): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceUID, "get_id_path", 844755477)
  methodbind.ptrcall(self, [getPtr id], String)

proc removeId*(self: ResourceUID; id: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceUID, "remove_id", 1286410249)
  methodbind.ptrcall(self, [getPtr id], void)

proc uidToPath*(_: typedesc[ResourceUID]; uid: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceUID, "uid_to_path", 1703090593)
  methodbind.ptrcall([getPtr uid], String)

proc pathToUid*(_: typedesc[ResourceUID]; path: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceUID, "path_to_uid", 1703090593)
  methodbind.ptrcall([getPtr path], String)

proc ensurePath*(_: typedesc[ResourceUID]; pathOrUid: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceUID, "ensure_path", 1703090593)
  methodbind.ptrcall([getPtr pathOrUid], String)
