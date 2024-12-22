{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

method setVertex*(self: PhysicsServer3DRenderingServerHandler; vertexId: int32; vertex: Vector3): void {.base.} = (discard)
proc setVertex(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DRenderingServerHandler](p_instance).setVertex(p_args[0].decode(int32), p_args[1].decode(Vector3))
template setVertex_bind*(_: typedesc[PhysicsServer3DRenderingServerHandler]): ClassCallVirtual = setVertex

method setNormal*(self: PhysicsServer3DRenderingServerHandler; vertexId: int32; normal: Vector3): void {.base.} = (discard)
proc setNormal(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DRenderingServerHandler](p_instance).setNormal(p_args[0].decode(int32), p_args[1].decode(Vector3))
template setNormal_bind*(_: typedesc[PhysicsServer3DRenderingServerHandler]): ClassCallVirtual = setNormal

method setAabb*(self: PhysicsServer3DRenderingServerHandler; aabb: AABB): void {.base.} = (discard)
proc setAabb(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DRenderingServerHandler](p_instance).setAabb(p_args[0].decode(AABB))
template setAabb_bind*(_: typedesc[PhysicsServer3DRenderingServerHandler]): ClassCallVirtual = setAabb

proc setVertex*(self: PhysicsServer3DRenderingServerHandler; vertexId: int32; vertex: Vector3): void =
  expandMethodBind(className PhysicsServer3DRenderingServerHandler, "set_vertex", 1530502735)
  var `?param` = [getPtr vertexId, getPtr vertex]
  methodbind.ptrcall(self, addr `?param`[0])

proc setNormal*(self: PhysicsServer3DRenderingServerHandler; vertexId: int32; normal: Vector3): void =
  expandMethodBind(className PhysicsServer3DRenderingServerHandler, "set_normal", 1530502735)
  var `?param` = [getPtr vertexId, getPtr normal]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAabb*(self: PhysicsServer3DRenderingServerHandler; aabb: AABB): void =
  expandMethodBind(className PhysicsServer3DRenderingServerHandler, "set_aabb", 259215842)
  var `?param` = [getPtr aabb]
  methodbind.ptrcall(self, addr `?param`[0])

const PhysicsServer3DRenderingServerHandler_vmap =
  Object.vmap.concat toTable {
    "setvertex" : "_set_vertex",
    "setnormal" : "_set_normal",
    "setaabb" : "_set_aabb",
    }
template vmap*(_: typedesc[PhysicsServer3DRenderingServerHandler]): Table[string, string] = PhysicsServer3DRenderingServerHandler_vmap