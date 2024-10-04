{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdphysicsserver2d; export gdphysicsserver2d

method worldBoundaryShapeCreate*(self: PhysicsServer2DExtension): Rid {.base.} = (discard)
proc worldBoundaryShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).worldBoundaryShapeCreate().encode(r_ret)
template worldBoundaryShapeCreate_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = worldBoundaryShapeCreate

method separationRayShapeCreate*(self: PhysicsServer2DExtension): Rid {.base.} = (discard)
proc separationRayShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).separationRayShapeCreate().encode(r_ret)
template separationRayShapeCreate_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = separationRayShapeCreate

method segmentShapeCreate*(self: PhysicsServer2DExtension): Rid {.base.} = (discard)
proc segmentShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).segmentShapeCreate().encode(r_ret)
template segmentShapeCreate_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = segmentShapeCreate

method circleShapeCreate*(self: PhysicsServer2DExtension): Rid {.base.} = (discard)
proc circleShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).circleShapeCreate().encode(r_ret)
template circleShapeCreate_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = circleShapeCreate

method rectangleShapeCreate*(self: PhysicsServer2DExtension): Rid {.base.} = (discard)
proc rectangleShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).rectangleShapeCreate().encode(r_ret)
template rectangleShapeCreate_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = rectangleShapeCreate

method capsuleShapeCreate*(self: PhysicsServer2DExtension): Rid {.base.} = (discard)
proc capsuleShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).capsuleShapeCreate().encode(r_ret)
template capsuleShapeCreate_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = capsuleShapeCreate

method convexPolygonShapeCreate*(self: PhysicsServer2DExtension): Rid {.base.} = (discard)
proc convexPolygonShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).convexPolygonShapeCreate().encode(r_ret)
template convexPolygonShapeCreate_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = convexPolygonShapeCreate

method concavePolygonShapeCreate*(self: PhysicsServer2DExtension): Rid {.base.} = (discard)
proc concavePolygonShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).concavePolygonShapeCreate().encode(r_ret)
template concavePolygonShapeCreate_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = concavePolygonShapeCreate

method shapeSetData*(self: PhysicsServer2DExtension; shape: Rid; data: Variant): void {.base.} = (discard)
proc shapeSetData(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).shapeSetData(p_args[0].decode(Rid), p_args[1].decode(Variant))
template shapeSetData_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = shapeSetData

method shapeSetCustomSolverBias*(self: PhysicsServer2DExtension; shape: Rid; bias: Float): void {.base.} = (discard)
proc shapeSetCustomSolverBias(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).shapeSetCustomSolverBias(p_args[0].decode(Rid), p_args[1].decode(Float))
template shapeSetCustomSolverBias_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = shapeSetCustomSolverBias

method shapeGetType*(self: PhysicsServer2DExtension; shape: Rid): PhysicsServer2D_ShapeType {.base.} = (discard)
proc shapeGetType(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).shapeGetType(p_args[0].decode(Rid)).encode(r_ret)
template shapeGetType_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = shapeGetType

method shapeGetData*(self: PhysicsServer2DExtension; shape: Rid): Variant {.base.} = (discard)
proc shapeGetData(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).shapeGetData(p_args[0].decode(Rid)).encode(r_ret)
template shapeGetData_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = shapeGetData

method shapeGetCustomSolverBias*(self: PhysicsServer2DExtension; shape: Rid): Float {.base.} = (discard)
proc shapeGetCustomSolverBias(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).shapeGetCustomSolverBias(p_args[0].decode(Rid)).encode(r_ret)
template shapeGetCustomSolverBias_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = shapeGetCustomSolverBias

method shapeCollide*(self: PhysicsServer2DExtension; shapeA: Rid; xformA: Transform2D; motionA: Vector2; shapeB: Rid; xformB: Transform2D; motionB: Vector2; retvals: pointer; retvalMax: int32; retvalCount: ptr int32): bool {.base.} = (discard)
proc shapeCollide(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).shapeCollide(p_args[0].decode(Rid), p_args[1].decode(Transform2D), p_args[2].decode(Vector2), p_args[3].decode(Rid), p_args[4].decode(Transform2D), p_args[5].decode(Vector2), p_args[6].decode(pointer), p_args[7].decode(int32), p_args[8].decode(ptr int32)).encode(r_ret)
template shapeCollide_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = shapeCollide

method spaceCreate*(self: PhysicsServer2DExtension): Rid {.base.} = (discard)
proc spaceCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).spaceCreate().encode(r_ret)
template spaceCreate_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = spaceCreate

method spaceSetActive*(self: PhysicsServer2DExtension; space: Rid; active: bool): void {.base.} = (discard)
proc spaceSetActive(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).spaceSetActive(p_args[0].decode(Rid), p_args[1].decode(bool))
template spaceSetActive_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = spaceSetActive

method spaceIsActive*(self: PhysicsServer2DExtension; space: Rid): bool {.base.} = (discard)
proc spaceIsActive(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).spaceIsActive(p_args[0].decode(Rid)).encode(r_ret)
template spaceIsActive_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = spaceIsActive

method spaceSetParam*(self: PhysicsServer2DExtension; space: Rid; param: PhysicsServer2D_SpaceParameter; value: Float): void {.base.} = (discard)
proc spaceSetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).spaceSetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_SpaceParameter), p_args[2].decode(Float))
template spaceSetParam_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = spaceSetParam

method spaceGetParam*(self: PhysicsServer2DExtension; space: Rid; param: PhysicsServer2D_SpaceParameter): Float {.base.} = (discard)
proc spaceGetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).spaceGetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_SpaceParameter)).encode(r_ret)
template spaceGetParam_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = spaceGetParam

method spaceGetDirectState*(self: PhysicsServer2DExtension; space: Rid): PhysicsDirectSpaceState2D {.base.} = (discard)
proc spaceGetDirectState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).spaceGetDirectState(p_args[0].decode(Rid)).encode(r_ret)
template spaceGetDirectState_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = spaceGetDirectState

method spaceSetDebugContacts*(self: PhysicsServer2DExtension; space: Rid; maxContacts: int32): void {.base.} = (discard)
proc spaceSetDebugContacts(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).spaceSetDebugContacts(p_args[0].decode(Rid), p_args[1].decode(int32))
template spaceSetDebugContacts_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = spaceSetDebugContacts

