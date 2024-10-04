{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdmesh; export gdmesh

proc addBlendShape*(self: ArrayMesh; name: StringName): void =
  expandMethodBind(className ArrayMesh, "add_blend_shape", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBlendShapeCount*(self: ArrayMesh): int32 =
  expandMethodBind(className ArrayMesh, "get_blend_shape_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getBlendShapeName*(self: ArrayMesh; index: int32): StringName =
  expandMethodBind(className ArrayMesh, "get_blend_shape_name", 659327637)
  var `?param` = [getPtr index]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

proc setBlendShapeName*(self: ArrayMesh; index: int32; name: StringName): void =
  expandMethodBind(className ArrayMesh, "set_blend_shape_name", 3780747571)
  var `?param` = [getPtr index, getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc clearBlendShapes*(self: ArrayMesh): void =
  expandMethodBind(className ArrayMesh, "clear_blend_shapes", 3218959716)
  methodbind.ptrcall(self, nil)

proc setBlendShapeMode*(self: ArrayMesh; mode: Mesh_BlendShapeMode): void =
  expandMethodBind(className ArrayMesh, "set_blend_shape_mode", 227983991)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBlendShapeMode*(self: ArrayMesh): Mesh_BlendShapeMode =
  expandMethodBind(className ArrayMesh, "get_blend_shape_mode", 836485024)
  var ret: encoded Mesh_BlendShapeMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Mesh_BlendShapeMode)

proc addSurfaceFromArrays*(self: ArrayMesh; primitive: Mesh_PrimitiveType; arrays: Array; blendShapes: TypedArray[Array] = typedArray[gdarray()](); lods: Dictionary = dictionary(); flags: set[Mesh_ArrayFormat] = {}): void =
  expandMethodBind(className ArrayMesh, "add_surface_from_arrays", 1796411378)
  var `?param` = [getPtr primitive, getPtr arrays, getPtr blendShapes, getPtr lods, getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc clearSurfaces*(self: ArrayMesh): void =
  expandMethodBind(className ArrayMesh, "clear_surfaces", 3218959716)
  methodbind.ptrcall(self, nil)

proc surfaceUpdateVertexRegion*(self: ArrayMesh; surfIdx: int32; offset: int32; data: PackedByteArray): void =
  expandMethodBind(className ArrayMesh, "surface_update_vertex_region", 3837166854)
  var `?param` = [getPtr surfIdx, getPtr offset, getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc surfaceUpdateAttributeRegion*(self: ArrayMesh; surfIdx: int32; offset: int32; data: PackedByteArray): void =
  expandMethodBind(className ArrayMesh, "surface_update_attribute_region", 3837166854)
  var `?param` = [getPtr surfIdx, getPtr offset, getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc surfaceUpdateSkinRegion*(self: ArrayMesh; surfIdx: int32; offset: int32; data: PackedByteArray): void =
  expandMethodBind(className ArrayMesh, "surface_update_skin_region", 3837166854)
  var `?param` = [getPtr surfIdx, getPtr offset, getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc surfaceGetArrayLen*(self: ArrayMesh; surfIdx: int32): int32 =
  expandMethodBind(className ArrayMesh, "surface_get_array_len", 923996154)
  var `?param` = [getPtr surfIdx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc surfaceGetArrayIndexLen*(self: ArrayMesh; surfIdx: int32): int32 =
  expandMethodBind(className ArrayMesh, "surface_get_array_index_len", 923996154)
  var `?param` = [getPtr surfIdx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc surfaceGetFormat*(self: ArrayMesh; surfIdx: int32): set[Mesh_ArrayFormat] =
  expandMethodBind(className ArrayMesh, "surface_get_format", 3718287884)
  var `?param` = [getPtr surfIdx]
  var ret: encoded set[Mesh_ArrayFormat]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(set[Mesh_ArrayFormat])

proc surfaceGetPrimitiveType*(self: ArrayMesh; surfIdx: int32): Mesh_PrimitiveType =
  expandMethodBind(className ArrayMesh, "surface_get_primitive_type", 4141943888)
  var `?param` = [getPtr surfIdx]
  var ret: encoded Mesh_PrimitiveType
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Mesh_PrimitiveType)

proc surfaceFindByName*(self: ArrayMesh; name: String): int32 =
  expandMethodBind(className ArrayMesh, "surface_find_by_name", 1321353865)
  var `?param` = [getPtr name]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc surfaceSetName*(self: ArrayMesh; surfIdx: int32; name: String): void =
  expandMethodBind(className ArrayMesh, "surface_set_name", 501894301)
  var `?param` = [getPtr surfIdx, getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc surfaceGetName*(self: ArrayMesh; surfIdx: int32): String =
  expandMethodBind(className ArrayMesh, "surface_get_name", 844755477)
  var `?param` = [getPtr surfIdx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc regenNormalMaps*(self: ArrayMesh): void =
  expandMethodBind(className ArrayMesh, "regen_normal_maps", 3218959716)
  methodbind.ptrcall(self, nil)

proc lightmapUnwrap*(self: ArrayMesh; transform: Transform3D; texelSize: Float): Error =
  expandMethodBind(className ArrayMesh, "lightmap_unwrap", 1476641071)
  var `?param` = [getPtr transform, getPtr texelSize]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc setCustomAabb*(self: ArrayMesh; aabb: Aabb): void =
  expandMethodBind(className ArrayMesh, "set_custom_aabb", 259215842)
  var `?param` = [getPtr aabb]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCustomAabb*(self: ArrayMesh): Aabb =
  expandMethodBind(className ArrayMesh, "get_custom_aabb", 1068685055)
  var ret: encoded Aabb
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Aabb)

proc setShadowMesh*(self: ArrayMesh; mesh: gdref ArrayMesh): void =
  expandMethodBind(className ArrayMesh, "set_shadow_mesh", 3377897901)
  var `?param` = [getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShadowMesh*(self: ArrayMesh): gdref ArrayMesh =
  expandMethodBind(className ArrayMesh, "get_shadow_mesh", 3206942465)
  var ret: encoded gdref ArrayMesh
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref ArrayMesh)

template blendShapeMode*(self: ArrayMesh): untyped = self.getBlendShapeMode()
template `blendShapeMode=`*(self: ArrayMesh; value) = self.setBlendShapeMode(value)

template customAabb*(self: ArrayMesh): untyped = self.getCustomAabb()
template `customAabb=`*(self: ArrayMesh; value) = self.setCustomAabb(value)

template shadowMesh*(self: ArrayMesh): untyped = self.getShadowMesh()
template `shadowMesh=`*(self: ArrayMesh; value) = self.setShadowMesh(value)

const ArrayMesh_vmap =
  Mesh.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ArrayMesh]): Table[string, string] = ArrayMesh_vmap