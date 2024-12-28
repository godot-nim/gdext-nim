{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

method inputEvent*(self: CollisionObject3D; camera: Camera3D; event: gdref InputEvent; eventPosition: Vector3; normal: Vector3; shapeIdx: int32): void {.base.} = (discard)
proc inputEvent(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[CollisionObject3D](p_instance).inputEvent(p_args[0].decode(Camera3D), p_args[1].decode(gdref InputEvent), p_args[2].decode(Vector3), p_args[3].decode(Vector3), p_args[4].decode(int32))
template inputEvent_bind*(_: typedesc[CollisionObject3D]): ClassCallVirtual = inputEvent

method mouseEnter*(self: CollisionObject3D): void {.base.} = (discard)
proc mouseEnter(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[CollisionObject3D](p_instance).mouseEnter()
template mouseEnter_bind*(_: typedesc[CollisionObject3D]): ClassCallVirtual = mouseEnter

method mouseExit*(self: CollisionObject3D): void {.base.} = (discard)
proc mouseExit(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[CollisionObject3D](p_instance).mouseExit()
template mouseExit_bind*(_: typedesc[CollisionObject3D]): ClassCallVirtual = mouseExit

proc setCollisionLayer*(self: CollisionObject3D; layer: uint32): void =
  expandMethodBind(className CollisionObject3D, "set_collision_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layer])

proc getCollisionLayer*(self: CollisionObject3D): uint32 =
  expandMethodBind(className CollisionObject3D, "get_collision_layer", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setCollisionMask*(self: CollisionObject3D; mask: uint32): void =
  expandMethodBind(className CollisionObject3D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask])

proc getCollisionMask*(self: CollisionObject3D): uint32 =
  expandMethodBind(className CollisionObject3D, "get_collision_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setCollisionLayerValue*(self: CollisionObject3D; layerNumber: int32; value: bool): void =
  expandMethodBind(className CollisionObject3D, "set_collision_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value])

proc getCollisionLayerValue*(self: CollisionObject3D; layerNumber: int32): bool =
  expandMethodBind(className CollisionObject3D, "get_collision_layer_value", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr layerNumber], addr ret)
  (addr ret).decode_result(bool)

proc setCollisionMaskValue*(self: CollisionObject3D; layerNumber: int32; value: bool): void =
  expandMethodBind(className CollisionObject3D, "set_collision_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value])

proc getCollisionMaskValue*(self: CollisionObject3D; layerNumber: int32): bool =
  expandMethodBind(className CollisionObject3D, "get_collision_mask_value", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr layerNumber], addr ret)
  (addr ret).decode_result(bool)

proc setCollisionPriority*(self: CollisionObject3D; priority: Float): void =
  expandMethodBind(className CollisionObject3D, "set_collision_priority", 373806689)
  methodbind.ptrcall(self, [getPtr priority])

proc getCollisionPriority*(self: CollisionObject3D): Float =
  expandMethodBind(className CollisionObject3D, "get_collision_priority", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDisableMode*(self: CollisionObject3D; mode: CollisionObject3D_DisableMode): void =
  expandMethodBind(className CollisionObject3D, "set_disable_mode", 1623620376)
  methodbind.ptrcall(self, [getPtr mode])

proc getDisableMode*(self: CollisionObject3D): CollisionObject3D_DisableMode =
  expandMethodBind(className CollisionObject3D, "get_disable_mode", 410164780)
  var ret: encoded CollisionObject3D_DisableMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(CollisionObject3D_DisableMode)

proc setRayPickable*(self: CollisionObject3D; rayPickable: bool): void =
  expandMethodBind(className CollisionObject3D, "set_ray_pickable", 2586408642)
  methodbind.ptrcall(self, [getPtr rayPickable])

proc isRayPickable*(self: CollisionObject3D): bool =
  expandMethodBind(className CollisionObject3D, "is_ray_pickable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCaptureInputOnDrag*(self: CollisionObject3D; enable: bool): void =
  expandMethodBind(className CollisionObject3D, "set_capture_input_on_drag", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc getCaptureInputOnDrag*(self: CollisionObject3D): bool =
  expandMethodBind(className CollisionObject3D, "get_capture_input_on_drag", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getRid*(self: CollisionObject3D): RID =
  expandMethodBind(className CollisionObject3D, "get_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc createShapeOwner*(self: CollisionObject3D; owner: Object): uint32 =
  expandMethodBind(className CollisionObject3D, "create_shape_owner", 3429307534)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr owner], addr ret)
  (addr ret).decode_result(uint32)

proc removeShapeOwner*(self: CollisionObject3D; ownerId: uint32): void =
  expandMethodBind(className CollisionObject3D, "remove_shape_owner", 1286410249)
  methodbind.ptrcall(self, [getPtr ownerId])

proc getShapeOwners*(self: CollisionObject3D): PackedInt32Array =
  expandMethodBind(className CollisionObject3D, "get_shape_owners", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc shapeOwnerSetTransform*(self: CollisionObject3D; ownerId: uint32; transform: Transform3D): void =
  expandMethodBind(className CollisionObject3D, "shape_owner_set_transform", 3616898986)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr transform])

proc shapeOwnerGetTransform*(self: CollisionObject3D; ownerId: uint32): Transform3D =
  expandMethodBind(className CollisionObject3D, "shape_owner_get_transform", 1965739696)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr ownerId], addr ret)
  (addr ret).decode_result(Transform3D)

proc shapeOwnerGetOwner*(self: CollisionObject3D; ownerId: uint32): Object =
  expandMethodBind(className CollisionObject3D, "shape_owner_get_owner", 3332903315)
  var ret: encoded Object
  methodbind.ptrcall(self, [getPtr ownerId], addr ret)
  (addr ret).decode_result(Object)

proc shapeOwnerSetDisabled*(self: CollisionObject3D; ownerId: uint32; disabled: bool): void =
  expandMethodBind(className CollisionObject3D, "shape_owner_set_disabled", 300928843)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr disabled])

proc isShapeOwnerDisabled*(self: CollisionObject3D; ownerId: uint32): bool =
  expandMethodBind(className CollisionObject3D, "is_shape_owner_disabled", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr ownerId], addr ret)
  (addr ret).decode_result(bool)

proc shapeOwnerAddShape*(self: CollisionObject3D; ownerId: uint32; shape: gdref Shape3D): void =
  expandMethodBind(className CollisionObject3D, "shape_owner_add_shape", 2566676345)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr shape])

proc shapeOwnerGetShapeCount*(self: CollisionObject3D; ownerId: uint32): int32 =
  expandMethodBind(className CollisionObject3D, "shape_owner_get_shape_count", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr ownerId], addr ret)
  (addr ret).decode_result(int32)

