{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc idToText*(self: ResourceUid; id: int64): String =
  expandMethodBind(className ResourceUid, "id_to_text", 844755477)
  var `?param` = [getPtr id]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc textToId*(self: ResourceUid; textId: String): int64 =
  expandMethodBind(className ResourceUid, "text_to_id", 1321353865)
  var `?param` = [getPtr textId]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc createId*(self: ResourceUid): int64 =
  expandMethodBind(className ResourceUid, "create_id", 2455072627)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

proc hasId*(self: ResourceUid; id: int64): bool =
  expandMethodBind(className ResourceUid, "has_id", 1116898809)
  var `?param` = [getPtr id]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc addId*(self: ResourceUid; id: int64; path: String): void =
  expandMethodBind(className ResourceUid, "add_id", 501894301)
  var `?param` = [getPtr id, getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc setId*(self: ResourceUid; id: int64; path: String): void =
  expandMethodBind(className ResourceUid, "set_id", 501894301)
  var `?param` = [getPtr id, getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIdPath*(self: ResourceUid; id: int64): String =
  expandMethodBind(className ResourceUid, "get_id_path", 844755477)
  var `?param` = [getPtr id]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc removeId*(self: ResourceUid; id: int64): void =
  expandMethodBind(className ResourceUid, "remove_id", 1286410249)
  var `?param` = [getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

const ResourceUid_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ResourceUid]): Table[string, string] = ResourceUid_vmap