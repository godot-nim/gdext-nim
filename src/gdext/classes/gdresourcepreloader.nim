{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(ResourcePreloader, Node)

proc addResource*(self: ResourcePreloader; name: StringName; resource: gdref Resource): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourcePreloader, "add_resource", 1168801743)
  methodbind.ptrcall(self, [getPtr name, getPtr resource], void)

proc removeResource*(self: ResourcePreloader; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourcePreloader, "remove_resource", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc renameResource*(self: ResourcePreloader; name: StringName; newname: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourcePreloader, "rename_resource", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr newname], void)

proc hasResource*(self: ResourcePreloader; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourcePreloader, "has_resource", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc getResource*(self: ResourcePreloader; name: StringName): gdref Resource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourcePreloader, "get_resource", 3742749261)
  methodbind.ptrcall(self, [getPtr name], gdref Resource)

proc getResourceList*(self: ResourcePreloader): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourcePreloader, "get_resource_list", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

template resources*(self: ResourcePreloader): untyped = self.getResources()
template `resources=`*(self: ResourcePreloader; value) = self.setResources(value)
