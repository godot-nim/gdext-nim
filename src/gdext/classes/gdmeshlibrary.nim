{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc createItem*(self: MeshLibrary; id: int32): void =
  expandMethodBind(className MeshLibrary, "create_item", 1286410249)
  var `?param` = [getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemName*(self: MeshLibrary; id: int32; name: String): void =
  expandMethodBind(className MeshLibrary, "set_item_name", 501894301)
  var `?param` = [getPtr id, getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemMesh*(self: MeshLibrary; id: int32; mesh: gdref Mesh): void =
  expandMethodBind(className MeshLibrary, "set_item_mesh", 969122797)
  var `?param` = [getPtr id, getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemMeshTransform*(self: MeshLibrary; id: int32; meshTransform: Transform3D): void =
  expandMethodBind(className MeshLibrary, "set_item_mesh_transform", 3616898986)
  var `?param` = [getPtr id, getPtr meshTransform]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemNavigationMesh*(self: MeshLibrary; id: int32; navigationMesh: gdref NavigationMesh): void =
  expandMethodBind(className MeshLibrary, "set_item_navigation_mesh", 3483353960)
  var `?param` = [getPtr id, getPtr navigationMesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemNavigationMeshTransform*(self: MeshLibrary; id: int32; navigationMesh: Transform3D): void =
  expandMethodBind(className MeshLibrary, "set_item_navigation_mesh_transform", 3616898986)
  var `?param` = [getPtr id, getPtr navigationMesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemNavigationLayers*(self: MeshLibrary; id: int32; navigationLayers: uint32): void =
  expandMethodBind(className MeshLibrary, "set_item_navigation_layers", 3937882851)
  var `?param` = [getPtr id, getPtr navigationLayers]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemShapes*(self: MeshLibrary; id: int32; shapes: Array): void =
  expandMethodBind(className MeshLibrary, "set_item_shapes", 537221740)
  var `?param` = [getPtr id, getPtr shapes]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemPreview*(self: MeshLibrary; id: int32; texture: gdref Texture2D): void =
  expandMethodBind(className MeshLibrary, "set_item_preview", 666127730)
  var `?param` = [getPtr id, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemName*(self: MeshLibrary; id: int32): String =
  expandMethodBind(className MeshLibrary, "get_item_name", 844755477)
  var `?param` = [getPtr id]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getItemMesh*(self: MeshLibrary; id: int32): gdref Mesh =
  expandMethodBind(className MeshLibrary, "get_item_mesh", 1576363275)
  var `?param` = [getPtr id]
  var ret: encoded gdref Mesh
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Mesh)

proc getItemMeshTransform*(self: MeshLibrary; id: int32): Transform3D =
  expandMethodBind(className MeshLibrary, "get_item_mesh_transform", 1965739696)
  var `?param` = [getPtr id]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc getItemNavigationMesh*(self: MeshLibrary; id: int32): gdref NavigationMesh =
  expandMethodBind(className MeshLibrary, "get_item_navigation_mesh", 2729647406)
  var `?param` = [getPtr id]
  var ret: encoded gdref NavigationMesh
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref NavigationMesh)

proc getItemNavigationMeshTransform*(self: MeshLibrary; id: int32): Transform3D =
  expandMethodBind(className MeshLibrary, "get_item_navigation_mesh_transform", 1965739696)
  var `?param` = [getPtr id]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc getItemNavigationLayers*(self: MeshLibrary; id: int32): uint32 =
  expandMethodBind(className MeshLibrary, "get_item_navigation_layers", 923996154)
  var `?param` = [getPtr id]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc getItemShapes*(self: MeshLibrary; id: int32): Array =
  expandMethodBind(className MeshLibrary, "get_item_shapes", 663333327)
  var `?param` = [getPtr id]
  var ret: encoded Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Array)

proc getItemPreview*(self: MeshLibrary; id: int32): gdref Texture2D =
  expandMethodBind(className MeshLibrary, "get_item_preview", 3536238170)
  var `?param` = [getPtr id]
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc removeItem*(self: MeshLibrary; id: int32): void =
  expandMethodBind(className MeshLibrary, "remove_item", 1286410249)
  var `?param` = [getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc findItemByName*(self: MeshLibrary; name: String): int32 =
  expandMethodBind(className MeshLibrary, "find_item_by_name", 1321353865)
  var `?param` = [getPtr name]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc clear*(self: MeshLibrary): void =
  expandMethodBind(className MeshLibrary, "clear", 3218959716)
  methodbind.ptrcall(self, nil)

proc getItemList*(self: MeshLibrary): PackedInt32Array =
  expandMethodBind(className MeshLibrary, "get_item_list", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getLastUnusedItemId*(self: MeshLibrary): int32 =
  expandMethodBind(className MeshLibrary, "get_last_unused_item_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

const MeshLibrary_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MeshLibrary]): Table[string, string] = MeshLibrary_vmap