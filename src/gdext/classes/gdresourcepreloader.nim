{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

proc addResource*(self: ResourcePreloader; name: StringName; resource: gdref Resource): void =
  expandMethodBind(className ResourcePreloader, "add_resource", 1168801743)
  methodbind.ptrcall(self, [getPtr name, getPtr resource])

proc removeResource*(self: ResourcePreloader; name: StringName): void =
  expandMethodBind(className ResourcePreloader, "remove_resource", 3304788590)
  methodbind.ptrcall(self, [getPtr name])

proc renameResource*(self: ResourcePreloader; name: StringName; newname: StringName): void =
  expandMethodBind(className ResourcePreloader, "rename_resource", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr newname])

proc hasResource*(self: ResourcePreloader; name: StringName): bool =
  expandMethodBind(className ResourcePreloader, "has_resource", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc getResource*(self: ResourcePreloader; name: StringName): gdref Resource =
  expandMethodBind(className ResourcePreloader, "get_resource", 3742749261)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(gdref Resource)

proc getResourceList*(self: ResourcePreloader): PackedStringArray =
  expandMethodBind(className ResourcePreloader, "get_resource_list", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

template resources*(self: ResourcePreloader): untyped = self.getResources()
template `resources=`*(self: ResourcePreloader; value) = self.setResources(value)

const ResourcePreloader_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ResourcePreloader]): Table[string, string] = ResourcePreloader_vmap