method spaceGetContacts*(self: PhysicsServer2DExtension; space: Rid): PackedVector2Array {.base.} = (discard)
proc spaceGetContacts(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).spaceGetContacts(p_args[0].decode(Rid)).encode(r_ret)
template spaceGetContacts_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = spaceGetContacts

method spaceGetContactCount*(self: PhysicsServer2DExtension; space: Rid): int32 {.base.} = (discard)
proc spaceGetContactCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).spaceGetContactCount(p_args[0].decode(Rid)).encode(r_ret)
template spaceGetContactCount_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = spaceGetContactCount

method areaCreate*(self: PhysicsServer2DExtension): Rid {.base.} = (discard)
proc areaCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaCreate().encode(r_ret)
template areaCreate_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaCreate

method areaSetSpace*(self: PhysicsServer2DExtension; area: Rid; space: Rid): void {.base.} = (discard)
proc areaSetSpace(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaSetSpace(p_args[0].decode(Rid), p_args[1].decode(Rid))
template areaSetSpace_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaSetSpace

method areaGetSpace*(self: PhysicsServer2DExtension; area: Rid): Rid {.base.} = (discard)
proc areaGetSpace(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaGetSpace(p_args[0].decode(Rid)).encode(r_ret)
template areaGetSpace_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaGetSpace

method areaAddShape*(self: PhysicsServer2DExtension; area: Rid; shape: Rid; transform: Transform2D; disabled: bool): void {.base.} = (discard)
proc areaAddShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaAddShape(p_args[0].decode(Rid), p_args[1].decode(Rid), p_args[2].decode(Transform2D), p_args[3].decode(bool))
template areaAddShape_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaAddShape

method areaSetShape*(self: PhysicsServer2DExtension; area: Rid; shapeIdx: int32; shape: Rid): void {.base.} = (discard)
proc areaSetShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaSetShape(p_args[0].decode(Rid), p_args[1].decode(int32), p_args[2].decode(Rid))
template areaSetShape_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaSetShape

method areaSetShapeTransform*(self: PhysicsServer2DExtension; area: Rid; shapeIdx: int32; transform: Transform2D): void {.base.} = (discard)
proc areaSetShapeTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaSetShapeTransform(p_args[0].decode(Rid), p_args[1].decode(int32), p_args[2].decode(Transform2D))
template areaSetShapeTransform_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaSetShapeTransform

method areaSetShapeDisabled*(self: PhysicsServer2DExtension; area: Rid; shapeIdx: int32; disabled: bool): void {.base.} = (discard)
proc areaSetShapeDisabled(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaSetShapeDisabled(p_args[0].decode(Rid), p_args[1].decode(int32), p_args[2].decode(bool))
template areaSetShapeDisabled_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaSetShapeDisabled

method areaGetShapeCount*(self: PhysicsServer2DExtension; area: Rid): int32 {.base.} = (discard)
proc areaGetShapeCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaGetShapeCount(p_args[0].decode(Rid)).encode(r_ret)
template areaGetShapeCount_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaGetShapeCount

method areaGetShape*(self: PhysicsServer2DExtension; area: Rid; shapeIdx: int32): Rid {.base.} = (discard)
proc areaGetShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaGetShape(p_args[0].decode(Rid), p_args[1].decode(int32)).encode(r_ret)
template areaGetShape_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaGetShape

method areaGetShapeTransform*(self: PhysicsServer2DExtension; area: Rid; shapeIdx: int32): Transform2D {.base.} = (discard)
proc areaGetShapeTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaGetShapeTransform(p_args[0].decode(Rid), p_args[1].decode(int32)).encode(r_ret)
template areaGetShapeTransform_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaGetShapeTransform

method areaRemoveShape*(self: PhysicsServer2DExtension; area: Rid; shapeIdx: int32): void {.base.} = (discard)
proc areaRemoveShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaRemoveShape(p_args[0].decode(Rid), p_args[1].decode(int32))
template areaRemoveShape_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaRemoveShape

method areaClearShapes*(self: PhysicsServer2DExtension; area: Rid): void {.base.} = (discard)
proc areaClearShapes(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaClearShapes(p_args[0].decode(Rid))
template areaClearShapes_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaClearShapes

method areaAttachObjectInstanceId*(self: PhysicsServer2DExtension; area: Rid; id: uint64): void {.base.} = (discard)
proc areaAttachObjectInstanceId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaAttachObjectInstanceId(p_args[0].decode(Rid), p_args[1].decode(uint64))
template areaAttachObjectInstanceId_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaAttachObjectInstanceId

method areaGetObjectInstanceId*(self: PhysicsServer2DExtension; area: Rid): uint64 {.base.} = (discard)
proc areaGetObjectInstanceId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaGetObjectInstanceId(p_args[0].decode(Rid)).encode(r_ret)
template areaGetObjectInstanceId_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaGetObjectInstanceId

method areaAttachCanvasInstanceId*(self: PhysicsServer2DExtension; area: Rid; id: uint64): void {.base.} = (discard)
proc areaAttachCanvasInstanceId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaAttachCanvasInstanceId(p_args[0].decode(Rid), p_args[1].decode(uint64))
template areaAttachCanvasInstanceId_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaAttachCanvasInstanceId

method areaGetCanvasInstanceId*(self: PhysicsServer2DExtension; area: Rid): uint64 {.base.} = (discard)
proc areaGetCanvasInstanceId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaGetCanvasInstanceId(p_args[0].decode(Rid)).encode(r_ret)
template areaGetCanvasInstanceId_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaGetCanvasInstanceId

method areaSetParam*(self: PhysicsServer2DExtension; area: Rid; param: PhysicsServer2D_AreaParameter; value: Variant): void {.base.} = (discard)
proc areaSetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaSetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_AreaParameter), p_args[2].decode(Variant))
template areaSetParam_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaSetParam

method areaSetTransform*(self: PhysicsServer2DExtension; area: Rid; transform: Transform2D): void {.base.} = (discard)
proc areaSetTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaSetTransform(p_args[0].decode(Rid), p_args[1].decode(Transform2D))
template areaSetTransform_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaSetTransform

method areaGetParam*(self: PhysicsServer2DExtension; area: Rid; param: PhysicsServer2D_AreaParameter): Variant {.base.} = (discard)
proc areaGetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaGetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_AreaParameter)).encode(r_ret)
template areaGetParam_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaGetParam

method areaGetTransform*(self: PhysicsServer2DExtension; area: Rid): Transform2D {.base.} = (discard)
proc areaGetTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaGetTransform(p_args[0].decode(Rid)).encode(r_ret)
template areaGetTransform_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaGetTransform

