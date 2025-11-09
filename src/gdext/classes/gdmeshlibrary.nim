{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(MeshLibrary, Resource)

proc createItem*(self: MeshLibrary; id: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "create_item", 1286410249)
  methodbind.ptrcall(self, [getPtr id], void)

proc setItemName*(self: MeshLibrary; id: int32; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "set_item_name", 501894301)
  methodbind.ptrcall(self, [getPtr id, getPtr name], void)

proc setItemMesh*(self: MeshLibrary; id: int32; mesh: gdref Mesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "set_item_mesh", 969122797)
  methodbind.ptrcall(self, [getPtr id, getPtr mesh], void)

proc setItemMeshTransform*(self: MeshLibrary; id: int32; meshTransform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "set_item_mesh_transform", 3616898986)
  methodbind.ptrcall(self, [getPtr id, getPtr meshTransform], void)

proc setItemMeshCastShadow*(self: MeshLibrary; id: int32; shadowCastingSetting: RenderingServer_ShadowCastingSetting): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "set_item_mesh_cast_shadow", 3923400443)
  methodbind.ptrcall(self, [getPtr id, getPtr shadowCastingSetting], void)

proc setItemNavigationMesh*(self: MeshLibrary; id: int32; navigationMesh: gdref NavigationMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "set_item_navigation_mesh", 3483353960)
  methodbind.ptrcall(self, [getPtr id, getPtr navigationMesh], void)

proc setItemNavigationMeshTransform*(self: MeshLibrary; id: int32; navigationMesh: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "set_item_navigation_mesh_transform", 3616898986)
  methodbind.ptrcall(self, [getPtr id, getPtr navigationMesh], void)

proc setItemNavigationLayers*(self: MeshLibrary; id: int32; navigationLayers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "set_item_navigation_layers", 3937882851)
  methodbind.ptrcall(self, [getPtr id, getPtr navigationLayers], void)

proc setItemShapes*(self: MeshLibrary; id: int32; shapes: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "set_item_shapes", 537221740)
  methodbind.ptrcall(self, [getPtr id, getPtr shapes], void)

proc setItemPreview*(self: MeshLibrary; id: int32; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "set_item_preview", 666127730)
  methodbind.ptrcall(self, [getPtr id, getPtr texture], void)

proc getItemName*(self: MeshLibrary; id: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "get_item_name", 844755477)
  methodbind.ptrcall(self, [getPtr id], String)

proc getItemMesh*(self: MeshLibrary; id: int32): gdref Mesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "get_item_mesh", 1576363275)
  methodbind.ptrcall(self, [getPtr id], gdref Mesh)

proc getItemMeshTransform*(self: MeshLibrary; id: int32): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "get_item_mesh_transform", 1965739696)
  methodbind.ptrcall(self, [getPtr id], Transform3D)

proc getItemMeshCastShadow*(self: MeshLibrary; id: int32): RenderingServer_ShadowCastingSetting =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "get_item_mesh_cast_shadow", 1841766007)
  methodbind.ptrcall(self, [getPtr id], RenderingServer_ShadowCastingSetting)

proc getItemNavigationMesh*(self: MeshLibrary; id: int32): gdref NavigationMesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "get_item_navigation_mesh", 2729647406)
  methodbind.ptrcall(self, [getPtr id], gdref NavigationMesh)

proc getItemNavigationMeshTransform*(self: MeshLibrary; id: int32): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "get_item_navigation_mesh_transform", 1965739696)
  methodbind.ptrcall(self, [getPtr id], Transform3D)

proc getItemNavigationLayers*(self: MeshLibrary; id: int32): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "get_item_navigation_layers", 923996154)
  methodbind.ptrcall(self, [getPtr id], uint32)

proc getItemShapes*(self: MeshLibrary; id: int32): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "get_item_shapes", 663333327)
  methodbind.ptrcall(self, [getPtr id], Array)

proc getItemPreview*(self: MeshLibrary; id: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "get_item_preview", 3536238170)
  methodbind.ptrcall(self, [getPtr id], gdref Texture2D)

proc removeItem*(self: MeshLibrary; id: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "remove_item", 1286410249)
  methodbind.ptrcall(self, [getPtr id], void)

proc findItemByName*(self: MeshLibrary; name: String): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "find_item_by_name", 1321353865)
  methodbind.ptrcall(self, [getPtr name], int32)

proc clear*(self: MeshLibrary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getItemList*(self: MeshLibrary): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "get_item_list", 1930428628)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc getLastUnusedItemId*(self: MeshLibrary): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshLibrary, "get_last_unused_item_id", 3905245786)
  methodbind.ptrcall(self, [], int32)
