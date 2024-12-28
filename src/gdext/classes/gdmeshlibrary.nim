{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc createItem*(self: MeshLibrary; id: int32): void =
  expandMethodBind(className MeshLibrary, "create_item", 1286410249)
  methodbind.ptrcall(self, [getPtr id])

proc setItemName*(self: MeshLibrary; id: int32; name: String): void =
  expandMethodBind(className MeshLibrary, "set_item_name", 501894301)
  methodbind.ptrcall(self, [getPtr id, getPtr name])

proc setItemMesh*(self: MeshLibrary; id: int32; mesh: gdref Mesh): void =
  expandMethodBind(className MeshLibrary, "set_item_mesh", 969122797)
  methodbind.ptrcall(self, [getPtr id, getPtr mesh])

proc setItemMeshTransform*(self: MeshLibrary; id: int32; meshTransform: Transform3D): void =
  expandMethodBind(className MeshLibrary, "set_item_mesh_transform", 3616898986)
  methodbind.ptrcall(self, [getPtr id, getPtr meshTransform])

proc setItemNavigationMesh*(self: MeshLibrary; id: int32; navigationMesh: gdref NavigationMesh): void =
  expandMethodBind(className MeshLibrary, "set_item_navigation_mesh", 3483353960)
  methodbind.ptrcall(self, [getPtr id, getPtr navigationMesh])

proc setItemNavigationMeshTransform*(self: MeshLibrary; id: int32; navigationMesh: Transform3D): void =
  expandMethodBind(className MeshLibrary, "set_item_navigation_mesh_transform", 3616898986)
  methodbind.ptrcall(self, [getPtr id, getPtr navigationMesh])

proc setItemNavigationLayers*(self: MeshLibrary; id: int32; navigationLayers: uint32): void =
  expandMethodBind(className MeshLibrary, "set_item_navigation_layers", 3937882851)
  methodbind.ptrcall(self, [getPtr id, getPtr navigationLayers])

proc setItemShapes*(self: MeshLibrary; id: int32; shapes: Array): void =
  expandMethodBind(className MeshLibrary, "set_item_shapes", 537221740)
  methodbind.ptrcall(self, [getPtr id, getPtr shapes])

proc setItemPreview*(self: MeshLibrary; id: int32; texture: gdref Texture2D): void =
  expandMethodBind(className MeshLibrary, "set_item_preview", 666127730)
  methodbind.ptrcall(self, [getPtr id, getPtr texture])

proc getItemName*(self: MeshLibrary; id: int32): String =
  expandMethodBind(className MeshLibrary, "get_item_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(String)

proc getItemMesh*(self: MeshLibrary; id: int32): gdref Mesh =
  expandMethodBind(className MeshLibrary, "get_item_mesh", 1576363275)
  var ret: encoded gdref Mesh
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(gdref Mesh)

proc getItemMeshTransform*(self: MeshLibrary; id: int32): Transform3D =
  expandMethodBind(className MeshLibrary, "get_item_mesh_transform", 1965739696)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(Transform3D)

proc getItemNavigationMesh*(self: MeshLibrary; id: int32): gdref NavigationMesh =
  expandMethodBind(className MeshLibrary, "get_item_navigation_mesh", 2729647406)
  var ret: encoded gdref NavigationMesh
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(gdref NavigationMesh)

proc getItemNavigationMeshTransform*(self: MeshLibrary; id: int32): Transform3D =
  expandMethodBind(className MeshLibrary, "get_item_navigation_mesh_transform", 1965739696)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(Transform3D)

proc getItemNavigationLayers*(self: MeshLibrary; id: int32): uint32 =
  expandMethodBind(className MeshLibrary, "get_item_navigation_layers", 923996154)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(uint32)

proc getItemShapes*(self: MeshLibrary; id: int32): Array =
  expandMethodBind(className MeshLibrary, "get_item_shapes", 663333327)
  var ret: encoded Array
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(Array)

proc getItemPreview*(self: MeshLibrary; id: int32): gdref Texture2D =
  expandMethodBind(className MeshLibrary, "get_item_preview", 3536238170)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc removeItem*(self: MeshLibrary; id: int32): void =
  expandMethodBind(className MeshLibrary, "remove_item", 1286410249)
  methodbind.ptrcall(self, [getPtr id])

proc findItemByName*(self: MeshLibrary; name: String): int32 =
  expandMethodBind(className MeshLibrary, "find_item_by_name", 1321353865)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(int32)

proc clear*(self: MeshLibrary): void =
  expandMethodBind(className MeshLibrary, "clear", 3218959716)
  methodbind.ptrcall(self, [])

proc getItemList*(self: MeshLibrary): PackedInt32Array =
  expandMethodBind(className MeshLibrary, "get_item_list", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getLastUnusedItemId*(self: MeshLibrary): int32 =
  expandMethodBind(className MeshLibrary, "get_last_unused_item_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

const MeshLibrary_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MeshLibrary]): Table[string, string] = MeshLibrary_vmap