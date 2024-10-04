{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdgeometryinstance3d; export gdgeometryinstance3d

proc setMesh*(self: MeshInstance3D; mesh: gdref Mesh): void =
  expandMethodBind(className MeshInstance3D, "set_mesh", 194775623)
  var `?param` = [getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMesh*(self: MeshInstance3D): gdref Mesh =
  expandMethodBind(className MeshInstance3D, "get_mesh", 1808005922)
  var ret: encoded gdref Mesh
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Mesh)

proc setSkeletonPath*(self: MeshInstance3D; skeletonPath: NodePath): void =
  expandMethodBind(className MeshInstance3D, "set_skeleton_path", 1348162250)
  var `?param` = [getPtr skeletonPath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkeletonPath*(self: MeshInstance3D): NodePath =
  expandMethodBind(className MeshInstance3D, "get_skeleton_path", 277076166)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setSkin*(self: MeshInstance3D; skin: gdref Skin): void =
  expandMethodBind(className MeshInstance3D, "set_skin", 3971435618)
  var `?param` = [getPtr skin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkin*(self: MeshInstance3D): gdref Skin =
  expandMethodBind(className MeshInstance3D, "get_skin", 2074563878)
  var ret: encoded gdref Skin
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Skin)

proc getSkinReference*(self: MeshInstance3D): gdref SkinReference =
  expandMethodBind(className MeshInstance3D, "get_skin_reference", 2060603409)
  var ret: encoded gdref SkinReference
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref SkinReference)

proc getSurfaceOverrideMaterialCount*(self: MeshInstance3D): int32 =
  expandMethodBind(className MeshInstance3D, "get_surface_override_material_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSurfaceOverrideMaterial*(self: MeshInstance3D; surface: int32; material: gdref Material): void =
  expandMethodBind(className MeshInstance3D, "set_surface_override_material", 3671737478)
  var `?param` = [getPtr surface, getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSurfaceOverrideMaterial*(self: MeshInstance3D; surface: int32): gdref Material =
  expandMethodBind(className MeshInstance3D, "get_surface_override_material", 2897466400)
  var `?param` = [getPtr surface]
  var ret: encoded gdref Material
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Material)

proc getActiveMaterial*(self: MeshInstance3D; surface: int32): gdref Material =
  expandMethodBind(className MeshInstance3D, "get_active_material", 2897466400)
  var `?param` = [getPtr surface]
  var ret: encoded gdref Material
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Material)

proc createTrimeshCollision*(self: MeshInstance3D): void =
  expandMethodBind(className MeshInstance3D, "create_trimesh_collision", 3218959716)
  methodbind.ptrcall(self, nil)

proc createConvexCollision*(self: MeshInstance3D; clean: bool = true; simplify: bool = false): void =
  expandMethodBind(className MeshInstance3D, "create_convex_collision", 2751962654)
  var `?param` = [getPtr clean, getPtr simplify]
  methodbind.ptrcall(self, addr `?param`[0])

proc createMultipleConvexCollisions*(self: MeshInstance3D; settings: gdref MeshConvexDecompositionSettings = default gdref MeshConvexDecompositionSettings): void =
  expandMethodBind(className MeshInstance3D, "create_multiple_convex_collisions", 628789669)
  var `?param` = [getPtr settings]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBlendShapeCount*(self: MeshInstance3D): int32 =
  expandMethodBind(className MeshInstance3D, "get_blend_shape_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc findBlendShapeByName*(self: MeshInstance3D; name: StringName): int32 =
  expandMethodBind(className MeshInstance3D, "find_blend_shape_by_name", 4150868206)
  var `?param` = [getPtr name]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getBlendShapeValue*(self: MeshInstance3D; blendShapeIdx: int32): Float =
  expandMethodBind(className MeshInstance3D, "get_blend_shape_value", 2339986948)
  var `?param` = [getPtr blendShapeIdx]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setBlendShapeValue*(self: MeshInstance3D; blendShapeIdx: int32; value: Float): void =
  expandMethodBind(className MeshInstance3D, "set_blend_shape_value", 1602489585)
  var `?param` = [getPtr blendShapeIdx, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc createDebugTangents*(self: MeshInstance3D): void =
  expandMethodBind(className MeshInstance3D, "create_debug_tangents", 3218959716)
  methodbind.ptrcall(self, nil)

proc bakeMeshFromCurrentBlendShapeMix*(self: MeshInstance3D; existing: gdref ArrayMesh = default gdref ArrayMesh): gdref ArrayMesh =
  expandMethodBind(className MeshInstance3D, "bake_mesh_from_current_blend_shape_mix", 1457573577)
  var `?param` = [getPtr existing]
  var ret: encoded gdref ArrayMesh
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref ArrayMesh)

template mesh*(self: MeshInstance3D): untyped = self.getMesh()
template `mesh=`*(self: MeshInstance3D; value) = self.setMesh(value)

template skin*(self: MeshInstance3D): untyped = self.getSkin()
template `skin=`*(self: MeshInstance3D; value) = self.setSkin(value)

template skeleton*(self: MeshInstance3D): untyped = self.getSkeletonPath()
template `skeleton=`*(self: MeshInstance3D; value) = self.setSkeletonPath(value)

const MeshInstance3D_vmap =
  GeometryInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MeshInstance3D]): Table[string, string] = MeshInstance3D_vmap