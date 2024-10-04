{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode; export gdnode

proc addResource*(self: ResourcePreloader; name: StringName; resource: gdref Resource): void =
  expandMethodBind(className ResourcePreloader, "add_resource", 1168801743)
  var `?param` = [getPtr name, getPtr resource]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeResource*(self: ResourcePreloader; name: StringName): void =
  expandMethodBind(className ResourcePreloader, "remove_resource", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc renameResource*(self: ResourcePreloader; name: StringName; newname: StringName): void =
  expandMethodBind(className ResourcePreloader, "rename_resource", 3740211285)
  var `?param` = [getPtr name, getPtr newname]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasResource*(self: ResourcePreloader; name: StringName): bool =
  expandMethodBind(className ResourcePreloader, "has_resource", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getResource*(self: ResourcePreloader; name: StringName): gdref Resource =
  expandMethodBind(className ResourcePreloader, "get_resource", 3742749261)
  var `?param` = [getPtr name]
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Resource)

proc getResourceList*(self: ResourcePreloader): PackedStringArray =
  expandMethodBind(className ResourcePreloader, "get_resource_list", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

template resources*(self: ResourcePreloader): untyped = self.getResources()
template `resources=`*(self: ResourcePreloader; value) = self.setResources(value)

const ResourcePreloader_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ResourcePreloader]): Table[string, string] = ResourcePreloader_vmap