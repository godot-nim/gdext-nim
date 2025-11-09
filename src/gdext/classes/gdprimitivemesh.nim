{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmesh; export gdmesh

expandOnClassImported(PrimitiveMesh, Mesh)

method createMeshArray*(self: PrimitiveMesh): Array {.base.} = (discard)
proc registerVirtual_createMeshArray*[T: PrimitiveMesh](Self: typedesc[T]) =
  Self.vmethods[newStringName"_create_mesh_array"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PrimitiveMesh](p_instance).createMeshArray().encode(r_ret)

proc setMaterial*(self: PrimitiveMesh; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrimitiveMesh, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material], void)

proc getMaterial*(self: PrimitiveMesh): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrimitiveMesh, "get_material", 5934680)
  methodbind.ptrcall(self, [], gdref Material)

proc getMeshArrays*(self: PrimitiveMesh): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrimitiveMesh, "get_mesh_arrays", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc setCustomAabb*(self: PrimitiveMesh; aabb: AABB): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrimitiveMesh, "set_custom_aabb", 259215842)
  methodbind.ptrcall(self, [getPtr aabb], void)

proc getCustomAabb*(self: PrimitiveMesh): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrimitiveMesh, "get_custom_aabb", 1068685055)
  methodbind.ptrcall(self, [], AABB)

proc setFlipFaces*(self: PrimitiveMesh; flipFaces: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrimitiveMesh, "set_flip_faces", 2586408642)
  methodbind.ptrcall(self, [getPtr flipFaces], void)

proc getFlipFaces*(self: PrimitiveMesh): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrimitiveMesh, "get_flip_faces", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAddUv2*(self: PrimitiveMesh; addUv2: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrimitiveMesh, "set_add_uv2", 2586408642)
  methodbind.ptrcall(self, [getPtr addUv2], void)

proc getAddUv2*(self: PrimitiveMesh): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrimitiveMesh, "get_add_uv2", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUv2Padding*(self: PrimitiveMesh; uv2Padding: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrimitiveMesh, "set_uv2_padding", 373806689)
  methodbind.ptrcall(self, [getPtr uv2Padding], void)

proc getUv2Padding*(self: PrimitiveMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrimitiveMesh, "get_uv2_padding", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc requestUpdate*(self: PrimitiveMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PrimitiveMesh, "request_update", 3218959716)
  methodbind.ptrcall(self, [], void)

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
