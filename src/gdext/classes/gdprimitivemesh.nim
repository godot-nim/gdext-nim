{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmesh; export gdmesh

method createMeshArray*(self: PrimitiveMesh): Array {.base.} = (discard)
proc createMeshArray(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PrimitiveMesh](p_instance).createMeshArray().encode(r_ret)
template createMeshArray_bind*(_: typedesc[PrimitiveMesh]): ClassCallVirtual = createMeshArray

proc setMaterial*(self: PrimitiveMesh; material: gdref Material): void =
  expandMethodBind(className PrimitiveMesh, "set_material", 2757459619)
  var `?param` = [getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaterial*(self: PrimitiveMesh): gdref Material =
  expandMethodBind(className PrimitiveMesh, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Material)

proc getMeshArrays*(self: PrimitiveMesh): Array =
  expandMethodBind(className PrimitiveMesh, "get_mesh_arrays", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

proc setCustomAabb*(self: PrimitiveMesh; aabb: AABB): void =
  expandMethodBind(className PrimitiveMesh, "set_custom_aabb", 259215842)
  var `?param` = [getPtr aabb]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCustomAabb*(self: PrimitiveMesh): AABB =
  expandMethodBind(className PrimitiveMesh, "get_custom_aabb", 1068685055)
  var ret: encoded AABB
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AABB)

proc setFlipFaces*(self: PrimitiveMesh; flipFaces: bool): void =
  expandMethodBind(className PrimitiveMesh, "set_flip_faces", 2586408642)
  var `?param` = [getPtr flipFaces]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFlipFaces*(self: PrimitiveMesh): bool =
  expandMethodBind(className PrimitiveMesh, "get_flip_faces", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAddUv2*(self: PrimitiveMesh; addUv2: bool): void =
  expandMethodBind(className PrimitiveMesh, "set_add_uv2", 2586408642)
  var `?param` = [getPtr addUv2]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAddUv2*(self: PrimitiveMesh): bool =
  expandMethodBind(className PrimitiveMesh, "get_add_uv2", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUv2Padding*(self: PrimitiveMesh; uv2Padding: Float): void =
  expandMethodBind(className PrimitiveMesh, "set_uv2_padding", 373806689)
  var `?param` = [getPtr uv2Padding]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUv2Padding*(self: PrimitiveMesh): Float =
  expandMethodBind(className PrimitiveMesh, "get_uv2_padding", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc requestUpdate*(self: PrimitiveMesh): void =
  expandMethodBind(className PrimitiveMesh, "request_update", 3218959716)
  methodbind.ptrcall(self, nil)

template material*(self: PrimitiveMesh): untyped = self.getMaterial()
template `material=`*(self: PrimitiveMesh; value) = self.setMaterial(value)

template customAabb*(self: PrimitiveMesh): untyped = self.getCustomAabb()
template `customAabb=`*(self: PrimitiveMesh; value) = self.setCustomAabb(value)

template flipFaces*(self: PrimitiveMesh): untyped = self.getFlipFaces()
template `flipFaces=`*(self: PrimitiveMesh; value) = self.setFlipFaces(value)

template addUv2*(self: PrimitiveMesh): untyped = self.getAddUv2()
template `addUv2=`*(self: PrimitiveMesh; value) = self.setAddUv2(value)

template uv2Padding*(self: PrimitiveMesh): untyped = self.getUv2Padding()
template `uv2Padding=`*(self: PrimitiveMesh; value) = self.setUv2Padding(value)

const PrimitiveMesh_vmap =
  Mesh.vmap.concat toTable {
    "createmesharray" : "_create_mesh_array",
    }
template vmap*(_: typedesc[PrimitiveMesh]): Table[string, string] = PrimitiveMesh_vmap