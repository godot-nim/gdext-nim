{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(CollisionObject2D, Node2D)

method inputEvent*(self: CollisionObject2D; viewport: Viewport; event: gdref InputEvent; shapeIdx: int32): void {.base.} = (discard)
proc registerVirtual_inputEvent*[T: CollisionObject2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_input_event"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[CollisionObject2D](p_instance).inputEvent(p_args[0].decode(Viewport), p_args[1].decode(gdref InputEvent), p_args[2].decode(int32))

method mouseEnter*(self: CollisionObject2D): void {.base.} = (discard)
proc registerVirtual_mouseEnter*[T: CollisionObject2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_mouse_enter"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[CollisionObject2D](p_instance).mouseEnter()

method mouseExit*(self: CollisionObject2D): void {.base.} = (discard)
proc registerVirtual_mouseExit*[T: CollisionObject2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_mouse_exit"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[CollisionObject2D](p_instance).mouseExit()

method mouseShapeEnter*(self: CollisionObject2D; shapeIdx: int32): void {.base.} = (discard)
proc registerVirtual_mouseShapeEnter*[T: CollisionObject2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_mouse_shape_enter"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[CollisionObject2D](p_instance).mouseShapeEnter(p_args[0].decode(int32))

method mouseShapeExit*(self: CollisionObject2D; shapeIdx: int32): void {.base.} = (discard)
proc registerVirtual_mouseShapeExit*[T: CollisionObject2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_mouse_shape_exit"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[CollisionObject2D](p_instance).mouseShapeExit(p_args[0].decode(int32))

proc getRid*(self: CollisionObject2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "get_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setCollisionLayer*(self: CollisionObject2D; layer: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "set_collision_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layer], void)

proc getCollisionLayer*(self: CollisionObject2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "get_collision_layer", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setCollisionMask*(self: CollisionObject2D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getCollisionMask*(self: CollisionObject2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "get_collision_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setCollisionLayerValue*(self: CollisionObject2D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "set_collision_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getCollisionLayerValue*(self: CollisionObject2D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "get_collision_layer_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setCollisionMaskValue*(self: CollisionObject2D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "set_collision_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getCollisionMaskValue*(self: CollisionObject2D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "get_collision_mask_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setCollisionPriority*(self: CollisionObject2D; priority: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "set_collision_priority", 373806689)
  methodbind.ptrcall(self, [getPtr priority], void)

proc getCollisionPriority*(self: CollisionObject2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "get_collision_priority", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDisableMode*(self: CollisionObject2D; mode: CollisionObject2D_DisableMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "set_disable_mode", 1919204045)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getDisableMode*(self: CollisionObject2D): CollisionObject2D_DisableMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "get_disable_mode", 3172846349)
  methodbind.ptrcall(self, [], CollisionObject2D_DisableMode)

proc setPickable*(self: CollisionObject2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "set_pickable", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isPickable*(self: CollisionObject2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "is_pickable", 36873697)
  methodbind.ptrcall(self, [], bool)

proc createShapeOwner*(self: CollisionObject2D; owner: Object): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "create_shape_owner", 3429307534)
  methodbind.ptrcall(self, [getPtr owner], uint32)

proc removeShapeOwner*(self: CollisionObject2D; ownerId: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "remove_shape_owner", 1286410249)
  methodbind.ptrcall(self, [getPtr ownerId], void)

proc getShapeOwners*(self: CollisionObject2D): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "get_shape_owners", 969006518)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc shapeOwnerSetTransform*(self: CollisionObject2D; ownerId: uint32; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "shape_owner_set_transform", 30160968)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr transform], void)

proc shapeOwnerGetTransform*(self: CollisionObject2D; ownerId: uint32): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "shape_owner_get_transform", 3836996910)
  methodbind.ptrcall(self, [getPtr ownerId], Transform2D)

proc shapeOwnerGetOwner*(self: CollisionObject2D; ownerId: uint32): Object =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "shape_owner_get_owner", 3332903315)
  methodbind.ptrcall(self, [getPtr ownerId], Object)

proc shapeOwnerSetDisabled*(self: CollisionObject2D; ownerId: uint32; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "shape_owner_set_disabled", 300928843)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr disabled], void)

proc isShapeOwnerDisabled*(self: CollisionObject2D; ownerId: uint32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "is_shape_owner_disabled", 1116898809)
  methodbind.ptrcall(self, [getPtr ownerId], bool)

proc shapeOwnerSetOneWayCollision*(self: CollisionObject2D; ownerId: uint32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "shape_owner_set_one_way_collision", 300928843)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr enable], void)

proc isShapeOwnerOneWayCollisionEnabled*(self: CollisionObject2D; ownerId: uint32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "is_shape_owner_one_way_collision_enabled", 1116898809)
  methodbind.ptrcall(self, [getPtr ownerId], bool)

proc shapeOwnerSetOneWayCollisionMargin*(self: CollisionObject2D; ownerId: uint32; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "shape_owner_set_one_way_collision_margin", 1602489585)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr margin], void)

proc getShapeOwnerOneWayCollisionMargin*(self: CollisionObject2D; ownerId: uint32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "get_shape_owner_one_way_collision_margin", 2339986948)
  methodbind.ptrcall(self, [getPtr ownerId], Float)

proc shapeOwnerAddShape*(self: CollisionObject2D; ownerId: uint32; shape: gdref Shape2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "shape_owner_add_shape", 2077425081)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr shape], void)

proc shapeOwnerGetShapeCount*(self: CollisionObject2D; ownerId: uint32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "shape_owner_get_shape_count", 923996154)
  methodbind.ptrcall(self, [getPtr ownerId], int32)

proc shapeOwnerGetShape*(self: CollisionObject2D; ownerId: uint32; shapeId: int32): gdref Shape2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "shape_owner_get_shape", 3106725749)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr shapeId], gdref Shape2D)

proc shapeOwnerGetShapeIndex*(self: CollisionObject2D; ownerId: uint32; shapeId: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "shape_owner_get_shape_index", 3175239445)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr shapeId], int32)

proc shapeOwnerRemoveShape*(self: CollisionObject2D; ownerId: uint32; shapeId: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "shape_owner_remove_shape", 3937882851)
  methodbind.ptrcall(self, [getPtr ownerId, getPtr shapeId], void)

proc shapeOwnerClearShapes*(self: CollisionObject2D; ownerId: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "shape_owner_clear_shapes", 1286410249)
  methodbind.ptrcall(self, [getPtr ownerId], void)

proc shapeFindOwner*(self: CollisionObject2D; shapeIndex: int32): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionObject2D, "shape_find_owner", 923996154)
  methodbind.ptrcall(self, [getPtr shapeIndex], uint32)

template disableMode*(self: CollisionObject2D): untyped = self.getDisableMode()
template `disableMode=`*(self: CollisionObject2D; value) = self.setDisableMode(value)

template collisionLayer*(self: CollisionObject2D): untyped = self.getCollisionLayer()
template `collisionLayer=`*(self: CollisionObject2D; value) = self.setCollisionLayer(value)

template collisionMask*(self: CollisionObject2D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: CollisionObject2D; value) = self.setCollisionMask(value)

template collisionPriority*(self: CollisionObject2D): untyped = self.getCollisionPriority()
template `collisionPriority=`*(self: CollisionObject2D; value) = self.setCollisionPriority(value)

template inputPickable*(self: CollisionObject2D): untyped = self.isPickable()
template `inputPickable=`*(self: CollisionObject2D; value) = self.setPickable(value)
