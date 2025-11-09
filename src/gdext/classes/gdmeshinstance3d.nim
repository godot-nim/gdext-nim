{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgeometryinstance3d; export gdgeometryinstance3d

expandOnClassImported(MeshInstance3D, GeometryInstance3D)

proc setMesh*(self: MeshInstance3D; mesh: gdref Mesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "set_mesh", 194775623)
  methodbind.ptrcall(self, [getPtr mesh], void)

proc getMesh*(self: MeshInstance3D): gdref Mesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "get_mesh", 1808005922)
  methodbind.ptrcall(self, [], gdref Mesh)

proc setSkeletonPath*(self: MeshInstance3D; skeletonPath: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "set_skeleton_path", 1348162250)
  methodbind.ptrcall(self, [getPtr skeletonPath], void)

proc getSkeletonPath*(self: MeshInstance3D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "get_skeleton_path", 277076166)
  methodbind.ptrcall(self, [], NodePath)

proc setSkin*(self: MeshInstance3D; skin: gdref Skin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "set_skin", 3971435618)
  methodbind.ptrcall(self, [getPtr skin], void)

proc getSkin*(self: MeshInstance3D): gdref Skin =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "get_skin", 2074563878)
  methodbind.ptrcall(self, [], gdref Skin)

proc getSkinReference*(self: MeshInstance3D): gdref SkinReference =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "get_skin_reference", 2060603409)
  methodbind.ptrcall(self, [], gdref SkinReference)

proc getSurfaceOverrideMaterialCount*(self: MeshInstance3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "get_surface_override_material_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSurfaceOverrideMaterial*(self: MeshInstance3D; surface: int32; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "set_surface_override_material", 3671737478)
  methodbind.ptrcall(self, [getPtr surface, getPtr material], void)

proc getSurfaceOverrideMaterial*(self: MeshInstance3D; surface: int32): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "get_surface_override_material", 2897466400)
  methodbind.ptrcall(self, [getPtr surface], gdref Material)

proc getActiveMaterial*(self: MeshInstance3D; surface: int32): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "get_active_material", 2897466400)
  methodbind.ptrcall(self, [getPtr surface], gdref Material)

proc createTrimeshCollision*(self: MeshInstance3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "create_trimesh_collision", 3218959716)
  methodbind.ptrcall(self, [], void)

proc createConvexCollision*(self: MeshInstance3D; clean: bool = true; simplify: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "create_convex_collision", 2751962654)
  methodbind.ptrcall(self, [getPtr clean, getPtr simplify], void)

proc createMultipleConvexCollisions*(self: MeshInstance3D; settings: gdref MeshConvexDecompositionSettings = default gdref MeshConvexDecompositionSettings): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "create_multiple_convex_collisions", 628789669)
  methodbind.ptrcall(self, [getPtr settings], void)

proc getBlendShapeCount*(self: MeshInstance3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "get_blend_shape_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc findBlendShapeByName*(self: MeshInstance3D; name: StringName): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "find_blend_shape_by_name", 4150868206)
  methodbind.ptrcall(self, [getPtr name], int32)

proc getBlendShapeValue*(self: MeshInstance3D; blendShapeIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "get_blend_shape_value", 2339986948)
  methodbind.ptrcall(self, [getPtr blendShapeIdx], Float)

proc setBlendShapeValue*(self: MeshInstance3D; blendShapeIdx: int32; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "set_blend_shape_value", 1602489585)
  methodbind.ptrcall(self, [getPtr blendShapeIdx, getPtr value], void)

proc createDebugTangents*(self: MeshInstance3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "create_debug_tangents", 3218959716)
  methodbind.ptrcall(self, [], void)

proc bakeMeshFromCurrentBlendShapeMix*(self: MeshInstance3D; existing: gdref ArrayMesh = default gdref ArrayMesh): gdref ArrayMesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "bake_mesh_from_current_blend_shape_mix", 1457573577)
  methodbind.ptrcall(self, [getPtr existing], gdref ArrayMesh)

proc bakeMeshFromCurrentSkeletonPose*(self: MeshInstance3D; existing: gdref ArrayMesh = default gdref ArrayMesh): gdref ArrayMesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshInstance3D, "bake_mesh_from_current_skeleton_pose", 1457573577)
  methodbind.ptrcall(self, [getPtr existing], gdref ArrayMesh)

template mesh*(self: MeshInstance3D): untyped = self.getMesh()
template `mesh=`*(self: MeshInstance3D; value) = self.setMesh(value)

template skin*(self: MeshInstance3D): untyped = self.getSkin()
template `skin=`*(self: MeshInstance3D; value) = self.setSkin(value)

template skeleton*(self: MeshInstance3D): untyped = self.getSkeletonPath()
template `skeleton=`*(self: MeshInstance3D; value) = self.setSkeletonPath(value)