proc shapeOwnerGetShape*(self: CollisionObject3D; ownerId: uint32; shapeId: int32): gdref Shape3D =
  expandMethodBind(className CollisionObject3D, "shape_owner_get_shape", 4015519174)
  var ret: encoded gdref Shape3D
  methodbind.ptrcall(self, [getPtr ownerId, getPtr shapeId], addr ret)
  (addr ret).decode_result(gdref Shape3D)

proc shapeOwnerGetShapeIndex*(self: CollisionObject3D; ownerId: uint32; shapeId: int32): int32 =
  expandMethodBind(className CollisionObject3D, "shape_owner_get_shape_index", 3175239445)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr ownerId, getPtr shapeId], addr ret)
  (addr ret).decode_result(int32)

proc shapeOwnerRemoveShape*(self: CollisionObject3D; ownerId: uint32; shapeId: int32): void =
  expandMethodBind(className CollisionObject3D, "shape_owner_remove_shape", 3937882851)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr shapeId])

proc shapeOwnerClearShapes*(self: CollisionObject3D; ownerId: uint32): void =
  expandMethodBind(className CollisionObject3D, "shape_owner_clear_shapes", 1286410249)
  methodbind.ptrcall(self, [getPtr ownerId])

proc shapeFindOwner*(self: CollisionObject3D; shapeIndex: int32): uint32 =
  expandMethodBind(className CollisionObject3D, "shape_find_owner", 923996154)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr shapeIndex], addr ret)
  (addr ret).decode_result(uint32)

template disableMode*(self: CollisionObject3D): untyped = self.getDisableMode()
template `disableMode=`*(self: CollisionObject3D; value) = self.setDisableMode(value)

template collisionLayer*(self: CollisionObject3D): untyped = self.getCollisionLayer()
template `collisionLayer=`*(self: CollisionObject3D; value) = self.setCollisionLayer(value)

template collisionMask*(self: CollisionObject3D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: CollisionObject3D; value) = self.setCollisionMask(value)

template collisionPriority*(self: CollisionObject3D): untyped = self.getCollisionPriority()
template `collisionPriority=`*(self: CollisionObject3D; value) = self.setCollisionPriority(value)

template inputRayPickable*(self: CollisionObject3D): untyped = self.isRayPickable()
template `inputRayPickable=`*(self: CollisionObject3D; value) = self.setRayPickable(value)

template inputCaptureOnDrag*(self: CollisionObject3D): untyped = self.getCaptureInputOnDrag()
template `inputCaptureOnDrag=`*(self: CollisionObject3D; value) = self.setCaptureInputOnDrag(value)

const CollisionObject3D_vmap =
  Node3D.vmap.concat toTable {
    "inputevent" : "_input_event",
    "mouseenter" : "_mouse_enter",
    "mouseexit" : "_mouse_exit",
    }
template vmap*(_: typedesc[CollisionObject3D]): Table[string, string] = CollisionObject3D_vmap

proc inputEvent*(self: CollisionObject3D; camera: Variant; event: Variant; eventPosition: Variant; normal: Variant; shapeIdx: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("input_event")
  let args = [camera, event, eventPosition, normal, shapeIdx]
  self.emitSignal(signalname, args)

proc mouseEntered*(self: CollisionObject3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("mouse_entered")
  self.emitSignal(signalname)

proc mouseExited*(self: CollisionObject3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("mouse_exited")
  self.emitSignal(signalname)