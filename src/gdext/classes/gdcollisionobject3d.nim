{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(CollisionObject3D, Node3D)

method inputEvent*(self: CollisionObject3D; camera: Camera3D; event: gdref InputEvent; eventPosition: Vector3; normal: Vector3; shapeIdx: int32): void {.base.} = (discard)
proc registerVirtual_inputEvent*[T: CollisionObject3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_input_event"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[CollisionObject3D](p_instance).inputEvent(p_args[0].decode(Camera3D), p_args[1].decode(gdref InputEvent), p_args[2].decode(Vector3), p_args[3].decode(Vector3), p_args[4].decode(int32))

method mouseEnter*(self: CollisionObject3D): void {.base.} = (discard)
proc registerVirtual_mouseEnter*[T: CollisionObject3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_mouse_enter"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[CollisionObject3D](p_instance).mouseEnter()

method mouseExit*(self: CollisionObject3D): void {.base.} = (discard)
proc registerVirtual_mouseExit*[T: CollisionObject3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_mouse_exit"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[CollisionObject3D](p_instance).mouseExit()

proc setCollisionLayer*(self: CollisionObject3D; layer: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "set_collision_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layer], void)

proc getCollisionLayer*(self: CollisionObject3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "get_collision_layer", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setCollisionMask*(self: CollisionObject3D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getCollisionMask*(self: CollisionObject3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "get_collision_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setCollisionLayerValue*(self: CollisionObject3D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "set_collision_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getCollisionLayerValue*(self: CollisionObject3D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "get_collision_layer_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setCollisionMaskValue*(self: CollisionObject3D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "set_collision_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getCollisionMaskValue*(self: CollisionObject3D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "get_collision_mask_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setCollisionPriority*(self: CollisionObject3D; priority: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "set_collision_priority", 373806689)
  methodbind.ptrcall(self, [getPtr priority], void)

proc getCollisionPriority*(self: CollisionObject3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "get_collision_priority", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDisableMode*(self: CollisionObject3D; mode: CollisionObject3D_DisableMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "set_disable_mode", 1623620376)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getDisableMode*(self: CollisionObject3D): CollisionObject3D_DisableMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "get_disable_mode", 410164780)
  methodbind.ptrcall(self, [], CollisionObject3D_DisableMode)

proc setRayPickable*(self: CollisionObject3D; rayPickable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "set_ray_pickable", 2586408642)
  methodbind.ptrcall(self, [getPtr rayPickable], void)

proc isRayPickable*(self: CollisionObject3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "is_ray_pickable", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCaptureInputOnDrag*(self: CollisionObject3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "set_capture_input_on_drag", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getCaptureInputOnDrag*(self: CollisionObject3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "get_capture_input_on_drag", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getRid*(self: CollisionObject3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "get_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc createShapeOwner*(self: CollisionObject3D; owner: Object): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "create_shape_owner", 3429307534)
  methodbind.ptrcall(self, [getPtr owner], uint32)

proc removeShapeOwner*(self: CollisionObject3D; ownerId: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "remove_shape_owner", 1286410249)
  methodbind.ptrcall(self, [getPtr ownerId], void)

proc getShapeOwners*(self: CollisionObject3D): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "get_shape_owners", 969006518)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc shapeOwnerSetTransform*(self: CollisionObject3D; ownerId: uint32; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "shape_owner_set_transform", 3616898986)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr transform], void)

proc shapeOwnerGetTransform*(self: CollisionObject3D; ownerId: uint32): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "shape_owner_get_transform", 1965739696)
  methodbind.ptrcall(self, [getPtr ownerId], Transform3D)

proc shapeOwnerGetOwner*(self: CollisionObject3D; ownerId: uint32): Object =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "shape_owner_get_owner", 3332903315)
  methodbind.ptrcall(self, [getPtr ownerId], Object)

proc shapeOwnerSetDisabled*(self: CollisionObject3D; ownerId: uint32; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "shape_owner_set_disabled", 300928843)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr disabled], void)

proc isShapeOwnerDisabled*(self: CollisionObject3D; ownerId: uint32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "is_shape_owner_disabled", 1116898809)
  methodbind.ptrcall(self, [getPtr ownerId], bool)

proc shapeOwnerAddShape*(self: CollisionObject3D; ownerId: uint32; shape: gdref Shape3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "shape_owner_add_shape", 2566676345)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr shape], void)

proc shapeOwnerGetShapeCount*(self: CollisionObject3D; ownerId: uint32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "shape_owner_get_shape_count", 923996154)
  methodbind.ptrcall(self, [getPtr ownerId], int32)

proc shapeOwnerGetShape*(self: CollisionObject3D; ownerId: uint32; shapeId: int32): gdref Shape3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "shape_owner_get_shape", 4015519174)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr shapeId], gdref Shape3D)

proc shapeOwnerGetShapeIndex*(self: CollisionObject3D; ownerId: uint32; shapeId: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "shape_owner_get_shape_index", 3175239445)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr shapeId], int32)

proc shapeOwnerRemoveShape*(self: CollisionObject3D; ownerId: uint32; shapeId: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "shape_owner_remove_shape", 3937882851)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr shapeId], void)

proc shapeOwnerClearShapes*(self: CollisionObject3D; ownerId: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "shape_owner_clear_shapes", 1286410249)
  methodbind.ptrcall(self, [getPtr ownerId], void)

proc shapeFindOwner*(self: CollisionObject3D; shapeIndex: int32): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject3D, "shape_find_owner", 923996154)
  methodbind.ptrcall(self, [getPtr shapeIndex], uint32)

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