method areaSetCollisionLayer*(self: PhysicsServer2DExtension; area: Rid; layer: uint32): void {.base.} = (discard)
proc areaSetCollisionLayer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaSetCollisionLayer(p_args[0].decode(Rid), p_args[1].decode(uint32))
template areaSetCollisionLayer_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaSetCollisionLayer

method areaGetCollisionLayer*(self: PhysicsServer2DExtension; area: Rid): uint32 {.base.} = (discard)
proc areaGetCollisionLayer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaGetCollisionLayer(p_args[0].decode(Rid)).encode(r_ret)
template areaGetCollisionLayer_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaGetCollisionLayer

method areaSetCollisionMask*(self: PhysicsServer2DExtension; area: Rid; mask: uint32): void {.base.} = (discard)
proc areaSetCollisionMask(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaSetCollisionMask(p_args[0].decode(Rid), p_args[1].decode(uint32))
template areaSetCollisionMask_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaSetCollisionMask

method areaGetCollisionMask*(self: PhysicsServer2DExtension; area: Rid): uint32 {.base.} = (discard)
proc areaGetCollisionMask(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaGetCollisionMask(p_args[0].decode(Rid)).encode(r_ret)
template areaGetCollisionMask_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaGetCollisionMask

method areaSetMonitorable*(self: PhysicsServer2DExtension; area: Rid; monitorable: bool): void {.base.} = (discard)
proc areaSetMonitorable(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaSetMonitorable(p_args[0].decode(Rid), p_args[1].decode(bool))
template areaSetMonitorable_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaSetMonitorable

method areaSetPickable*(self: PhysicsServer2DExtension; area: Rid; pickable: bool): void {.base.} = (discard)
proc areaSetPickable(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaSetPickable(p_args[0].decode(Rid), p_args[1].decode(bool))
template areaSetPickable_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaSetPickable

method areaSetMonitorCallback*(self: PhysicsServer2DExtension; area: Rid; callback: Callable): void {.base.} = (discard)
proc areaSetMonitorCallback(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaSetMonitorCallback(p_args[0].decode(Rid), p_args[1].decode(Callable))
template areaSetMonitorCallback_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaSetMonitorCallback

method areaSetAreaMonitorCallback*(self: PhysicsServer2DExtension; area: Rid; callback: Callable): void {.base.} = (discard)
proc areaSetAreaMonitorCallback(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).areaSetAreaMonitorCallback(p_args[0].decode(Rid), p_args[1].decode(Callable))
template areaSetAreaMonitorCallback_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = areaSetAreaMonitorCallback

method bodyCreate*(self: PhysicsServer2DExtension): Rid {.base.} = (discard)
proc bodyCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyCreate().encode(r_ret)
template bodyCreate_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyCreate

method bodySetSpace*(self: PhysicsServer2DExtension; body: Rid; space: Rid): void {.base.} = (discard)
proc bodySetSpace(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetSpace(p_args[0].decode(Rid), p_args[1].decode(Rid))
template bodySetSpace_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetSpace

method bodyGetSpace*(self: PhysicsServer2DExtension; body: Rid): Rid {.base.} = (discard)
proc bodyGetSpace(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetSpace(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetSpace_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetSpace

method bodySetMode*(self: PhysicsServer2DExtension; body: Rid; mode: PhysicsServer2D_BodyMode): void {.base.} = (discard)
proc bodySetMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetMode(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_BodyMode))
template bodySetMode_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetMode

method bodyGetMode*(self: PhysicsServer2DExtension; body: Rid): PhysicsServer2D_BodyMode {.base.} = (discard)
proc bodyGetMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetMode(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetMode_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetMode

method bodyAddShape*(self: PhysicsServer2DExtension; body: Rid; shape: Rid; transform: Transform2D; disabled: bool): void {.base.} = (discard)
proc bodyAddShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyAddShape(p_args[0].decode(Rid), p_args[1].decode(Rid), p_args[2].decode(Transform2D), p_args[3].decode(bool))
template bodyAddShape_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyAddShape

method bodySetShape*(self: PhysicsServer2DExtension; body: Rid; shapeIdx: int32; shape: Rid): void {.base.} = (discard)
proc bodySetShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetShape(p_args[0].decode(Rid), p_args[1].decode(int32), p_args[2].decode(Rid))
template bodySetShape_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetShape

method bodySetShapeTransform*(self: PhysicsServer2DExtension; body: Rid; shapeIdx: int32; transform: Transform2D): void {.base.} = (discard)
proc bodySetShapeTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetShapeTransform(p_args[0].decode(Rid), p_args[1].decode(int32), p_args[2].decode(Transform2D))
template bodySetShapeTransform_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetShapeTransform

method bodyGetShapeCount*(self: PhysicsServer2DExtension; body: Rid): int32 {.base.} = (discard)
proc bodyGetShapeCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetShapeCount(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetShapeCount_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetShapeCount

method bodyGetShape*(self: PhysicsServer2DExtension; body: Rid; shapeIdx: int32): Rid {.base.} = (discard)
proc bodyGetShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetShape(p_args[0].decode(Rid), p_args[1].decode(int32)).encode(r_ret)
template bodyGetShape_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetShape

method bodyGetShapeTransform*(self: PhysicsServer2DExtension; body: Rid; shapeIdx: int32): Transform2D {.base.} = (discard)
proc bodyGetShapeTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetShapeTransform(p_args[0].decode(Rid), p_args[1].decode(int32)).encode(r_ret)
template bodyGetShapeTransform_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetShapeTransform

method bodySetShapeDisabled*(self: PhysicsServer2DExtension; body: Rid; shapeIdx: int32; disabled: bool): void {.base.} = (discard)
proc bodySetShapeDisabled(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetShapeDisabled(p_args[0].decode(Rid), p_args[1].decode(int32), p_args[2].decode(bool))
template bodySetShapeDisabled_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetShapeDisabled

method bodySetShapeAsOneWayCollision*(self: PhysicsServer2DExtension; body: Rid; shapeIdx: int32; enable: bool; margin: Float): void {.base.} = (discard)
proc bodySetShapeAsOneWayCollision(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetShapeAsOneWayCollision(p_args[0].decode(Rid), p_args[1].decode(int32), p_args[2].decode(bool), p_args[3].decode(Float))
template bodySetShapeAsOneWayCollision_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetShapeAsOneWayCollision

method bodyRemoveShape*(self: PhysicsServer2DExtension; body: Rid; shapeIdx: int32): void {.base.} = (discard)
proc bodyRemoveShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyRemoveShape(p_args[0].decode(Rid), p_args[1].decode(int32))
template bodyRemoveShape_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyRemoveShape

method bodyClearShapes*(self: PhysicsServer2DExtension; body: Rid): void {.base.} = (discard)
proc bodyClearShapes(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyClearShapes(p_args[0].decode(Rid))
template bodyClearShapes_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyClearShapes

method bodyAttachObjectInstanceId*(self: PhysicsServer2DExtension; body: Rid; id: uint64): void {.base.} = (discard)
proc bodyAttachObjectInstanceId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyAttachObjectInstanceId(p_args[0].decode(Rid), p_args[1].decode(uint64))
template bodyAttachObjectInstanceId_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyAttachObjectInstanceId

method bodyGetObjectInstanceId*(self: PhysicsServer2DExtension; body: Rid): uint64 {.base.} = (discard)
proc bodyGetObjectInstanceId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetObjectInstanceId(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetObjectInstanceId_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetObjectInstanceId

method bodyAttachCanvasInstanceId*(self: PhysicsServer2DExtension; body: Rid; id: uint64): void {.base.} = (discard)
proc bodyAttachCanvasInstanceId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyAttachCanvasInstanceId(p_args[0].decode(Rid), p_args[1].decode(uint64))
template bodyAttachCanvasInstanceId_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyAttachCanvasInstanceId

method bodyGetCanvasInstanceId*(self: PhysicsServer2DExtension; body: Rid): uint64 {.base.} = (discard)
proc bodyGetCanvasInstanceId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetCanvasInstanceId(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetCanvasInstanceId_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetCanvasInstanceId

method bodySetContinuousCollisionDetectionMode*(self: PhysicsServer2DExtension; body: Rid; mode: PhysicsServer2D_CcdMode): void {.base.} = (discard)
proc bodySetContinuousCollisionDetectionMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetContinuousCollisionDetectionMode(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_CcdMode))
template bodySetContinuousCollisionDetectionMode_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetContinuousCollisionDetectionMode

method bodyGetContinuousCollisionDetectionMode*(self: PhysicsServer2DExtension; body: Rid): PhysicsServer2D_CcdMode {.base.} = (discard)
proc bodyGetContinuousCollisionDetectionMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetContinuousCollisionDetectionMode(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetContinuousCollisionDetectionMode_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetContinuousCollisionDetectionMode

method bodySetCollisionLayer*(self: PhysicsServer2DExtension; body: Rid; layer: uint32): void {.base.} = (discard)
proc bodySetCollisionLayer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetCollisionLayer(p_args[0].decode(Rid), p_args[1].decode(uint32))
template bodySetCollisionLayer_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetCollisionLayer

method bodyGetCollisionLayer*(self: PhysicsServer2DExtension; body: Rid): uint32 {.base.} = (discard)
proc bodyGetCollisionLayer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetCollisionLayer(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetCollisionLayer_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetCollisionLayer

method bodySetCollisionMask*(self: PhysicsServer2DExtension; body: Rid; mask: uint32): void {.base.} = (discard)
proc bodySetCollisionMask(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetCollisionMask(p_args[0].decode(Rid), p_args[1].decode(uint32))
template bodySetCollisionMask_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetCollisionMask

method bodyGetCollisionMask*(self: PhysicsServer2DExtension; body: Rid): uint32 {.base.} = (discard)
proc bodyGetCollisionMask(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetCollisionMask(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetCollisionMask_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetCollisionMask

method bodySetCollisionPriority*(self: PhysicsServer2DExtension; body: Rid; priority: Float): void {.base.} = (discard)
proc bodySetCollisionPriority(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetCollisionPriority(p_args[0].decode(Rid), p_args[1].decode(Float))
template bodySetCollisionPriority_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetCollisionPriority

method bodyGetCollisionPriority*(self: PhysicsServer2DExtension; body: Rid): Float {.base.} = (discard)
proc bodyGetCollisionPriority(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetCollisionPriority(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetCollisionPriority_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetCollisionPriority

method bodySetParam*(self: PhysicsServer2DExtension; body: Rid; param: PhysicsServer2D_BodyParameter; value: Variant): void {.base.} = (discard)
proc bodySetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_BodyParameter), p_args[2].decode(Variant))
template bodySetParam_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetParam

method bodyGetParam*(self: PhysicsServer2DExtension; body: Rid; param: PhysicsServer2D_BodyParameter): Variant {.base.} = (discard)
proc bodyGetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_BodyParameter)).encode(r_ret)
template bodyGetParam_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetParam

method bodyResetMassProperties*(self: PhysicsServer2DExtension; body: Rid): void {.base.} = (discard)
proc bodyResetMassProperties(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyResetMassProperties(p_args[0].decode(Rid))
template bodyResetMassProperties_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyResetMassProperties

method bodySetState*(self: PhysicsServer2DExtension; body: Rid; state: PhysicsServer2D_BodyState; value: Variant): void {.base.} = (discard)
proc bodySetState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetState(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_BodyState), p_args[2].decode(Variant))
template bodySetState_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetState

method bodyGetState*(self: PhysicsServer2DExtension; body: Rid; state: PhysicsServer2D_BodyState): Variant {.base.} = (discard)
proc bodyGetState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetState(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_BodyState)).encode(r_ret)
template bodyGetState_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetState

method bodyApplyCentralImpulse*(self: PhysicsServer2DExtension; body: Rid; impulse: Vector2): void {.base.} = (discard)
proc bodyApplyCentralImpulse(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyApplyCentralImpulse(p_args[0].decode(Rid), p_args[1].decode(Vector2))
template bodyApplyCentralImpulse_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyApplyCentralImpulse

method bodyApplyTorqueImpulse*(self: PhysicsServer2DExtension; body: Rid; impulse: Float): void {.base.} = (discard)
proc bodyApplyTorqueImpulse(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyApplyTorqueImpulse(p_args[0].decode(Rid), p_args[1].decode(Float))
template bodyApplyTorqueImpulse_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyApplyTorqueImpulse

method bodyApplyImpulse*(self: PhysicsServer2DExtension; body: Rid; impulse: Vector2; position: Vector2): void {.base.} = (discard)
proc bodyApplyImpulse(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyApplyImpulse(p_args[0].decode(Rid), p_args[1].decode(Vector2), p_args[2].decode(Vector2))
template bodyApplyImpulse_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyApplyImpulse

method bodyApplyCentralForce*(self: PhysicsServer2DExtension; body: Rid; force: Vector2): void {.base.} = (discard)
proc bodyApplyCentralForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyApplyCentralForce(p_args[0].decode(Rid), p_args[1].decode(Vector2))
template bodyApplyCentralForce_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyApplyCentralForce

method bodyApplyForce*(self: PhysicsServer2DExtension; body: Rid; force: Vector2; position: Vector2): void {.base.} = (discard)
proc bodyApplyForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyApplyForce(p_args[0].decode(Rid), p_args[1].decode(Vector2), p_args[2].decode(Vector2))
template bodyApplyForce_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyApplyForce

method bodyApplyTorque*(self: PhysicsServer2DExtension; body: Rid; torque: Float): void {.base.} = (discard)
proc bodyApplyTorque(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyApplyTorque(p_args[0].decode(Rid), p_args[1].decode(Float))
template bodyApplyTorque_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyApplyTorque

method bodyAddConstantCentralForce*(self: PhysicsServer2DExtension; body: Rid; force: Vector2): void {.base.} = (discard)
proc bodyAddConstantCentralForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyAddConstantCentralForce(p_args[0].decode(Rid), p_args[1].decode(Vector2))
template bodyAddConstantCentralForce_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyAddConstantCentralForce

method bodyAddConstantForce*(self: PhysicsServer2DExtension; body: Rid; force: Vector2; position: Vector2): void {.base.} = (discard)
proc bodyAddConstantForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyAddConstantForce(p_args[0].decode(Rid), p_args[1].decode(Vector2), p_args[2].decode(Vector2))
template bodyAddConstantForce_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyAddConstantForce

method bodyAddConstantTorque*(self: PhysicsServer2DExtension; body: Rid; torque: Float): void {.base.} = (discard)
proc bodyAddConstantTorque(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyAddConstantTorque(p_args[0].decode(Rid), p_args[1].decode(Float))
template bodyAddConstantTorque_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyAddConstantTorque

method bodySetConstantForce*(self: PhysicsServer2DExtension; body: Rid; force: Vector2): void {.base.} = (discard)
proc bodySetConstantForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetConstantForce(p_args[0].decode(Rid), p_args[1].decode(Vector2))
template bodySetConstantForce_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetConstantForce

method bodyGetConstantForce*(self: PhysicsServer2DExtension; body: Rid): Vector2 {.base.} = (discard)
proc bodyGetConstantForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetConstantForce(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetConstantForce_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetConstantForce

method bodySetConstantTorque*(self: PhysicsServer2DExtension; body: Rid; torque: Float): void {.base.} = (discard)
proc bodySetConstantTorque(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetConstantTorque(p_args[0].decode(Rid), p_args[1].decode(Float))
template bodySetConstantTorque_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetConstantTorque

method bodyGetConstantTorque*(self: PhysicsServer2DExtension; body: Rid): Float {.base.} = (discard)
proc bodyGetConstantTorque(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetConstantTorque(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetConstantTorque_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetConstantTorque

method bodySetAxisVelocity*(self: PhysicsServer2DExtension; body: Rid; axisVelocity: Vector2): void {.base.} = (discard)
proc bodySetAxisVelocity(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetAxisVelocity(p_args[0].decode(Rid), p_args[1].decode(Vector2))
template bodySetAxisVelocity_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetAxisVelocity

method bodyAddCollisionException*(self: PhysicsServer2DExtension; body: Rid; exceptedBody: Rid): void {.base.} = (discard)
proc bodyAddCollisionException(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyAddCollisionException(p_args[0].decode(Rid), p_args[1].decode(Rid))
template bodyAddCollisionException_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyAddCollisionException

method bodyRemoveCollisionException*(self: PhysicsServer2DExtension; body: Rid; exceptedBody: Rid): void {.base.} = (discard)
proc bodyRemoveCollisionException(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyRemoveCollisionException(p_args[0].decode(Rid), p_args[1].decode(Rid))
template bodyRemoveCollisionException_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyRemoveCollisionException

method bodyGetCollisionExceptions*(self: PhysicsServer2DExtension; body: Rid): TypedArray[Rid] {.base.} = (discard)
proc bodyGetCollisionExceptions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetCollisionExceptions(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetCollisionExceptions_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetCollisionExceptions

method bodySetMaxContactsReported*(self: PhysicsServer2DExtension; body: Rid; amount: int32): void {.base.} = (discard)
proc bodySetMaxContactsReported(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetMaxContactsReported(p_args[0].decode(Rid), p_args[1].decode(int32))
template bodySetMaxContactsReported_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetMaxContactsReported

method bodyGetMaxContactsReported*(self: PhysicsServer2DExtension; body: Rid): int32 {.base.} = (discard)
proc bodyGetMaxContactsReported(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetMaxContactsReported(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetMaxContactsReported_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetMaxContactsReported

method bodySetContactsReportedDepthThreshold*(self: PhysicsServer2DExtension; body: Rid; threshold: Float): void {.base.} = (discard)
proc bodySetContactsReportedDepthThreshold(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetContactsReportedDepthThreshold(p_args[0].decode(Rid), p_args[1].decode(Float))
template bodySetContactsReportedDepthThreshold_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetContactsReportedDepthThreshold

method bodyGetContactsReportedDepthThreshold*(self: PhysicsServer2DExtension; body: Rid): Float {.base.} = (discard)
proc bodyGetContactsReportedDepthThreshold(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetContactsReportedDepthThreshold(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetContactsReportedDepthThreshold_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetContactsReportedDepthThreshold

method bodySetOmitForceIntegration*(self: PhysicsServer2DExtension; body: Rid; enable: bool): void {.base.} = (discard)
proc bodySetOmitForceIntegration(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetOmitForceIntegration(p_args[0].decode(Rid), p_args[1].decode(bool))
template bodySetOmitForceIntegration_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetOmitForceIntegration

method bodyIsOmittingForceIntegration*(self: PhysicsServer2DExtension; body: Rid): bool {.base.} = (discard)
proc bodyIsOmittingForceIntegration(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyIsOmittingForceIntegration(p_args[0].decode(Rid)).encode(r_ret)
template bodyIsOmittingForceIntegration_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyIsOmittingForceIntegration

method bodySetStateSyncCallback*(self: PhysicsServer2DExtension; body: Rid; callable: Callable): void {.base.} = (discard)
proc bodySetStateSyncCallback(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetStateSyncCallback(p_args[0].decode(Rid), p_args[1].decode(Callable))
template bodySetStateSyncCallback_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetStateSyncCallback

method bodySetForceIntegrationCallback*(self: PhysicsServer2DExtension; body: Rid; callable: Callable; userdata: Variant): void {.base.} = (discard)
proc bodySetForceIntegrationCallback(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetForceIntegrationCallback(p_args[0].decode(Rid), p_args[1].decode(Callable), p_args[2].decode(Variant))
template bodySetForceIntegrationCallback_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetForceIntegrationCallback

method bodyCollideShape*(self: PhysicsServer2DExtension; body: Rid; bodyShape: int32; shape: Rid; shapeXform: Transform2D; motion: Vector2; retvals: pointer; retvalMax: int32; retvalCount: ptr int32): bool {.base.} = (discard)
proc bodyCollideShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyCollideShape(p_args[0].decode(Rid), p_args[1].decode(int32), p_args[2].decode(Rid), p_args[3].decode(Transform2D), p_args[4].decode(Vector2), p_args[5].decode(pointer), p_args[6].decode(int32), p_args[7].decode(ptr int32)).encode(r_ret)
template bodyCollideShape_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyCollideShape

method bodySetPickable*(self: PhysicsServer2DExtension; body: Rid; pickable: bool): void {.base.} = (discard)
proc bodySetPickable(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodySetPickable(p_args[0].decode(Rid), p_args[1].decode(bool))
template bodySetPickable_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodySetPickable

method bodyGetDirectState*(self: PhysicsServer2DExtension; body: Rid): PhysicsDirectBodyState2D {.base.} = (discard)
proc bodyGetDirectState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetDirectState(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetDirectState_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyGetDirectState

method bodyTestMotion*(self: PhysicsServer2DExtension; body: Rid; `from`: Transform2D; motion: Vector2; margin: Float; collideSeparationRay: bool; recoveryAsCollision: bool; retval: ptr PhysicsServer2DExtensionMotionResult): bool {.base.} = (discard)
proc bodyTestMotion(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).bodyTestMotion(p_args[0].decode(Rid), p_args[1].decode(Transform2D), p_args[2].decode(Vector2), p_args[3].decode(Float), p_args[4].decode(bool), p_args[5].decode(bool), p_args[6].decode(ptr PhysicsServer2DExtensionMotionResult)).encode(r_ret)
template bodyTestMotion_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = bodyTestMotion

method jointCreate*(self: PhysicsServer2DExtension): Rid {.base.} = (discard)
proc jointCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).jointCreate().encode(r_ret)
template jointCreate_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = jointCreate

method jointClear*(self: PhysicsServer2DExtension; joint: Rid): void {.base.} = (discard)
proc jointClear(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).jointClear(p_args[0].decode(Rid))
template jointClear_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = jointClear

method jointSetParam*(self: PhysicsServer2DExtension; joint: Rid; param: PhysicsServer2D_JointParam; value: Float): void {.base.} = (discard)
proc jointSetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).jointSetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_JointParam), p_args[2].decode(Float))
template jointSetParam_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = jointSetParam

method jointGetParam*(self: PhysicsServer2DExtension; joint: Rid; param: PhysicsServer2D_JointParam): Float {.base.} = (discard)
proc jointGetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).jointGetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_JointParam)).encode(r_ret)
template jointGetParam_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = jointGetParam

method jointDisableCollisionsBetweenBodies*(self: PhysicsServer2DExtension; joint: Rid; disable: bool): void {.base.} = (discard)
proc jointDisableCollisionsBetweenBodies(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).jointDisableCollisionsBetweenBodies(p_args[0].decode(Rid), p_args[1].decode(bool))
template jointDisableCollisionsBetweenBodies_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = jointDisableCollisionsBetweenBodies

method jointIsDisabledCollisionsBetweenBodies*(self: PhysicsServer2DExtension; joint: Rid): bool {.base.} = (discard)
proc jointIsDisabledCollisionsBetweenBodies(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).jointIsDisabledCollisionsBetweenBodies(p_args[0].decode(Rid)).encode(r_ret)
template jointIsDisabledCollisionsBetweenBodies_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = jointIsDisabledCollisionsBetweenBodies

method jointMakePin*(self: PhysicsServer2DExtension; joint: Rid; anchor: Vector2; bodyA: Rid; bodyB: Rid): void {.base.} = (discard)
proc jointMakePin(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).jointMakePin(p_args[0].decode(Rid), p_args[1].decode(Vector2), p_args[2].decode(Rid), p_args[3].decode(Rid))
template jointMakePin_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = jointMakePin

method jointMakeGroove*(self: PhysicsServer2DExtension; joint: Rid; aGroove1: Vector2; aGroove2: Vector2; bAnchor: Vector2; bodyA: Rid; bodyB: Rid): void {.base.} = (discard)
proc jointMakeGroove(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).jointMakeGroove(p_args[0].decode(Rid), p_args[1].decode(Vector2), p_args[2].decode(Vector2), p_args[3].decode(Vector2), p_args[4].decode(Rid), p_args[5].decode(Rid))
template jointMakeGroove_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = jointMakeGroove

method jointMakeDampedSpring*(self: PhysicsServer2DExtension; joint: Rid; anchorA: Vector2; anchorB: Vector2; bodyA: Rid; bodyB: Rid): void {.base.} = (discard)
proc jointMakeDampedSpring(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).jointMakeDampedSpring(p_args[0].decode(Rid), p_args[1].decode(Vector2), p_args[2].decode(Vector2), p_args[3].decode(Rid), p_args[4].decode(Rid))
template jointMakeDampedSpring_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = jointMakeDampedSpring

method pinJointSetFlag*(self: PhysicsServer2DExtension; joint: Rid; flag: PhysicsServer2D_PinJointFlag; enabled: bool): void {.base.} = (discard)
proc pinJointSetFlag(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).pinJointSetFlag(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_PinJointFlag), p_args[2].decode(bool))
template pinJointSetFlag_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = pinJointSetFlag

method pinJointGetFlag*(self: PhysicsServer2DExtension; joint: Rid; flag: PhysicsServer2D_PinJointFlag): bool {.base.} = (discard)
proc pinJointGetFlag(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).pinJointGetFlag(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_PinJointFlag)).encode(r_ret)
template pinJointGetFlag_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = pinJointGetFlag

method pinJointSetParam*(self: PhysicsServer2DExtension; joint: Rid; param: PhysicsServer2D_PinJointParam; value: Float): void {.base.} = (discard)
proc pinJointSetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).pinJointSetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_PinJointParam), p_args[2].decode(Float))
template pinJointSetParam_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = pinJointSetParam

method pinJointGetParam*(self: PhysicsServer2DExtension; joint: Rid; param: PhysicsServer2D_PinJointParam): Float {.base.} = (discard)
proc pinJointGetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).pinJointGetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_PinJointParam)).encode(r_ret)
template pinJointGetParam_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = pinJointGetParam

method dampedSpringJointSetParam*(self: PhysicsServer2DExtension; joint: Rid; param: PhysicsServer2D_DampedSpringParam; value: Float): void {.base.} = (discard)
proc dampedSpringJointSetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).dampedSpringJointSetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_DampedSpringParam), p_args[2].decode(Float))
template dampedSpringJointSetParam_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = dampedSpringJointSetParam

method dampedSpringJointGetParam*(self: PhysicsServer2DExtension; joint: Rid; param: PhysicsServer2D_DampedSpringParam): Float {.base.} = (discard)
proc dampedSpringJointGetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).dampedSpringJointGetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer2D_DampedSpringParam)).encode(r_ret)
template dampedSpringJointGetParam_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = dampedSpringJointGetParam

method jointGetType*(self: PhysicsServer2DExtension; joint: Rid): PhysicsServer2D_JointType {.base.} = (discard)
proc jointGetType(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).jointGetType(p_args[0].decode(Rid)).encode(r_ret)
template jointGetType_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = jointGetType

method freeRid*(self: PhysicsServer2DExtension; rid: Rid): void {.base.} = (discard)
proc freeRid(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).freeRid(p_args[0].decode(Rid))
template freeRid_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = freeRid

method setActive*(self: PhysicsServer2DExtension; active: bool): void {.base.} = (discard)
proc setActive(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).setActive(p_args[0].decode(bool))
template setActive_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = setActive

method init*(self: PhysicsServer2DExtension): void {.base.} = (discard)
proc init(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).init()
template init_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = init

method step*(self: PhysicsServer2DExtension; step: Float): void {.base.} = (discard)
proc step(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).step(p_args[0].decode(Float))
template step_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = step

method sync*(self: PhysicsServer2DExtension): void {.base.} = (discard)
proc sync(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).sync()
template sync_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = sync

method flushQueries*(self: PhysicsServer2DExtension): void {.base.} = (discard)
proc flushQueries(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).flushQueries()
template flushQueries_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = flushQueries

method endSync*(self: PhysicsServer2DExtension): void {.base.} = (discard)
proc endSync(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).endSync()
template endSync_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = endSync

method finish*(self: PhysicsServer2DExtension): void {.base.} = (discard)
proc finish(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).finish()
template finish_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = finish

method isFlushingQueries*(self: PhysicsServer2DExtension): bool {.base.} = (discard)
proc isFlushingQueries(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).isFlushingQueries().encode(r_ret)
template isFlushingQueries_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = isFlushingQueries

method getProcessInfo*(self: PhysicsServer2DExtension; processInfo: PhysicsServer2D_ProcessInfo): int32 {.base.} = (discard)
proc getProcessInfo(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer2DExtension](p_instance).getProcessInfo(p_args[0].decode(PhysicsServer2D_ProcessInfo)).encode(r_ret)
template getProcessInfo_bind*(_: typedesc[PhysicsServer2DExtension]): ClassCallVirtual = getProcessInfo

proc bodyTestMotionIsExcludingBody*(self: PhysicsServer2DExtension; body: Rid): bool =
  expandMethodBind(className PhysicsServer2DExtension, "body_test_motion_is_excluding_body", 4155700596)
  var `?param` = [getPtr body]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc bodyTestMotionIsExcludingObject*(self: PhysicsServer2DExtension; `object`: uint64): bool =
  expandMethodBind(className PhysicsServer2DExtension, "body_test_motion_is_excluding_object", 1116898809)
  var `?param` = [getPtr `object`]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

const PhysicsServer2DExtension_vmap =
  PhysicsServer2D.vmap.concat toTable {
    "worldboundaryshapecreate" : "_world_boundary_shape_create",
    "separationrayshapecreate" : "_separation_ray_shape_create",
    "segmentshapecreate" : "_segment_shape_create",
    "circleshapecreate" : "_circle_shape_create",
    "rectangleshapecreate" : "_rectangle_shape_create",
    "capsuleshapecreate" : "_capsule_shape_create",
    "convexpolygonshapecreate" : "_convex_polygon_shape_create",
    "concavepolygonshapecreate" : "_concave_polygon_shape_create",
    "shapesetdata" : "_shape_set_data",
    "shapesetcustomsolverbias" : "_shape_set_custom_solver_bias",
    "shapegettype" : "_shape_get_type",
    "shapegetdata" : "_shape_get_data",
    "shapegetcustomsolverbias" : "_shape_get_custom_solver_bias",
    "shapecollide" : "_shape_collide",
    "spacecreate" : "_space_create",
    "spacesetactive" : "_space_set_active",
    "spaceisactive" : "_space_is_active",
    "spacesetparam" : "_space_set_param",
    "spacegetparam" : "_space_get_param",
    "spacegetdirectstate" : "_space_get_direct_state",
    "spacesetdebugcontacts" : "_space_set_debug_contacts",
    "spacegetcontacts" : "_space_get_contacts",
    "spacegetcontactcount" : "_space_get_contact_count",
    "areacreate" : "_area_create",
    "areasetspace" : "_area_set_space",
    "areagetspace" : "_area_get_space",
    "areaaddshape" : "_area_add_shape",
    "areasetshape" : "_area_set_shape",
    "areasetshapetransform" : "_area_set_shape_transform",
    "areasetshapedisabled" : "_area_set_shape_disabled",
    "areagetshapecount" : "_area_get_shape_count",
    "areagetshape" : "_area_get_shape",
    "areagetshapetransform" : "_area_get_shape_transform",
    "arearemoveshape" : "_area_remove_shape",
    "areaclearshapes" : "_area_clear_shapes",
    "areaattachobjectinstanceid" : "_area_attach_object_instance_id",
    "areagetobjectinstanceid" : "_area_get_object_instance_id",
    "areaattachcanvasinstanceid" : "_area_attach_canvas_instance_id",
    "areagetcanvasinstanceid" : "_area_get_canvas_instance_id",
    "areasetparam" : "_area_set_param",
    "areasettransform" : "_area_set_transform",
    "areagetparam" : "_area_get_param",
    "areagettransform" : "_area_get_transform",
    "areasetcollisionlayer" : "_area_set_collision_layer",
    "areagetcollisionlayer" : "_area_get_collision_layer",
    "areasetcollisionmask" : "_area_set_collision_mask",
    "areagetcollisionmask" : "_area_get_collision_mask",
    "areasetmonitorable" : "_area_set_monitorable",
    "areasetpickable" : "_area_set_pickable",
    "areasetmonitorcallback" : "_area_set_monitor_callback",
    "areasetareamonitorcallback" : "_area_set_area_monitor_callback",
    "bodycreate" : "_body_create",
    "bodysetspace" : "_body_set_space",
    "bodygetspace" : "_body_get_space",
    "bodysetmode" : "_body_set_mode",
    "bodygetmode" : "_body_get_mode",
    "bodyaddshape" : "_body_add_shape",
    "bodysetshape" : "_body_set_shape",
    "bodysetshapetransform" : "_body_set_shape_transform",
    "bodygetshapecount" : "_body_get_shape_count",
    "bodygetshape" : "_body_get_shape",
    "bodygetshapetransform" : "_body_get_shape_transform",
    "bodysetshapedisabled" : "_body_set_shape_disabled",
    "bodysetshapeasonewaycollision" : "_body_set_shape_as_one_way_collision",
    "bodyremoveshape" : "_body_remove_shape",
    "bodyclearshapes" : "_body_clear_shapes",
    "bodyattachobjectinstanceid" : "_body_attach_object_instance_id",
    "bodygetobjectinstanceid" : "_body_get_object_instance_id",
    "bodyattachcanvasinstanceid" : "_body_attach_canvas_instance_id",
    "bodygetcanvasinstanceid" : "_body_get_canvas_instance_id",
    "bodysetcontinuouscollisiondetectionmode" : "_body_set_continuous_collision_detection_mode",
    "bodygetcontinuouscollisiondetectionmode" : "_body_get_continuous_collision_detection_mode",
    "bodysetcollisionlayer" : "_body_set_collision_layer",
    "bodygetcollisionlayer" : "_body_get_collision_layer",
    "bodysetcollisionmask" : "_body_set_collision_mask",
    "bodygetcollisionmask" : "_body_get_collision_mask",
    "bodysetcollisionpriority" : "_body_set_collision_priority",
    "bodygetcollisionpriority" : "_body_get_collision_priority",
    "bodysetparam" : "_body_set_param",
    "bodygetparam" : "_body_get_param",
    "bodyresetmassproperties" : "_body_reset_mass_properties",
    "bodysetstate" : "_body_set_state",
    "bodygetstate" : "_body_get_state",
    "bodyapplycentralimpulse" : "_body_apply_central_impulse",
    "bodyapplytorqueimpulse" : "_body_apply_torque_impulse",
    "bodyapplyimpulse" : "_body_apply_impulse",
    "bodyapplycentralforce" : "_body_apply_central_force",
    "bodyapplyforce" : "_body_apply_force",
    "bodyapplytorque" : "_body_apply_torque",
    "bodyaddconstantcentralforce" : "_body_add_constant_central_force",
    "bodyaddconstantforce" : "_body_add_constant_force",
    "bodyaddconstanttorque" : "_body_add_constant_torque",
    "bodysetconstantforce" : "_body_set_constant_force",
    "bodygetconstantforce" : "_body_get_constant_force",
    "bodysetconstanttorque" : "_body_set_constant_torque",
    "bodygetconstanttorque" : "_body_get_constant_torque",
    "bodysetaxisvelocity" : "_body_set_axis_velocity",
    "bodyaddcollisionexception" : "_body_add_collision_exception",
    "bodyremovecollisionexception" : "_body_remove_collision_exception",
    "bodygetcollisionexceptions" : "_body_get_collision_exceptions",
    "bodysetmaxcontactsreported" : "_body_set_max_contacts_reported",
    "bodygetmaxcontactsreported" : "_body_get_max_contacts_reported",
    "bodysetcontactsreporteddepththreshold" : "_body_set_contacts_reported_depth_threshold",
    "bodygetcontactsreporteddepththreshold" : "_body_get_contacts_reported_depth_threshold",
    "bodysetomitforceintegration" : "_body_set_omit_force_integration",
    "bodyisomittingforceintegration" : "_body_is_omitting_force_integration",
    "bodysetstatesynccallback" : "_body_set_state_sync_callback",
    "bodysetforceintegrationcallback" : "_body_set_force_integration_callback",
    "bodycollideshape" : "_body_collide_shape",
    "bodysetpickable" : "_body_set_pickable",
    "bodygetdirectstate" : "_body_get_direct_state",
    "bodytestmotion" : "_body_test_motion",
    "jointcreate" : "_joint_create",
    "jointclear" : "_joint_clear",
    "jointsetparam" : "_joint_set_param",
    "jointgetparam" : "_joint_get_param",
    "jointdisablecollisionsbetweenbodies" : "_joint_disable_collisions_between_bodies",
    "jointisdisabledcollisionsbetweenbodies" : "_joint_is_disabled_collisions_between_bodies",
    "jointmakepin" : "_joint_make_pin",
    "jointmakegroove" : "_joint_make_groove",
    "jointmakedampedspring" : "_joint_make_damped_spring",
    "pinjointsetflag" : "_pin_joint_set_flag",
    "pinjointgetflag" : "_pin_joint_get_flag",
    "pinjointsetparam" : "_pin_joint_set_param",
    "pinjointgetparam" : "_pin_joint_get_param",
    "dampedspringjointsetparam" : "_damped_spring_joint_set_param",
    "dampedspringjointgetparam" : "_damped_spring_joint_get_param",
    "jointgettype" : "_joint_get_type",
    "freerid" : "_free_rid",
    "setactive" : "_set_active",
    "init" : "_init",
    "step" : "_step",
    "sync" : "_sync",
    "flushqueries" : "_flush_queries",
    "endsync" : "_end_sync",
    "finish" : "_finish",
    "isflushingqueries" : "_is_flushing_queries",
    "getprocessinfo" : "_get_process_info",
    }
template vmap*(_: typedesc[PhysicsServer2DExtension]): Table[string, string] = PhysicsServer2DExtension_vmap