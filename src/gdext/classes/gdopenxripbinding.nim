{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setAction*(self: OpenXRIPBinding; action: gdref OpenXRAction): void =
  expandMethodBind(className OpenXRIPBinding, "set_action", 349361333)
  methodbind.ptrcall(self, [getPtr action])

proc getAction*(self: OpenXRIPBinding): gdref OpenXRAction =
  expandMethodBind(className OpenXRIPBinding, "get_action", 4072409085)
  var ret: encoded gdref OpenXRAction
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref OpenXRAction)

proc getPathCount*(self: OpenXRIPBinding): int32 =
  expandMethodBind(className OpenXRIPBinding, "get_path_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setPaths*(self: OpenXRIPBinding; paths: PackedStringArray): void =
  expandMethodBind(className OpenXRIPBinding, "set_paths", 4015028928)
  methodbind.ptrcall(self, [getPtr paths])

proc getPaths*(self: OpenXRIPBinding): PackedStringArray =
  expandMethodBind(className OpenXRIPBinding, "get_paths", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc hasPath*(self: OpenXRIPBinding; path: String): bool =
  expandMethodBind(className OpenXRIPBinding, "has_path", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(bool)

proc addPath*(self: OpenXRIPBinding; path: String): void =
  expandMethodBind(className OpenXRIPBinding, "add_path", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc removePath*(self: OpenXRIPBinding; path: String): void =
  expandMethodBind(className OpenXRIPBinding, "remove_path", 83702148)
  methodbind.ptrcall(self, [getPtr path])

template action*(self: OpenXRIPBinding): untyped = self.getAction()
template `action=`*(self: OpenXRIPBinding; value) = self.setAction(value)

template paths*(self: OpenXRIPBinding): untyped = self.getPaths()
template `paths=`*(self: OpenXRIPBinding; value) = self.setPaths(value)

const OpenXRIPBinding_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRIPBinding]): Table[string, string] = OpenXRIPBinding_vmap