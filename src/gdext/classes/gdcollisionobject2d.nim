{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

method inputEvent*(self: CollisionObject2D; viewport: Viewport; event: gdref InputEvent; shapeIdx: int32): void {.base.} = (discard)
proc inputEvent(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[CollisionObject2D](p_instance).inputEvent(p_args[0].decode(Viewport), p_args[1].decode(gdref InputEvent), p_args[2].decode(int32))
template inputEvent_bind*(_: typedesc[CollisionObject2D]): ClassCallVirtual = inputEvent

method mouseEnter*(self: CollisionObject2D): void {.base.} = (discard)
proc mouseEnter(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[CollisionObject2D](p_instance).mouseEnter()
template mouseEnter_bind*(_: typedesc[CollisionObject2D]): ClassCallVirtual = mouseEnter

method mouseExit*(self: CollisionObject2D): void {.base.} = (discard)
proc mouseExit(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[CollisionObject2D](p_instance).mouseExit()
template mouseExit_bind*(_: typedesc[CollisionObject2D]): ClassCallVirtual = mouseExit

method mouseShapeEnter*(self: CollisionObject2D; shapeIdx: int32): void {.base.} = (discard)
proc mouseShapeEnter(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[CollisionObject2D](p_instance).mouseShapeEnter(p_args[0].decode(int32))
template mouseShapeEnter_bind*(_: typedesc[CollisionObject2D]): ClassCallVirtual = mouseShapeEnter

method mouseShapeExit*(self: CollisionObject2D; shapeIdx: int32): void {.base.} = (discard)
proc mouseShapeExit(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[CollisionObject2D](p_instance).mouseShapeExit(p_args[0].decode(int32))
template mouseShapeExit_bind*(_: typedesc[CollisionObject2D]): ClassCallVirtual = mouseShapeExit

proc getRid*(self: CollisionObject2D): RID =
  expandMethodBind(className CollisionObject2D, "get_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

proc setCollisionLayer*(self: CollisionObject2D; layer: uint32): void =
  expandMethodBind(className CollisionObject2D, "set_collision_layer", 1286410249)
  var `?param` = [getPtr layer]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionLayer*(self: CollisionObject2D): uint32 =
  expandMethodBind(className CollisionObject2D, "get_collision_layer", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setCollisionMask*(self: CollisionObject2D; mask: uint32): void =
  expandMethodBind(className CollisionObject2D, "set_collision_mask", 1286410249)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMask*(self: CollisionObject2D): uint32 =
  expandMethodBind(className CollisionObject2D, "get_collision_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setCollisionLayerValue*(self: CollisionObject2D; layerNumber: int32; value: bool): void =
  expandMethodBind(className CollisionObject2D, "set_collision_layer_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionLayerValue*(self: CollisionObject2D; layerNumber: int32): bool =
  expandMethodBind(className CollisionObject2D, "get_collision_layer_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setCollisionMaskValue*(self: CollisionObject2D; layerNumber: int32; value: bool): void =
  expandMethodBind(className CollisionObject2D, "set_collision_mask_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMaskValue*(self: CollisionObject2D; layerNumber: int32): bool =
  expandMethodBind(className CollisionObject2D, "get_collision_mask_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setCollisionPriority*(self: CollisionObject2D; priority: Float): void =
  expandMethodBind(className CollisionObject2D, "set_collision_priority", 373806689)
  var `?param` = [getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionPriority*(self: CollisionObject2D): Float =
  expandMethodBind(className CollisionObject2D, "get_collision_priority", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDisableMode*(self: CollisionObject2D; mode: CollisionObject2D_DisableMode): void =
  expandMethodBind(className CollisionObject2D, "set_disable_mode", 1919204045)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDisableMode*(self: CollisionObject2D): CollisionObject2D_DisableMode =
  expandMethodBind(className CollisionObject2D, "get_disable_mode", 3172846349)
  var ret: encoded CollisionObject2D_DisableMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CollisionObject2D_DisableMode)

proc setPickable*(self: CollisionObject2D; enabled: bool): void =
  expandMethodBind(className CollisionObject2D, "set_pickable", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPickable*(self: CollisionObject2D): bool =
  expandMethodBind(className CollisionObject2D, "is_pickable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc createShapeOwner*(self: CollisionObject2D; owner: Object): uint32 =
  expandMethodBind(className CollisionObject2D, "create_shape_owner", 3429307534)
  var `?param` = [getPtr owner]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc removeShapeOwner*(self: CollisionObject2D; ownerId: uint32): void =
  expandMethodBind(className CollisionObject2D, "remove_shape_owner", 1286410249)
  var `?param` = [getPtr ownerId]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShapeOwners*(self: CollisionObject2D): PackedInt32Array =
  expandMethodBind(className CollisionObject2D, "get_shape_owners", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc shapeOwnerSetTransform*(self: CollisionObject2D; ownerId: uint32; transform: Transform2D): void =
  expandMethodBind(className CollisionObject2D, "shape_owner_set_transform", 30160968)
  var `?param` = [getPtr ownerId, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapeOwnerGetTransform*(self: CollisionObject2D; ownerId: uint32): Transform2D =
  expandMethodBind(className CollisionObject2D, "shape_owner_get_transform", 3836996910)
  var `?param` = [getPtr ownerId]
  var ret: encoded Transform2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform2D)

proc shapeOwnerGetOwner*(self: CollisionObject2D; ownerId: uint32): Object =
  expandMethodBind(className CollisionObject2D, "shape_owner_get_owner", 3332903315)
  var `?param` = [getPtr ownerId]
  var ret: encoded Object
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Object)

proc shapeOwnerSetDisabled*(self: CollisionObject2D; ownerId: uint32; disabled: bool): void =
  expandMethodBind(className CollisionObject2D, "shape_owner_set_disabled", 300928843)
  var `?param` = [getPtr ownerId, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isShapeOwnerDisabled*(self: CollisionObject2D; ownerId: uint32): bool =
  expandMethodBind(className CollisionObject2D, "is_shape_owner_disabled", 1116898809)
  var `?param` = [getPtr ownerId]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc shapeOwnerSetOneWayCollision*(self: CollisionObject2D; ownerId: uint32; enable: bool): void =
  expandMethodBind(className CollisionObject2D, "shape_owner_set_one_way_collision", 300928843)
  var `?param` = [getPtr ownerId, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isShapeOwnerOneWayCollisionEnabled*(self: CollisionObject2D; ownerId: uint32): bool =
  expandMethodBind(className CollisionObject2D, "is_shape_owner_one_way_collision_enabled", 1116898809)
  var `?param` = [getPtr ownerId]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc shapeOwnerSetOneWayCollisionMargin*(self: CollisionObject2D; ownerId: uint32; margin: Float): void =
  expandMethodBind(className CollisionObject2D, "shape_owner_set_one_way_collision_margin", 1602489585)
  var `?param` = [getPtr ownerId, getPtr margin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShapeOwnerOneWayCollisionMargin*(self: CollisionObject2D; ownerId: uint32): Float =
  expandMethodBind(className CollisionObject2D, "get_shape_owner_one_way_collision_margin", 2339986948)
  var `?param` = [getPtr ownerId]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc shapeOwnerAddShape*(self: CollisionObject2D; ownerId: uint32; shape: gdref Shape2D): void =
  expandMethodBind(className CollisionObject2D, "shape_owner_add_shape", 2077425081)
  var `?param` = [getPtr ownerId, getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapeOwnerGetShapeCount*(self: CollisionObject2D; ownerId: uint32): int32 =
  expandMethodBind(className CollisionObject2D, "shape_owner_get_shape_count", 923996154)
  var `?param` = [getPtr ownerId]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc shapeOwnerGetShape*(self: CollisionObject2D; ownerId: uint32; shapeId: int32): gdref Shape2D =
  expandMethodBind(className CollisionObject2D, "shape_owner_get_shape", 3106725749)
  var `?param` = [getPtr ownerId, getPtr shapeId]
  var ret: encoded gdref Shape2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Shape2D)

proc shapeOwnerGetShapeIndex*(self: CollisionObject2D; ownerId: uint32; shapeId: int32): int32 =
  expandMethodBind(className CollisionObject2D, "shape_owner_get_shape_index", 3175239445)
  var `?param` = [getPtr ownerId, getPtr shapeId]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc shapeOwnerRemoveShape*(self: CollisionObject2D; ownerId: uint32; shapeId: int32): void =
  expandMethodBind(className CollisionObject2D, "shape_owner_remove_shape", 3937882851)
  var `?param` = [getPtr ownerId, getPtr shapeId]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapeOwnerClearShapes*(self: CollisionObject2D; ownerId: uint32): void =
  expandMethodBind(className CollisionObject2D, "shape_owner_clear_shapes", 1286410249)
  var `?param` = [getPtr ownerId]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapeFindOwner*(self: CollisionObject2D; shapeIndex: int32): uint32 =
  expandMethodBind(className CollisionObject2D, "shape_find_owner", 923996154)
  var `?param` = [getPtr shapeIndex]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

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

const CollisionObject2D_vmap =
  Node2D.vmap.concat toTable {
    "inputevent" : "_input_event",
    "mouseenter" : "_mouse_enter",
    "mouseexit" : "_mouse_exit",
    "mouseshapeenter" : "_mouse_shape_enter",
    "mouseshapeexit" : "_mouse_shape_exit",
    }
template vmap*(_: typedesc[CollisionObject2D]): Table[string, string] = CollisionObject2D_vmap

proc inputEvent*(self: CollisionObject2D; viewport: Variant; event: Variant; shapeIdx: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("input_event")
  let args = [viewport, event, shapeIdx]
  self.emitSignal(signalname, args)

proc mouseEntered*(self: CollisionObject2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("mouse_entered")
  self.emitSignal(signalname)

proc mouseExited*(self: CollisionObject2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("mouse_exited")
  self.emitSignal(signalname)

proc mouseShapeEntered*(self: CollisionObject2D; shapeIdx: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("mouse_shape_entered")
  let args = [shapeIdx]
  self.emitSignal(signalname, args)

proc mouseShapeExited*(self: CollisionObject2D; shapeIdx: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("mouse_shape_exited")
  let args = [shapeIdx]
  self.emitSignal(signalname, args)