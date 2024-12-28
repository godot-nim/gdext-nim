{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc idToText*(self: ResourceUID; id: int64): String =
  expandMethodBind(className ResourceUID, "id_to_text", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(String)

proc textToId*(self: ResourceUID; textId: String): int64 =
  expandMethodBind(className ResourceUID, "text_to_id", 1321353865)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr textId], addr ret)
  (addr ret).decode_result(int64)

proc createId*(self: ResourceUID): int64 =
  expandMethodBind(className ResourceUID, "create_id", 2455072627)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

proc hasId*(self: ResourceUID; id: int64): bool =
  expandMethodBind(className ResourceUID, "has_id", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(bool)

proc addId*(self: ResourceUID; id: int64; path: String): void =
  expandMethodBind(className ResourceUID, "add_id", 501894301)
  methodbind.ptrcall(self, [getPtr id, getPtr path])

proc setId*(self: ResourceUID; id: int64; path: String): void =
  expandMethodBind(className ResourceUID, "set_id", 501894301)
  methodbind.ptrcall(self, [getPtr id, getPtr path])

proc getIdPath*(self: ResourceUID; id: int64): String =
  expandMethodBind(className ResourceUID, "get_id_path", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(String)

proc removeId*(self: ResourceUID; id: int64): void =
  expandMethodBind(className ResourceUID, "remove_id", 1286410249)
  methodbind.ptrcall(self, [getPtr id])

const ResourceUID_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ResourceUID]): Table[string, string] = ResourceUID_vmap