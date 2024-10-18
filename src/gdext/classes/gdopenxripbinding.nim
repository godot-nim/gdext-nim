{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setAction*(self: OpenXripBinding; action: gdref OpenXrAction): void =
  expandMethodBind(className OpenXripBinding, "set_action", 349361333)
  var `?param` = [getPtr action]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAction*(self: OpenXripBinding): gdref OpenXrAction =
  expandMethodBind(className OpenXripBinding, "get_action", 4072409085)
  var ret: encoded gdref OpenXrAction
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref OpenXrAction)

proc getPathCount*(self: OpenXripBinding): int32 =
  expandMethodBind(className OpenXripBinding, "get_path_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setPaths*(self: OpenXripBinding; paths: PackedStringArray): void =
  expandMethodBind(className OpenXripBinding, "set_paths", 4015028928)
  var `?param` = [getPtr paths]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPaths*(self: OpenXripBinding): PackedStringArray =
  expandMethodBind(className OpenXripBinding, "get_paths", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc hasPath*(self: OpenXripBinding; path: String): bool =
  expandMethodBind(className OpenXripBinding, "has_path", 3927539163)
  var `?param` = [getPtr path]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc addPath*(self: OpenXripBinding; path: String): void =
  expandMethodBind(className OpenXripBinding, "add_path", 83702148)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc removePath*(self: OpenXripBinding; path: String): void =
  expandMethodBind(className OpenXripBinding, "remove_path", 83702148)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

template action*(self: OpenXripBinding): untyped = self.getAction()
template `action=`*(self: OpenXripBinding; value) = self.setAction(value)

template paths*(self: OpenXripBinding): untyped = self.getPaths()
template `paths=`*(self: OpenXripBinding; value) = self.setPaths(value)

const OpenXripBinding_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXripBinding]): Table[string, string] = OpenXripBinding_vmap