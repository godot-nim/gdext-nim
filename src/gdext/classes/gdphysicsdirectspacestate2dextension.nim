{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdphysicsdirectspacestate2d; export gdphysicsdirectspacestate2d

expandOnClassImported(PhysicsDirectSpaceState2DExtension, PhysicsDirectSpaceState2D)

method intersectRay*(self: PhysicsDirectSpaceState2DExtension; `from`: Vector2; to: Vector2; collisionMask: uint32; collideWithBodies: bool; collideWithAreas: bool; hitFromInside: bool; retval: ptr PhysicsServer2DExtensionRayResult): bool {.base.} = (discard)
proc registerVirtual_intersectRay*[T: PhysicsDirectSpaceState2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_intersect_ray"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectSpaceState2DExtension](p_instance).intersectRay(p_args[0].decode(Vector2), p_args[1].decode(Vector2), p_args[2].decode(uint32), p_args[3].decode(bool), p_args[4].decode(bool), p_args[5].decode(bool), p_args[6].decode(ptr PhysicsServer2DExtensionRayResult)).encode(r_ret)

method intersectPoint*(self: PhysicsDirectSpaceState2DExtension; position: Vector2; canvasInstanceId: uint64; collisionMask: uint32; collideWithBodies: bool; collideWithAreas: bool; retvals: ptr PhysicsServer2DExtensionShapeResult; maxRetvals: int32): int32 {.base.} = (discard)
proc registerVirtual_intersectPoint*[T: PhysicsDirectSpaceState2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_intersect_point"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectSpaceState2DExtension](p_instance).intersectPoint(p_args[0].decode(Vector2), p_args[1].decode(uint64), p_args[2].decode(uint32), p_args[3].decode(bool), p_args[4].decode(bool), p_args[5].decode(ptr PhysicsServer2DExtensionShapeResult), p_args[6].decode(int32)).encode(r_ret)

method intersectShape*(self: PhysicsDirectSpaceState2DExtension; shapeRid: RID; transform: Transform2D; motion: Vector2; margin: Float; collisionMask: uint32; collideWithBodies: bool; collideWithAreas: bool; retval: ptr PhysicsServer2DExtensionShapeResult; maxRetvals: int32): int32 {.base.} = (discard)
proc registerVirtual_intersectShape*[T: PhysicsDirectSpaceState2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_intersect_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectSpaceState2DExtension](p_instance).intersectShape(p_args[0].decode(RID), p_args[1].decode(Transform2D), p_args[2].decode(Vector2), p_args[3].decode(Float), p_args[4].decode(uint32), p_args[5].decode(bool), p_args[6].decode(bool), p_args[7].decode(ptr PhysicsServer2DExtensionShapeResult), p_args[8].decode(int32)).encode(r_ret)

method castMotion*(self: PhysicsDirectSpaceState2DExtension; shapeRid: RID; transform: Transform2D; motion: Vector2; margin: Float; collisionMask: uint32; collideWithBodies: bool; collideWithAreas: bool; closestSafe: ptr Float; closestUnsafe: ptr Float): bool {.base.} = (discard)
proc registerVirtual_castMotion*[T: PhysicsDirectSpaceState2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_cast_motion"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectSpaceState2DExtension](p_instance).castMotion(p_args[0].decode(RID), p_args[1].decode(Transform2D), p_args[2].decode(Vector2), p_args[3].decode(Float), p_args[4].decode(uint32), p_args[5].decode(bool), p_args[6].decode(bool), p_args[7].decode(ptr Float), p_args[8].decode(ptr Float)).encode(r_ret)

method collideShape*(self: PhysicsDirectSpaceState2DExtension; shapeRid: RID; transform: Transform2D; motion: Vector2; margin: Float; collisionMask: uint32; collideWithBodies: bool; collideWithAreas: bool; retvals: pointer; maxRetvals: int32; retvalCount: ptr int32): bool {.base.} = (discard)
proc registerVirtual_collideShape*[T: PhysicsDirectSpaceState2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_collide_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectSpaceState2DExtension](p_instance).collideShape(p_args[0].decode(RID), p_args[1].decode(Transform2D), p_args[2].decode(Vector2), p_args[3].decode(Float), p_args[4].decode(uint32), p_args[5].decode(bool), p_args[6].decode(bool), p_args[7].decode(pointer), p_args[8].decode(int32), p_args[9].decode(ptr int32)).encode(r_ret)

method restInfo*(self: PhysicsDirectSpaceState2DExtension; shapeRid: RID; transform: Transform2D; motion: Vector2; margin: Float; collisionMask: uint32; collideWithBodies: bool; collideWithAreas: bool; restInfo: ptr PhysicsServer2DExtensionShapeRestInfo): bool {.base.} = (discard)
proc registerVirtual_restInfo*[T: PhysicsDirectSpaceState2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_rest_info"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectSpaceState2DExtension](p_instance).restInfo(p_args[0].decode(RID), p_args[1].decode(Transform2D), p_args[2].decode(Vector2), p_args[3].decode(Float), p_args[4].decode(uint32), p_args[5].decode(bool), p_args[6].decode(bool), p_args[7].decode(ptr PhysicsServer2DExtensionShapeRestInfo)).encode(r_ret)

proc isBodyExcludedFromQuery*(self: PhysicsDirectSpaceState2DExtension; body: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectSpaceState2DExtension, "is_body_excluded_from_query", 4155700596)
  methodbind.ptrcall(self, [getPtr body], bool)
