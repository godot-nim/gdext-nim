{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdphysicsdirectspacestate2d; export gdphysicsdirectspacestate2d

method intersectRay*(self: PhysicsDirectSpaceState2DExtension; `from`: Vector2; to: Vector2; collisionMask: uint32; collideWithBodies: bool; collideWithAreas: bool; hitFromInside: bool; retval: ptr PhysicsServer2DExtensionRayResult): bool {.base.} = (discard)
proc intersectRay(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectSpaceState2DExtension](p_instance).intersectRay(p_args[0].decode(Vector2), p_args[1].decode(Vector2), p_args[2].decode(uint32), p_args[3].decode(bool), p_args[4].decode(bool), p_args[5].decode(bool), p_args[6].decode(ptr PhysicsServer2DExtensionRayResult)).encode(r_ret)
template intersectRay_bind*(_: typedesc[PhysicsDirectSpaceState2DExtension]): ClassCallVirtual = intersectRay

method intersectPoint*(self: PhysicsDirectSpaceState2DExtension; position: Vector2; canvasInstanceId: uint64; collisionMask: uint32; collideWithBodies: bool; collideWithAreas: bool; retvals: ptr PhysicsServer2DExtensionShapeResult; maxRetvals: int32): int32 {.base.} = (discard)
proc intersectPoint(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectSpaceState2DExtension](p_instance).intersectPoint(p_args[0].decode(Vector2), p_args[1].decode(uint64), p_args[2].decode(uint32), p_args[3].decode(bool), p_args[4].decode(bool), p_args[5].decode(ptr PhysicsServer2DExtensionShapeResult), p_args[6].decode(int32)).encode(r_ret)
template intersectPoint_bind*(_: typedesc[PhysicsDirectSpaceState2DExtension]): ClassCallVirtual = intersectPoint

method intersectShape*(self: PhysicsDirectSpaceState2DExtension; shapeRid: Rid; transform: Transform2D; motion: Vector2; margin: Float; collisionMask: uint32; collideWithBodies: bool; collideWithAreas: bool; retval: ptr PhysicsServer2DExtensionShapeResult; maxRetvals: int32): int32 {.base.} = (discard)
proc intersectShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectSpaceState2DExtension](p_instance).intersectShape(p_args[0].decode(Rid), p_args[1].decode(Transform2D), p_args[2].decode(Vector2), p_args[3].decode(Float), p_args[4].decode(uint32), p_args[5].decode(bool), p_args[6].decode(bool), p_args[7].decode(ptr PhysicsServer2DExtensionShapeResult), p_args[8].decode(int32)).encode(r_ret)
template intersectShape_bind*(_: typedesc[PhysicsDirectSpaceState2DExtension]): ClassCallVirtual = intersectShape

method castMotion*(self: PhysicsDirectSpaceState2DExtension; shapeRid: Rid; transform: Transform2D; motion: Vector2; margin: Float; collisionMask: uint32; collideWithBodies: bool; collideWithAreas: bool; closestSafe: ptr Float; closestUnsafe: ptr Float): bool {.base.} = (discard)
proc castMotion(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectSpaceState2DExtension](p_instance).castMotion(p_args[0].decode(Rid), p_args[1].decode(Transform2D), p_args[2].decode(Vector2), p_args[3].decode(Float), p_args[4].decode(uint32), p_args[5].decode(bool), p_args[6].decode(bool), p_args[7].decode(ptr Float), p_args[8].decode(ptr Float)).encode(r_ret)
template castMotion_bind*(_: typedesc[PhysicsDirectSpaceState2DExtension]): ClassCallVirtual = castMotion

method collideShape*(self: PhysicsDirectSpaceState2DExtension; shapeRid: Rid; transform: Transform2D; motion: Vector2; margin: Float; collisionMask: uint32; collideWithBodies: bool; collideWithAreas: bool; retvals: pointer; maxRetvals: int32; retvalCount: ptr int32): bool {.base.} = (discard)
proc collideShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectSpaceState2DExtension](p_instance).collideShape(p_args[0].decode(Rid), p_args[1].decode(Transform2D), p_args[2].decode(Vector2), p_args[3].decode(Float), p_args[4].decode(uint32), p_args[5].decode(bool), p_args[6].decode(bool), p_args[7].decode(pointer), p_args[8].decode(int32), p_args[9].decode(ptr int32)).encode(r_ret)
template collideShape_bind*(_: typedesc[PhysicsDirectSpaceState2DExtension]): ClassCallVirtual = collideShape

method restInfo*(self: PhysicsDirectSpaceState2DExtension; shapeRid: Rid; transform: Transform2D; motion: Vector2; margin: Float; collisionMask: uint32; collideWithBodies: bool; collideWithAreas: bool; restInfo: ptr PhysicsServer2DExtensionShapeRestInfo): bool {.base.} = (discard)
proc restInfo(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectSpaceState2DExtension](p_instance).restInfo(p_args[0].decode(Rid), p_args[1].decode(Transform2D), p_args[2].decode(Vector2), p_args[3].decode(Float), p_args[4].decode(uint32), p_args[5].decode(bool), p_args[6].decode(bool), p_args[7].decode(ptr PhysicsServer2DExtensionShapeRestInfo)).encode(r_ret)
template restInfo_bind*(_: typedesc[PhysicsDirectSpaceState2DExtension]): ClassCallVirtual = restInfo

proc isBodyExcludedFromQuery*(self: PhysicsDirectSpaceState2DExtension; body: Rid): bool =
  expandMethodBind(className PhysicsDirectSpaceState2DExtension, "is_body_excluded_from_query", 4155700596)
  var `?param` = [getPtr body]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

const PhysicsDirectSpaceState2DExtension_vmap =
  PhysicsDirectSpaceState2D.vmap.concat toTable {
    "intersectray" : "_intersect_ray",
    "intersectpoint" : "_intersect_point",
    "intersectshape" : "_intersect_shape",
    "castmotion" : "_cast_motion",
    "collideshape" : "_collide_shape",
    "restinfo" : "_rest_info",
    }
template vmap*(_: typedesc[PhysicsDirectSpaceState2DExtension]): Table[string, string] = PhysicsDirectSpaceState2DExtension_vmap