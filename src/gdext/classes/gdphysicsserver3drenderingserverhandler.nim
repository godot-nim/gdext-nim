{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(PhysicsServer3DRenderingServerHandler, Object)

method setVertex*(self: PhysicsServer3DRenderingServerHandler; vertexId: int32; vertex: Vector3): void {.base.} = (discard)
proc registerVirtual_setVertex*[T: PhysicsServer3DRenderingServerHandler](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_vertex"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DRenderingServerHandler](p_instance).setVertex(p_args[0].decode(int32), p_args[1].decode(Vector3))

method setNormal*(self: PhysicsServer3DRenderingServerHandler; vertexId: int32; normal: Vector3): void {.base.} = (discard)
proc registerVirtual_setNormal*[T: PhysicsServer3DRenderingServerHandler](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_normal"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DRenderingServerHandler](p_instance).setNormal(p_args[0].decode(int32), p_args[1].decode(Vector3))

method setAabb*(self: PhysicsServer3DRenderingServerHandler; aabb: AABB): void {.base.} = (discard)
proc registerVirtual_setAabb*[T: PhysicsServer3DRenderingServerHandler](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_aabb"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DRenderingServerHandler](p_instance).setAabb(p_args[0].decode(AABB))

proc setVertex*(self: PhysicsServer3DRenderingServerHandler; vertexId: int32; vertex: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3DRenderingServerHandler, "set_vertex", 1530502735)
  methodbind.ptrcall(self, [getPtr vertexId, getPtr vertex], void)

proc setNormal*(self: PhysicsServer3DRenderingServerHandler; vertexId: int32; normal: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3DRenderingServerHandler, "set_normal", 1530502735)
  methodbind.ptrcall(self, [getPtr vertexId, getPtr normal], void)

proc setAabb*(self: PhysicsServer3DRenderingServerHandler; aabb: AABB): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3DRenderingServerHandler, "set_aabb", 259215842)
  methodbind.ptrcall(self, [getPtr aabb], void)
