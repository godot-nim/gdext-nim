{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdphysicsserver3d; export gdphysicsserver3d

method worldBoundaryShapeCreate*(self: PhysicsServer3DExtension): Rid {.base.} = (discard)
proc worldBoundaryShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).worldBoundaryShapeCreate().encode(r_ret)
template worldBoundaryShapeCreate_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = worldBoundaryShapeCreate

method separationRayShapeCreate*(self: PhysicsServer3DExtension): Rid {.base.} = (discard)
proc separationRayShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).separationRayShapeCreate().encode(r_ret)
template separationRayShapeCreate_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = separationRayShapeCreate

method sphereShapeCreate*(self: PhysicsServer3DExtension): Rid {.base.} = (discard)
proc sphereShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).sphereShapeCreate().encode(r_ret)
template sphereShapeCreate_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = sphereShapeCreate

method boxShapeCreate*(self: PhysicsServer3DExtension): Rid {.base.} = (discard)
proc boxShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).boxShapeCreate().encode(r_ret)
template boxShapeCreate_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = boxShapeCreate

method capsuleShapeCreate*(self: PhysicsServer3DExtension): Rid {.base.} = (discard)
proc capsuleShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).capsuleShapeCreate().encode(r_ret)
template capsuleShapeCreate_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = capsuleShapeCreate

method cylinderShapeCreate*(self: PhysicsServer3DExtension): Rid {.base.} = (discard)
proc cylinderShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).cylinderShapeCreate().encode(r_ret)
template cylinderShapeCreate_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = cylinderShapeCreate

method convexPolygonShapeCreate*(self: PhysicsServer3DExtension): Rid {.base.} = (discard)
proc convexPolygonShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).convexPolygonShapeCreate().encode(r_ret)
template convexPolygonShapeCreate_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = convexPolygonShapeCreate

method concavePolygonShapeCreate*(self: PhysicsServer3DExtension): Rid {.base.} = (discard)
proc concavePolygonShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).concavePolygonShapeCreate().encode(r_ret)
template concavePolygonShapeCreate_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = concavePolygonShapeCreate

method heightmapShapeCreate*(self: PhysicsServer3DExtension): Rid {.base.} = (discard)
proc heightmapShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).heightmapShapeCreate().encode(r_ret)
template heightmapShapeCreate_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = heightmapShapeCreate

method customShapeCreate*(self: PhysicsServer3DExtension): Rid {.base.} = (discard)
proc customShapeCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).customShapeCreate().encode(r_ret)
template customShapeCreate_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = customShapeCreate

method shapeSetData*(self: PhysicsServer3DExtension; shape: Rid; data: Variant): void {.base.} = (discard)
proc shapeSetData(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).shapeSetData(p_args[0].decode(Rid), p_args[1].decode(Variant))
template shapeSetData_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = shapeSetData

method shapeSetCustomSolverBias*(self: PhysicsServer3DExtension; shape: Rid; bias: Float): void {.base.} = (discard)
proc shapeSetCustomSolverBias(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).shapeSetCustomSolverBias(p_args[0].decode(Rid), p_args[1].decode(Float))
template shapeSetCustomSolverBias_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = shapeSetCustomSolverBias

method shapeSetMargin*(self: PhysicsServer3DExtension; shape: Rid; margin: Float): void {.base.} = (discard)
proc shapeSetMargin(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).shapeSetMargin(p_args[0].decode(Rid), p_args[1].decode(Float))
template shapeSetMargin_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = shapeSetMargin

method shapeGetMargin*(self: PhysicsServer3DExtension; shape: Rid): Float {.base.} = (discard)
proc shapeGetMargin(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).shapeGetMargin(p_args[0].decode(Rid)).encode(r_ret)
template shapeGetMargin_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = shapeGetMargin

method shapeGetType*(self: PhysicsServer3DExtension; shape: Rid): PhysicsServer3D_ShapeType {.base.} = (discard)
proc shapeGetType(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).shapeGetType(p_args[0].decode(Rid)).encode(r_ret)
template shapeGetType_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = shapeGetType

method shapeGetData*(self: PhysicsServer3DExtension; shape: Rid): Variant {.base.} = (discard)
proc shapeGetData(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).shapeGetData(p_args[0].decode(Rid)).encode(r_ret)
template shapeGetData_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = shapeGetData

method shapeGetCustomSolverBias*(self: PhysicsServer3DExtension; shape: Rid): Float {.base.} = (discard)
proc shapeGetCustomSolverBias(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).shapeGetCustomSolverBias(p_args[0].decode(Rid)).encode(r_ret)
template shapeGetCustomSolverBias_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = shapeGetCustomSolverBias

method spaceCreate*(self: PhysicsServer3DExtension): Rid {.base.} = (discard)
proc spaceCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).spaceCreate().encode(r_ret)
template spaceCreate_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = spaceCreate

method spaceSetActive*(self: PhysicsServer3DExtension; space: Rid; active: bool): void {.base.} = (discard)
proc spaceSetActive(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).spaceSetActive(p_args[0].decode(Rid), p_args[1].decode(bool))
template spaceSetActive_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = spaceSetActive

method spaceIsActive*(self: PhysicsServer3DExtension; space: Rid): bool {.base.} = (discard)
proc spaceIsActive(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).spaceIsActive(p_args[0].decode(Rid)).encode(r_ret)
template spaceIsActive_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = spaceIsActive

method spaceSetParam*(self: PhysicsServer3DExtension; space: Rid; param: PhysicsServer3D_SpaceParameter; value: Float): void {.base.} = (discard)
proc spaceSetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).spaceSetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_SpaceParameter), p_args[2].decode(Float))
template spaceSetParam_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = spaceSetParam

method spaceGetParam*(self: PhysicsServer3DExtension; space: Rid; param: PhysicsServer3D_SpaceParameter): Float {.base.} = (discard)
proc spaceGetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).spaceGetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_SpaceParameter)).encode(r_ret)
template spaceGetParam_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = spaceGetParam

method spaceGetDirectState*(self: PhysicsServer3DExtension; space: Rid): PhysicsDirectSpaceState3D {.base.} = (discard)
proc spaceGetDirectState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).spaceGetDirectState(p_args[0].decode(Rid)).encode(r_ret)
template spaceGetDirectState_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = spaceGetDirectState

method spaceSetDebugContacts*(self: PhysicsServer3DExtension; space: Rid; maxContacts: int32): void {.base.} = (discard)
proc spaceSetDebugContacts(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).spaceSetDebugContacts(p_args[0].decode(Rid), p_args[1].decode(int32))
template spaceSetDebugContacts_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = spaceSetDebugContacts

method spaceGetContacts*(self: PhysicsServer3DExtension; space: Rid): PackedVector3Array {.base.} = (discard)
proc spaceGetContacts(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).spaceGetContacts(p_args[0].decode(Rid)).encode(r_ret)
template spaceGetContacts_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = spaceGetContacts

method spaceGetContactCount*(self: PhysicsServer3DExtension; space: Rid): int32 {.base.} = (discard)
proc spaceGetContactCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).spaceGetContactCount(p_args[0].decode(Rid)).encode(r_ret)
template spaceGetContactCount_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = spaceGetContactCount

method areaCreate*(self: PhysicsServer3DExtension): Rid {.base.} = (discard)
proc areaCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaCreate().encode(r_ret)
template areaCreate_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaCreate

method areaSetSpace*(self: PhysicsServer3DExtension; area: Rid; space: Rid): void {.base.} = (discard)
proc areaSetSpace(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaSetSpace(p_args[0].decode(Rid), p_args[1].decode(Rid))
template areaSetSpace_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaSetSpace

method areaGetSpace*(self: PhysicsServer3DExtension; area: Rid): Rid {.base.} = (discard)
proc areaGetSpace(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaGetSpace(p_args[0].decode(Rid)).encode(r_ret)
template areaGetSpace_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaGetSpace

method areaAddShape*(self: PhysicsServer3DExtension; area: Rid; shape: Rid; transform: Transform3D; disabled: bool): void {.base.} = (discard)
proc areaAddShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaAddShape(p_args[0].decode(Rid), p_args[1].decode(Rid), p_args[2].decode(Transform3D), p_args[3].decode(bool))
template areaAddShape_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaAddShape

method areaSetShape*(self: PhysicsServer3DExtension; area: Rid; shapeIdx: int32; shape: Rid): void {.base.} = (discard)
proc areaSetShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaSetShape(p_args[0].decode(Rid), p_args[1].decode(int32), p_args[2].decode(Rid))
template areaSetShape_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaSetShape

method areaSetShapeTransform*(self: PhysicsServer3DExtension; area: Rid; shapeIdx: int32; transform: Transform3D): void {.base.} = (discard)
proc areaSetShapeTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaSetShapeTransform(p_args[0].decode(Rid), p_args[1].decode(int32), p_args[2].decode(Transform3D))
template areaSetShapeTransform_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaSetShapeTransform

method areaSetShapeDisabled*(self: PhysicsServer3DExtension; area: Rid; shapeIdx: int32; disabled: bool): void {.base.} = (discard)
proc areaSetShapeDisabled(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaSetShapeDisabled(p_args[0].decode(Rid), p_args[1].decode(int32), p_args[2].decode(bool))
template areaSetShapeDisabled_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaSetShapeDisabled

method areaGetShapeCount*(self: PhysicsServer3DExtension; area: Rid): int32 {.base.} = (discard)
proc areaGetShapeCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaGetShapeCount(p_args[0].decode(Rid)).encode(r_ret)
template areaGetShapeCount_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaGetShapeCount

method areaGetShape*(self: PhysicsServer3DExtension; area: Rid; shapeIdx: int32): Rid {.base.} = (discard)
proc areaGetShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaGetShape(p_args[0].decode(Rid), p_args[1].decode(int32)).encode(r_ret)
template areaGetShape_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaGetShape

method areaGetShapeTransform*(self: PhysicsServer3DExtension; area: Rid; shapeIdx: int32): Transform3D {.base.} = (discard)
proc areaGetShapeTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaGetShapeTransform(p_args[0].decode(Rid), p_args[1].decode(int32)).encode(r_ret)
template areaGetShapeTransform_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaGetShapeTransform

method areaRemoveShape*(self: PhysicsServer3DExtension; area: Rid; shapeIdx: int32): void {.base.} = (discard)
proc areaRemoveShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaRemoveShape(p_args[0].decode(Rid), p_args[1].decode(int32))
template areaRemoveShape_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaRemoveShape

method areaClearShapes*(self: PhysicsServer3DExtension; area: Rid): void {.base.} = (discard)
proc areaClearShapes(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaClearShapes(p_args[0].decode(Rid))
template areaClearShapes_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaClearShapes

method areaAttachObjectInstanceId*(self: PhysicsServer3DExtension; area: Rid; id: uint64): void {.base.} = (discard)
proc areaAttachObjectInstanceId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaAttachObjectInstanceId(p_args[0].decode(Rid), p_args[1].decode(uint64))
template areaAttachObjectInstanceId_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaAttachObjectInstanceId

method areaGetObjectInstanceId*(self: PhysicsServer3DExtension; area: Rid): uint64 {.base.} = (discard)
proc areaGetObjectInstanceId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaGetObjectInstanceId(p_args[0].decode(Rid)).encode(r_ret)
template areaGetObjectInstanceId_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaGetObjectInstanceId

method areaSetParam*(self: PhysicsServer3DExtension; area: Rid; param: PhysicsServer3D_AreaParameter; value: Variant): void {.base.} = (discard)
proc areaSetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaSetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_AreaParameter), p_args[2].decode(Variant))
template areaSetParam_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaSetParam

method areaSetTransform*(self: PhysicsServer3DExtension; area: Rid; transform: Transform3D): void {.base.} = (discard)
proc areaSetTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaSetTransform(p_args[0].decode(Rid), p_args[1].decode(Transform3D))
template areaSetTransform_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaSetTransform

method areaGetParam*(self: PhysicsServer3DExtension; area: Rid; param: PhysicsServer3D_AreaParameter): Variant {.base.} = (discard)
proc areaGetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaGetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_AreaParameter)).encode(r_ret)
template areaGetParam_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaGetParam

method areaGetTransform*(self: PhysicsServer3DExtension; area: Rid): Transform3D {.base.} = (discard)
proc areaGetTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaGetTransform(p_args[0].decode(Rid)).encode(r_ret)
template areaGetTransform_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaGetTransform

method areaSetCollisionLayer*(self: PhysicsServer3DExtension; area: Rid; layer: uint32): void {.base.} = (discard)
proc areaSetCollisionLayer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaSetCollisionLayer(p_args[0].decode(Rid), p_args[1].decode(uint32))
template areaSetCollisionLayer_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaSetCollisionLayer

method areaGetCollisionLayer*(self: PhysicsServer3DExtension; area: Rid): uint32 {.base.} = (discard)
proc areaGetCollisionLayer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaGetCollisionLayer(p_args[0].decode(Rid)).encode(r_ret)
template areaGetCollisionLayer_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaGetCollisionLayer

method areaSetCollisionMask*(self: PhysicsServer3DExtension; area: Rid; mask: uint32): void {.base.} = (discard)
proc areaSetCollisionMask(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaSetCollisionMask(p_args[0].decode(Rid), p_args[1].decode(uint32))
template areaSetCollisionMask_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaSetCollisionMask

method areaGetCollisionMask*(self: PhysicsServer3DExtension; area: Rid): uint32 {.base.} = (discard)
proc areaGetCollisionMask(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaGetCollisionMask(p_args[0].decode(Rid)).encode(r_ret)
template areaGetCollisionMask_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaGetCollisionMask

method areaSetMonitorable*(self: PhysicsServer3DExtension; area: Rid; monitorable: bool): void {.base.} = (discard)
proc areaSetMonitorable(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaSetMonitorable(p_args[0].decode(Rid), p_args[1].decode(bool))
template areaSetMonitorable_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaSetMonitorable

method areaSetRayPickable*(self: PhysicsServer3DExtension; area: Rid; enable: bool): void {.base.} = (discard)
proc areaSetRayPickable(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaSetRayPickable(p_args[0].decode(Rid), p_args[1].decode(bool))
template areaSetRayPickable_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaSetRayPickable

method areaSetMonitorCallback*(self: PhysicsServer3DExtension; area: Rid; callback: Callable): void {.base.} = (discard)
proc areaSetMonitorCallback(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaSetMonitorCallback(p_args[0].decode(Rid), p_args[1].decode(Callable))
template areaSetMonitorCallback_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaSetMonitorCallback

method areaSetAreaMonitorCallback*(self: PhysicsServer3DExtension; area: Rid; callback: Callable): void {.base.} = (discard)
proc areaSetAreaMonitorCallback(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).areaSetAreaMonitorCallback(p_args[0].decode(Rid), p_args[1].decode(Callable))
template areaSetAreaMonitorCallback_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = areaSetAreaMonitorCallback

method bodyCreate*(self: PhysicsServer3DExtension): Rid {.base.} = (discard)
proc bodyCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyCreate().encode(r_ret)
template bodyCreate_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyCreate

method bodySetSpace*(self: PhysicsServer3DExtension; body: Rid; space: Rid): void {.base.} = (discard)
proc bodySetSpace(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetSpace(p_args[0].decode(Rid), p_args[1].decode(Rid))
template bodySetSpace_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetSpace

method bodyGetSpace*(self: PhysicsServer3DExtension; body: Rid): Rid {.base.} = (discard)
proc bodyGetSpace(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetSpace(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetSpace_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetSpace

method bodySetMode*(self: PhysicsServer3DExtension; body: Rid; mode: PhysicsServer3D_BodyMode): void {.base.} = (discard)
proc bodySetMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetMode(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_BodyMode))
template bodySetMode_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetMode

method bodyGetMode*(self: PhysicsServer3DExtension; body: Rid): PhysicsServer3D_BodyMode {.base.} = (discard)
proc bodyGetMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetMode(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetMode_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetMode

method bodyAddShape*(self: PhysicsServer3DExtension; body: Rid; shape: Rid; transform: Transform3D; disabled: bool): void {.base.} = (discard)
proc bodyAddShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyAddShape(p_args[0].decode(Rid), p_args[1].decode(Rid), p_args[2].decode(Transform3D), p_args[3].decode(bool))
template bodyAddShape_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyAddShape

method bodySetShape*(self: PhysicsServer3DExtension; body: Rid; shapeIdx: int32; shape: Rid): void {.base.} = (discard)
proc bodySetShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetShape(p_args[0].decode(Rid), p_args[1].decode(int32), p_args[2].decode(Rid))
template bodySetShape_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetShape

method bodySetShapeTransform*(self: PhysicsServer3DExtension; body: Rid; shapeIdx: int32; transform: Transform3D): void {.base.} = (discard)
proc bodySetShapeTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetShapeTransform(p_args[0].decode(Rid), p_args[1].decode(int32), p_args[2].decode(Transform3D))
template bodySetShapeTransform_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetShapeTransform

method bodySetShapeDisabled*(self: PhysicsServer3DExtension; body: Rid; shapeIdx: int32; disabled: bool): void {.base.} = (discard)
proc bodySetShapeDisabled(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetShapeDisabled(p_args[0].decode(Rid), p_args[1].decode(int32), p_args[2].decode(bool))
template bodySetShapeDisabled_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetShapeDisabled

method bodyGetShapeCount*(self: PhysicsServer3DExtension; body: Rid): int32 {.base.} = (discard)
proc bodyGetShapeCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetShapeCount(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetShapeCount_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetShapeCount

method bodyGetShape*(self: PhysicsServer3DExtension; body: Rid; shapeIdx: int32): Rid {.base.} = (discard)
proc bodyGetShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetShape(p_args[0].decode(Rid), p_args[1].decode(int32)).encode(r_ret)
template bodyGetShape_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetShape

method bodyGetShapeTransform*(self: PhysicsServer3DExtension; body: Rid; shapeIdx: int32): Transform3D {.base.} = (discard)
proc bodyGetShapeTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetShapeTransform(p_args[0].decode(Rid), p_args[1].decode(int32)).encode(r_ret)
template bodyGetShapeTransform_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetShapeTransform

method bodyRemoveShape*(self: PhysicsServer3DExtension; body: Rid; shapeIdx: int32): void {.base.} = (discard)
proc bodyRemoveShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyRemoveShape(p_args[0].decode(Rid), p_args[1].decode(int32))
template bodyRemoveShape_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyRemoveShape

method bodyClearShapes*(self: PhysicsServer3DExtension; body: Rid): void {.base.} = (discard)
proc bodyClearShapes(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyClearShapes(p_args[0].decode(Rid))
template bodyClearShapes_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyClearShapes

method bodyAttachObjectInstanceId*(self: PhysicsServer3DExtension; body: Rid; id: uint64): void {.base.} = (discard)
proc bodyAttachObjectInstanceId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyAttachObjectInstanceId(p_args[0].decode(Rid), p_args[1].decode(uint64))
template bodyAttachObjectInstanceId_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyAttachObjectInstanceId

method bodyGetObjectInstanceId*(self: PhysicsServer3DExtension; body: Rid): uint64 {.base.} = (discard)
proc bodyGetObjectInstanceId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetObjectInstanceId(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetObjectInstanceId_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetObjectInstanceId

method bodySetEnableContinuousCollisionDetection*(self: PhysicsServer3DExtension; body: Rid; enable: bool): void {.base.} = (discard)
proc bodySetEnableContinuousCollisionDetection(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetEnableContinuousCollisionDetection(p_args[0].decode(Rid), p_args[1].decode(bool))
template bodySetEnableContinuousCollisionDetection_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetEnableContinuousCollisionDetection

method bodyIsContinuousCollisionDetectionEnabled*(self: PhysicsServer3DExtension; body: Rid): bool {.base.} = (discard)
proc bodyIsContinuousCollisionDetectionEnabled(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyIsContinuousCollisionDetectionEnabled(p_args[0].decode(Rid)).encode(r_ret)
template bodyIsContinuousCollisionDetectionEnabled_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyIsContinuousCollisionDetectionEnabled

method bodySetCollisionLayer*(self: PhysicsServer3DExtension; body: Rid; layer: uint32): void {.base.} = (discard)
proc bodySetCollisionLayer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetCollisionLayer(p_args[0].decode(Rid), p_args[1].decode(uint32))
template bodySetCollisionLayer_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetCollisionLayer

method bodyGetCollisionLayer*(self: PhysicsServer3DExtension; body: Rid): uint32 {.base.} = (discard)
proc bodyGetCollisionLayer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetCollisionLayer(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetCollisionLayer_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetCollisionLayer

method bodySetCollisionMask*(self: PhysicsServer3DExtension; body: Rid; mask: uint32): void {.base.} = (discard)
proc bodySetCollisionMask(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetCollisionMask(p_args[0].decode(Rid), p_args[1].decode(uint32))
template bodySetCollisionMask_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetCollisionMask

method bodyGetCollisionMask*(self: PhysicsServer3DExtension; body: Rid): uint32 {.base.} = (discard)
proc bodyGetCollisionMask(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetCollisionMask(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetCollisionMask_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetCollisionMask

method bodySetCollisionPriority*(self: PhysicsServer3DExtension; body: Rid; priority: Float): void {.base.} = (discard)
proc bodySetCollisionPriority(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetCollisionPriority(p_args[0].decode(Rid), p_args[1].decode(Float))
template bodySetCollisionPriority_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetCollisionPriority

method bodyGetCollisionPriority*(self: PhysicsServer3DExtension; body: Rid): Float {.base.} = (discard)
proc bodyGetCollisionPriority(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetCollisionPriority(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetCollisionPriority_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetCollisionPriority

method bodySetUserFlags*(self: PhysicsServer3DExtension; body: Rid; flags: uint32): void {.base.} = (discard)
proc bodySetUserFlags(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetUserFlags(p_args[0].decode(Rid), p_args[1].decode(uint32))
template bodySetUserFlags_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetUserFlags

method bodyGetUserFlags*(self: PhysicsServer3DExtension; body: Rid): uint32 {.base.} = (discard)
proc bodyGetUserFlags(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetUserFlags(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetUserFlags_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetUserFlags

method bodySetParam*(self: PhysicsServer3DExtension; body: Rid; param: PhysicsServer3D_BodyParameter; value: Variant): void {.base.} = (discard)
proc bodySetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_BodyParameter), p_args[2].decode(Variant))
template bodySetParam_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetParam

method bodyGetParam*(self: PhysicsServer3DExtension; body: Rid; param: PhysicsServer3D_BodyParameter): Variant {.base.} = (discard)
proc bodyGetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_BodyParameter)).encode(r_ret)
template bodyGetParam_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetParam

method bodyResetMassProperties*(self: PhysicsServer3DExtension; body: Rid): void {.base.} = (discard)
proc bodyResetMassProperties(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyResetMassProperties(p_args[0].decode(Rid))
template bodyResetMassProperties_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyResetMassProperties

method bodySetState*(self: PhysicsServer3DExtension; body: Rid; state: PhysicsServer3D_BodyState; value: Variant): void {.base.} = (discard)
proc bodySetState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetState(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_BodyState), p_args[2].decode(Variant))
template bodySetState_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetState

method bodyGetState*(self: PhysicsServer3DExtension; body: Rid; state: PhysicsServer3D_BodyState): Variant {.base.} = (discard)
proc bodyGetState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetState(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_BodyState)).encode(r_ret)
template bodyGetState_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetState

method bodyApplyCentralImpulse*(self: PhysicsServer3DExtension; body: Rid; impulse: Vector3): void {.base.} = (discard)
proc bodyApplyCentralImpulse(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyApplyCentralImpulse(p_args[0].decode(Rid), p_args[1].decode(Vector3))
template bodyApplyCentralImpulse_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyApplyCentralImpulse

method bodyApplyImpulse*(self: PhysicsServer3DExtension; body: Rid; impulse: Vector3; position: Vector3): void {.base.} = (discard)
proc bodyApplyImpulse(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyApplyImpulse(p_args[0].decode(Rid), p_args[1].decode(Vector3), p_args[2].decode(Vector3))
template bodyApplyImpulse_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyApplyImpulse

method bodyApplyTorqueImpulse*(self: PhysicsServer3DExtension; body: Rid; impulse: Vector3): void {.base.} = (discard)
proc bodyApplyTorqueImpulse(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyApplyTorqueImpulse(p_args[0].decode(Rid), p_args[1].decode(Vector3))
template bodyApplyTorqueImpulse_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyApplyTorqueImpulse

method bodyApplyCentralForce*(self: PhysicsServer3DExtension; body: Rid; force: Vector3): void {.base.} = (discard)
proc bodyApplyCentralForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyApplyCentralForce(p_args[0].decode(Rid), p_args[1].decode(Vector3))
template bodyApplyCentralForce_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyApplyCentralForce

method bodyApplyForce*(self: PhysicsServer3DExtension; body: Rid; force: Vector3; position: Vector3): void {.base.} = (discard)
proc bodyApplyForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyApplyForce(p_args[0].decode(Rid), p_args[1].decode(Vector3), p_args[2].decode(Vector3))
template bodyApplyForce_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyApplyForce

method bodyApplyTorque*(self: PhysicsServer3DExtension; body: Rid; torque: Vector3): void {.base.} = (discard)
proc bodyApplyTorque(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyApplyTorque(p_args[0].decode(Rid), p_args[1].decode(Vector3))
template bodyApplyTorque_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyApplyTorque

method bodyAddConstantCentralForce*(self: PhysicsServer3DExtension; body: Rid; force: Vector3): void {.base.} = (discard)
proc bodyAddConstantCentralForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyAddConstantCentralForce(p_args[0].decode(Rid), p_args[1].decode(Vector3))
template bodyAddConstantCentralForce_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyAddConstantCentralForce

method bodyAddConstantForce*(self: PhysicsServer3DExtension; body: Rid; force: Vector3; position: Vector3): void {.base.} = (discard)
proc bodyAddConstantForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyAddConstantForce(p_args[0].decode(Rid), p_args[1].decode(Vector3), p_args[2].decode(Vector3))
template bodyAddConstantForce_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyAddConstantForce

method bodyAddConstantTorque*(self: PhysicsServer3DExtension; body: Rid; torque: Vector3): void {.base.} = (discard)
proc bodyAddConstantTorque(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyAddConstantTorque(p_args[0].decode(Rid), p_args[1].decode(Vector3))
template bodyAddConstantTorque_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyAddConstantTorque

method bodySetConstantForce*(self: PhysicsServer3DExtension; body: Rid; force: Vector3): void {.base.} = (discard)
proc bodySetConstantForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetConstantForce(p_args[0].decode(Rid), p_args[1].decode(Vector3))
template bodySetConstantForce_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetConstantForce

method bodyGetConstantForce*(self: PhysicsServer3DExtension; body: Rid): Vector3 {.base.} = (discard)
proc bodyGetConstantForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetConstantForce(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetConstantForce_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetConstantForce

method bodySetConstantTorque*(self: PhysicsServer3DExtension; body: Rid; torque: Vector3): void {.base.} = (discard)
proc bodySetConstantTorque(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetConstantTorque(p_args[0].decode(Rid), p_args[1].decode(Vector3))
template bodySetConstantTorque_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetConstantTorque

method bodyGetConstantTorque*(self: PhysicsServer3DExtension; body: Rid): Vector3 {.base.} = (discard)
proc bodyGetConstantTorque(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetConstantTorque(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetConstantTorque_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetConstantTorque

method bodySetAxisVelocity*(self: PhysicsServer3DExtension; body: Rid; axisVelocity: Vector3): void {.base.} = (discard)
proc bodySetAxisVelocity(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetAxisVelocity(p_args[0].decode(Rid), p_args[1].decode(Vector3))
template bodySetAxisVelocity_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetAxisVelocity

method bodySetAxisLock*(self: PhysicsServer3DExtension; body: Rid; axis: PhysicsServer3D_BodyAxis; lock: bool): void {.base.} = (discard)
proc bodySetAxisLock(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetAxisLock(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_BodyAxis), p_args[2].decode(bool))
template bodySetAxisLock_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetAxisLock

method bodyIsAxisLocked*(self: PhysicsServer3DExtension; body: Rid; axis: PhysicsServer3D_BodyAxis): bool {.base.} = (discard)
proc bodyIsAxisLocked(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyIsAxisLocked(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_BodyAxis)).encode(r_ret)
template bodyIsAxisLocked_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyIsAxisLocked

method bodyAddCollisionException*(self: PhysicsServer3DExtension; body: Rid; exceptedBody: Rid): void {.base.} = (discard)
proc bodyAddCollisionException(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyAddCollisionException(p_args[0].decode(Rid), p_args[1].decode(Rid))
template bodyAddCollisionException_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyAddCollisionException

method bodyRemoveCollisionException*(self: PhysicsServer3DExtension; body: Rid; exceptedBody: Rid): void {.base.} = (discard)
proc bodyRemoveCollisionException(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyRemoveCollisionException(p_args[0].decode(Rid), p_args[1].decode(Rid))
template bodyRemoveCollisionException_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyRemoveCollisionException

method bodyGetCollisionExceptions*(self: PhysicsServer3DExtension; body: Rid): TypedArray[Rid] {.base.} = (discard)
proc bodyGetCollisionExceptions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetCollisionExceptions(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetCollisionExceptions_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetCollisionExceptions

method bodySetMaxContactsReported*(self: PhysicsServer3DExtension; body: Rid; amount: int32): void {.base.} = (discard)
proc bodySetMaxContactsReported(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetMaxContactsReported(p_args[0].decode(Rid), p_args[1].decode(int32))
template bodySetMaxContactsReported_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetMaxContactsReported

method bodyGetMaxContactsReported*(self: PhysicsServer3DExtension; body: Rid): int32 {.base.} = (discard)
proc bodyGetMaxContactsReported(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetMaxContactsReported(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetMaxContactsReported_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetMaxContactsReported

method bodySetContactsReportedDepthThreshold*(self: PhysicsServer3DExtension; body: Rid; threshold: Float): void {.base.} = (discard)
proc bodySetContactsReportedDepthThreshold(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetContactsReportedDepthThreshold(p_args[0].decode(Rid), p_args[1].decode(Float))
template bodySetContactsReportedDepthThreshold_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetContactsReportedDepthThreshold

method bodyGetContactsReportedDepthThreshold*(self: PhysicsServer3DExtension; body: Rid): Float {.base.} = (discard)
proc bodyGetContactsReportedDepthThreshold(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetContactsReportedDepthThreshold(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetContactsReportedDepthThreshold_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetContactsReportedDepthThreshold

method bodySetOmitForceIntegration*(self: PhysicsServer3DExtension; body: Rid; enable: bool): void {.base.} = (discard)
proc bodySetOmitForceIntegration(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetOmitForceIntegration(p_args[0].decode(Rid), p_args[1].decode(bool))
template bodySetOmitForceIntegration_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetOmitForceIntegration

method bodyIsOmittingForceIntegration*(self: PhysicsServer3DExtension; body: Rid): bool {.base.} = (discard)
proc bodyIsOmittingForceIntegration(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyIsOmittingForceIntegration(p_args[0].decode(Rid)).encode(r_ret)
template bodyIsOmittingForceIntegration_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyIsOmittingForceIntegration

method bodySetStateSyncCallback*(self: PhysicsServer3DExtension; body: Rid; callable: Callable): void {.base.} = (discard)
proc bodySetStateSyncCallback(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetStateSyncCallback(p_args[0].decode(Rid), p_args[1].decode(Callable))
template bodySetStateSyncCallback_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetStateSyncCallback

method bodySetForceIntegrationCallback*(self: PhysicsServer3DExtension; body: Rid; callable: Callable; userdata: Variant): void {.base.} = (discard)
proc bodySetForceIntegrationCallback(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetForceIntegrationCallback(p_args[0].decode(Rid), p_args[1].decode(Callable), p_args[2].decode(Variant))
template bodySetForceIntegrationCallback_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetForceIntegrationCallback

method bodySetRayPickable*(self: PhysicsServer3DExtension; body: Rid; enable: bool): void {.base.} = (discard)
proc bodySetRayPickable(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodySetRayPickable(p_args[0].decode(Rid), p_args[1].decode(bool))
template bodySetRayPickable_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodySetRayPickable

method bodyTestMotion*(self: PhysicsServer3DExtension; body: Rid; `from`: Transform3D; motion: Vector3; margin: Float; maxCollisions: int32; collideSeparationRay: bool; recoveryAsCollision: bool; retval: ptr PhysicsServer3DExtensionMotionResult): bool {.base.} = (discard)
proc bodyTestMotion(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyTestMotion(p_args[0].decode(Rid), p_args[1].decode(Transform3D), p_args[2].decode(Vector3), p_args[3].decode(Float), p_args[4].decode(int32), p_args[5].decode(bool), p_args[6].decode(bool), p_args[7].decode(ptr PhysicsServer3DExtensionMotionResult)).encode(r_ret)
template bodyTestMotion_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyTestMotion

method bodyGetDirectState*(self: PhysicsServer3DExtension; body: Rid): PhysicsDirectBodyState3D {.base.} = (discard)
proc bodyGetDirectState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetDirectState(p_args[0].decode(Rid)).encode(r_ret)
template bodyGetDirectState_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = bodyGetDirectState

method softBodyCreate*(self: PhysicsServer3DExtension): Rid {.base.} = (discard)
proc softBodyCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyCreate().encode(r_ret)
template softBodyCreate_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyCreate

method softBodyUpdateRenderingServer*(self: PhysicsServer3DExtension; body: Rid; renderingServerHandler: PhysicsServer3DRenderingServerHandler): void {.base.} = (discard)
proc softBodyUpdateRenderingServer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyUpdateRenderingServer(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3DRenderingServerHandler))
template softBodyUpdateRenderingServer_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyUpdateRenderingServer

method softBodySetSpace*(self: PhysicsServer3DExtension; body: Rid; space: Rid): void {.base.} = (discard)
proc softBodySetSpace(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetSpace(p_args[0].decode(Rid), p_args[1].decode(Rid))
template softBodySetSpace_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodySetSpace

method softBodyGetSpace*(self: PhysicsServer3DExtension; body: Rid): Rid {.base.} = (discard)
proc softBodyGetSpace(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetSpace(p_args[0].decode(Rid)).encode(r_ret)
template softBodyGetSpace_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyGetSpace

method softBodySetRayPickable*(self: PhysicsServer3DExtension; body: Rid; enable: bool): void {.base.} = (discard)
proc softBodySetRayPickable(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetRayPickable(p_args[0].decode(Rid), p_args[1].decode(bool))
template softBodySetRayPickable_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodySetRayPickable

method softBodySetCollisionLayer*(self: PhysicsServer3DExtension; body: Rid; layer: uint32): void {.base.} = (discard)
proc softBodySetCollisionLayer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetCollisionLayer(p_args[0].decode(Rid), p_args[1].decode(uint32))
template softBodySetCollisionLayer_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodySetCollisionLayer

method softBodyGetCollisionLayer*(self: PhysicsServer3DExtension; body: Rid): uint32 {.base.} = (discard)
proc softBodyGetCollisionLayer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetCollisionLayer(p_args[0].decode(Rid)).encode(r_ret)
template softBodyGetCollisionLayer_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyGetCollisionLayer

method softBodySetCollisionMask*(self: PhysicsServer3DExtension; body: Rid; mask: uint32): void {.base.} = (discard)
proc softBodySetCollisionMask(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetCollisionMask(p_args[0].decode(Rid), p_args[1].decode(uint32))
template softBodySetCollisionMask_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodySetCollisionMask

method softBodyGetCollisionMask*(self: PhysicsServer3DExtension; body: Rid): uint32 {.base.} = (discard)
proc softBodyGetCollisionMask(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetCollisionMask(p_args[0].decode(Rid)).encode(r_ret)
template softBodyGetCollisionMask_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyGetCollisionMask

method softBodyAddCollisionException*(self: PhysicsServer3DExtension; body: Rid; bodyB: Rid): void {.base.} = (discard)
proc softBodyAddCollisionException(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyAddCollisionException(p_args[0].decode(Rid), p_args[1].decode(Rid))
template softBodyAddCollisionException_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyAddCollisionException

method softBodyRemoveCollisionException*(self: PhysicsServer3DExtension; body: Rid; bodyB: Rid): void {.base.} = (discard)
proc softBodyRemoveCollisionException(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyRemoveCollisionException(p_args[0].decode(Rid), p_args[1].decode(Rid))
template softBodyRemoveCollisionException_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyRemoveCollisionException

method softBodyGetCollisionExceptions*(self: PhysicsServer3DExtension; body: Rid): TypedArray[Rid] {.base.} = (discard)
proc softBodyGetCollisionExceptions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetCollisionExceptions(p_args[0].decode(Rid)).encode(r_ret)
template softBodyGetCollisionExceptions_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyGetCollisionExceptions

method softBodySetState*(self: PhysicsServer3DExtension; body: Rid; state: PhysicsServer3D_BodyState; variant: Variant): void {.base.} = (discard)
proc softBodySetState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetState(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_BodyState), p_args[2].decode(Variant))
template softBodySetState_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodySetState

method softBodyGetState*(self: PhysicsServer3DExtension; body: Rid; state: PhysicsServer3D_BodyState): Variant {.base.} = (discard)
proc softBodyGetState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetState(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_BodyState)).encode(r_ret)
template softBodyGetState_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyGetState

method softBodySetTransform*(self: PhysicsServer3DExtension; body: Rid; transform: Transform3D): void {.base.} = (discard)
proc softBodySetTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetTransform(p_args[0].decode(Rid), p_args[1].decode(Transform3D))
template softBodySetTransform_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodySetTransform

method softBodySetSimulationPrecision*(self: PhysicsServer3DExtension; body: Rid; simulationPrecision: int32): void {.base.} = (discard)
proc softBodySetSimulationPrecision(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetSimulationPrecision(p_args[0].decode(Rid), p_args[1].decode(int32))
template softBodySetSimulationPrecision_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodySetSimulationPrecision

method softBodyGetSimulationPrecision*(self: PhysicsServer3DExtension; body: Rid): int32 {.base.} = (discard)
proc softBodyGetSimulationPrecision(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetSimulationPrecision(p_args[0].decode(Rid)).encode(r_ret)
template softBodyGetSimulationPrecision_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyGetSimulationPrecision

method softBodySetTotalMass*(self: PhysicsServer3DExtension; body: Rid; totalMass: Float): void {.base.} = (discard)
proc softBodySetTotalMass(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetTotalMass(p_args[0].decode(Rid), p_args[1].decode(Float))
template softBodySetTotalMass_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodySetTotalMass

method softBodyGetTotalMass*(self: PhysicsServer3DExtension; body: Rid): Float {.base.} = (discard)
proc softBodyGetTotalMass(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetTotalMass(p_args[0].decode(Rid)).encode(r_ret)
template softBodyGetTotalMass_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyGetTotalMass

method softBodySetLinearStiffness*(self: PhysicsServer3DExtension; body: Rid; linearStiffness: Float): void {.base.} = (discard)
proc softBodySetLinearStiffness(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetLinearStiffness(p_args[0].decode(Rid), p_args[1].decode(Float))
template softBodySetLinearStiffness_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodySetLinearStiffness

method softBodyGetLinearStiffness*(self: PhysicsServer3DExtension; body: Rid): Float {.base.} = (discard)
proc softBodyGetLinearStiffness(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetLinearStiffness(p_args[0].decode(Rid)).encode(r_ret)
template softBodyGetLinearStiffness_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyGetLinearStiffness

method softBodySetPressureCoefficient*(self: PhysicsServer3DExtension; body: Rid; pressureCoefficient: Float): void {.base.} = (discard)
proc softBodySetPressureCoefficient(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetPressureCoefficient(p_args[0].decode(Rid), p_args[1].decode(Float))
template softBodySetPressureCoefficient_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodySetPressureCoefficient

method softBodyGetPressureCoefficient*(self: PhysicsServer3DExtension; body: Rid): Float {.base.} = (discard)
proc softBodyGetPressureCoefficient(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetPressureCoefficient(p_args[0].decode(Rid)).encode(r_ret)
template softBodyGetPressureCoefficient_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyGetPressureCoefficient

method softBodySetDampingCoefficient*(self: PhysicsServer3DExtension; body: Rid; dampingCoefficient: Float): void {.base.} = (discard)
proc softBodySetDampingCoefficient(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetDampingCoefficient(p_args[0].decode(Rid), p_args[1].decode(Float))
template softBodySetDampingCoefficient_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodySetDampingCoefficient

method softBodyGetDampingCoefficient*(self: PhysicsServer3DExtension; body: Rid): Float {.base.} = (discard)
proc softBodyGetDampingCoefficient(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetDampingCoefficient(p_args[0].decode(Rid)).encode(r_ret)
template softBodyGetDampingCoefficient_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyGetDampingCoefficient

method softBodySetDragCoefficient*(self: PhysicsServer3DExtension; body: Rid; dragCoefficient: Float): void {.base.} = (discard)
proc softBodySetDragCoefficient(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetDragCoefficient(p_args[0].decode(Rid), p_args[1].decode(Float))
template softBodySetDragCoefficient_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodySetDragCoefficient

method softBodyGetDragCoefficient*(self: PhysicsServer3DExtension; body: Rid): Float {.base.} = (discard)
proc softBodyGetDragCoefficient(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetDragCoefficient(p_args[0].decode(Rid)).encode(r_ret)
template softBodyGetDragCoefficient_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyGetDragCoefficient

method softBodySetMesh*(self: PhysicsServer3DExtension; body: Rid; mesh: Rid): void {.base.} = (discard)
proc softBodySetMesh(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetMesh(p_args[0].decode(Rid), p_args[1].decode(Rid))
template softBodySetMesh_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodySetMesh

method softBodyGetBounds*(self: PhysicsServer3DExtension; body: Rid): Aabb {.base.} = (discard)
proc softBodyGetBounds(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetBounds(p_args[0].decode(Rid)).encode(r_ret)
template softBodyGetBounds_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyGetBounds

method softBodyMovePoint*(self: PhysicsServer3DExtension; body: Rid; pointIndex: int32; globalPosition: Vector3): void {.base.} = (discard)
proc softBodyMovePoint(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyMovePoint(p_args[0].decode(Rid), p_args[1].decode(int32), p_args[2].decode(Vector3))
template softBodyMovePoint_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyMovePoint

method softBodyGetPointGlobalPosition*(self: PhysicsServer3DExtension; body: Rid; pointIndex: int32): Vector3 {.base.} = (discard)
proc softBodyGetPointGlobalPosition(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetPointGlobalPosition(p_args[0].decode(Rid), p_args[1].decode(int32)).encode(r_ret)
template softBodyGetPointGlobalPosition_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyGetPointGlobalPosition

method softBodyRemoveAllPinnedPoints*(self: PhysicsServer3DExtension; body: Rid): void {.base.} = (discard)
proc softBodyRemoveAllPinnedPoints(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyRemoveAllPinnedPoints(p_args[0].decode(Rid))
template softBodyRemoveAllPinnedPoints_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyRemoveAllPinnedPoints

method softBodyPinPoint*(self: PhysicsServer3DExtension; body: Rid; pointIndex: int32; pin: bool): void {.base.} = (discard)
proc softBodyPinPoint(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyPinPoint(p_args[0].decode(Rid), p_args[1].decode(int32), p_args[2].decode(bool))
template softBodyPinPoint_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyPinPoint

method softBodyIsPointPinned*(self: PhysicsServer3DExtension; body: Rid; pointIndex: int32): bool {.base.} = (discard)
proc softBodyIsPointPinned(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).softBodyIsPointPinned(p_args[0].decode(Rid), p_args[1].decode(int32)).encode(r_ret)
template softBodyIsPointPinned_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = softBodyIsPointPinned

method jointCreate*(self: PhysicsServer3DExtension): Rid {.base.} = (discard)
proc jointCreate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).jointCreate().encode(r_ret)
template jointCreate_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = jointCreate

method jointClear*(self: PhysicsServer3DExtension; joint: Rid): void {.base.} = (discard)
proc jointClear(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).jointClear(p_args[0].decode(Rid))
template jointClear_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = jointClear

method jointMakePin*(self: PhysicsServer3DExtension; joint: Rid; bodyA: Rid; localA: Vector3; bodyB: Rid; localB: Vector3): void {.base.} = (discard)
proc jointMakePin(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).jointMakePin(p_args[0].decode(Rid), p_args[1].decode(Rid), p_args[2].decode(Vector3), p_args[3].decode(Rid), p_args[4].decode(Vector3))
template jointMakePin_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = jointMakePin

method pinJointSetParam*(self: PhysicsServer3DExtension; joint: Rid; param: PhysicsServer3D_PinJointParam; value: Float): void {.base.} = (discard)
proc pinJointSetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).pinJointSetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_PinJointParam), p_args[2].decode(Float))
template pinJointSetParam_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = pinJointSetParam

method pinJointGetParam*(self: PhysicsServer3DExtension; joint: Rid; param: PhysicsServer3D_PinJointParam): Float {.base.} = (discard)
proc pinJointGetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).pinJointGetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_PinJointParam)).encode(r_ret)
template pinJointGetParam_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = pinJointGetParam

method pinJointSetLocalA*(self: PhysicsServer3DExtension; joint: Rid; localA: Vector3): void {.base.} = (discard)
proc pinJointSetLocalA(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).pinJointSetLocalA(p_args[0].decode(Rid), p_args[1].decode(Vector3))
template pinJointSetLocalA_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = pinJointSetLocalA

method pinJointGetLocalA*(self: PhysicsServer3DExtension; joint: Rid): Vector3 {.base.} = (discard)
proc pinJointGetLocalA(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).pinJointGetLocalA(p_args[0].decode(Rid)).encode(r_ret)
template pinJointGetLocalA_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = pinJointGetLocalA

method pinJointSetLocalB*(self: PhysicsServer3DExtension; joint: Rid; localB: Vector3): void {.base.} = (discard)
proc pinJointSetLocalB(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).pinJointSetLocalB(p_args[0].decode(Rid), p_args[1].decode(Vector3))
template pinJointSetLocalB_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = pinJointSetLocalB

method pinJointGetLocalB*(self: PhysicsServer3DExtension; joint: Rid): Vector3 {.base.} = (discard)
proc pinJointGetLocalB(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).pinJointGetLocalB(p_args[0].decode(Rid)).encode(r_ret)
template pinJointGetLocalB_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = pinJointGetLocalB

method jointMakeHinge*(self: PhysicsServer3DExtension; joint: Rid; bodyA: Rid; hingeA: Transform3D; bodyB: Rid; hingeB: Transform3D): void {.base.} = (discard)
proc jointMakeHinge(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).jointMakeHinge(p_args[0].decode(Rid), p_args[1].decode(Rid), p_args[2].decode(Transform3D), p_args[3].decode(Rid), p_args[4].decode(Transform3D))
template jointMakeHinge_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = jointMakeHinge

method jointMakeHingeSimple*(self: PhysicsServer3DExtension; joint: Rid; bodyA: Rid; pivotA: Vector3; axisA: Vector3; bodyB: Rid; pivotB: Vector3; axisB: Vector3): void {.base.} = (discard)
proc jointMakeHingeSimple(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).jointMakeHingeSimple(p_args[0].decode(Rid), p_args[1].decode(Rid), p_args[2].decode(Vector3), p_args[3].decode(Vector3), p_args[4].decode(Rid), p_args[5].decode(Vector3), p_args[6].decode(Vector3))
template jointMakeHingeSimple_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = jointMakeHingeSimple

method hingeJointSetParam*(self: PhysicsServer3DExtension; joint: Rid; param: PhysicsServer3D_HingeJointParam; value: Float): void {.base.} = (discard)
proc hingeJointSetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).hingeJointSetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_HingeJointParam), p_args[2].decode(Float))
template hingeJointSetParam_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = hingeJointSetParam

method hingeJointGetParam*(self: PhysicsServer3DExtension; joint: Rid; param: PhysicsServer3D_HingeJointParam): Float {.base.} = (discard)
proc hingeJointGetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).hingeJointGetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_HingeJointParam)).encode(r_ret)
template hingeJointGetParam_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = hingeJointGetParam

method hingeJointSetFlag*(self: PhysicsServer3DExtension; joint: Rid; flag: PhysicsServer3D_HingeJointFlag; enabled: bool): void {.base.} = (discard)
proc hingeJointSetFlag(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).hingeJointSetFlag(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_HingeJointFlag), p_args[2].decode(bool))
template hingeJointSetFlag_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = hingeJointSetFlag

method hingeJointGetFlag*(self: PhysicsServer3DExtension; joint: Rid; flag: PhysicsServer3D_HingeJointFlag): bool {.base.} = (discard)
proc hingeJointGetFlag(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).hingeJointGetFlag(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_HingeJointFlag)).encode(r_ret)
template hingeJointGetFlag_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = hingeJointGetFlag

method jointMakeSlider*(self: PhysicsServer3DExtension; joint: Rid; bodyA: Rid; localRefA: Transform3D; bodyB: Rid; localRefB: Transform3D): void {.base.} = (discard)
proc jointMakeSlider(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).jointMakeSlider(p_args[0].decode(Rid), p_args[1].decode(Rid), p_args[2].decode(Transform3D), p_args[3].decode(Rid), p_args[4].decode(Transform3D))
template jointMakeSlider_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = jointMakeSlider

method sliderJointSetParam*(self: PhysicsServer3DExtension; joint: Rid; param: PhysicsServer3D_SliderJointParam; value: Float): void {.base.} = (discard)
proc sliderJointSetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).sliderJointSetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_SliderJointParam), p_args[2].decode(Float))
template sliderJointSetParam_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = sliderJointSetParam

method sliderJointGetParam*(self: PhysicsServer3DExtension; joint: Rid; param: PhysicsServer3D_SliderJointParam): Float {.base.} = (discard)
proc sliderJointGetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).sliderJointGetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_SliderJointParam)).encode(r_ret)
template sliderJointGetParam_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = sliderJointGetParam

method jointMakeConeTwist*(self: PhysicsServer3DExtension; joint: Rid; bodyA: Rid; localRefA: Transform3D; bodyB: Rid; localRefB: Transform3D): void {.base.} = (discard)
proc jointMakeConeTwist(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).jointMakeConeTwist(p_args[0].decode(Rid), p_args[1].decode(Rid), p_args[2].decode(Transform3D), p_args[3].decode(Rid), p_args[4].decode(Transform3D))
template jointMakeConeTwist_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = jointMakeConeTwist

method coneTwistJointSetParam*(self: PhysicsServer3DExtension; joint: Rid; param: PhysicsServer3D_ConeTwistJointParam; value: Float): void {.base.} = (discard)
proc coneTwistJointSetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).coneTwistJointSetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_ConeTwistJointParam), p_args[2].decode(Float))
template coneTwistJointSetParam_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = coneTwistJointSetParam

method coneTwistJointGetParam*(self: PhysicsServer3DExtension; joint: Rid; param: PhysicsServer3D_ConeTwistJointParam): Float {.base.} = (discard)
proc coneTwistJointGetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).coneTwistJointGetParam(p_args[0].decode(Rid), p_args[1].decode(PhysicsServer3D_ConeTwistJointParam)).encode(r_ret)
template coneTwistJointGetParam_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = coneTwistJointGetParam

method jointMakeGeneric6Dof*(self: PhysicsServer3DExtension; joint: Rid; bodyA: Rid; localRefA: Transform3D; bodyB: Rid; localRefB: Transform3D): void {.base.} = (discard)
proc jointMakeGeneric6Dof(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).jointMakeGeneric6Dof(p_args[0].decode(Rid), p_args[1].decode(Rid), p_args[2].decode(Transform3D), p_args[3].decode(Rid), p_args[4].decode(Transform3D))
template jointMakeGeneric6Dof_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = jointMakeGeneric6Dof

method generic6DofJointSetParam*(self: PhysicsServer3DExtension; joint: Rid; axis: Vector3_Axis; param: PhysicsServer3D_G6DofJointAxisParam; value: Float): void {.base.} = (discard)
proc generic6DofJointSetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).generic6DofJointSetParam(p_args[0].decode(Rid), p_args[1].decode(Vector3_Axis), p_args[2].decode(PhysicsServer3D_G6DofJointAxisParam), p_args[3].decode(Float))
template generic6DofJointSetParam_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = generic6DofJointSetParam

method generic6DofJointGetParam*(self: PhysicsServer3DExtension; joint: Rid; axis: Vector3_Axis; param: PhysicsServer3D_G6DofJointAxisParam): Float {.base.} = (discard)
proc generic6DofJointGetParam(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).generic6DofJointGetParam(p_args[0].decode(Rid), p_args[1].decode(Vector3_Axis), p_args[2].decode(PhysicsServer3D_G6DofJointAxisParam)).encode(r_ret)
template generic6DofJointGetParam_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = generic6DofJointGetParam

method generic6DofJointSetFlag*(self: PhysicsServer3DExtension; joint: Rid; axis: Vector3_Axis; flag: PhysicsServer3D_G6DofJointAxisFlag; enable: bool): void {.base.} = (discard)
proc generic6DofJointSetFlag(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).generic6DofJointSetFlag(p_args[0].decode(Rid), p_args[1].decode(Vector3_Axis), p_args[2].decode(PhysicsServer3D_G6DofJointAxisFlag), p_args[3].decode(bool))
template generic6DofJointSetFlag_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = generic6DofJointSetFlag

method generic6DofJointGetFlag*(self: PhysicsServer3DExtension; joint: Rid; axis: Vector3_Axis; flag: PhysicsServer3D_G6DofJointAxisFlag): bool {.base.} = (discard)
proc generic6DofJointGetFlag(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).generic6DofJointGetFlag(p_args[0].decode(Rid), p_args[1].decode(Vector3_Axis), p_args[2].decode(PhysicsServer3D_G6DofJointAxisFlag)).encode(r_ret)
template generic6DofJointGetFlag_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = generic6DofJointGetFlag

method jointGetType*(self: PhysicsServer3DExtension; joint: Rid): PhysicsServer3D_JointType {.base.} = (discard)
proc jointGetType(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).jointGetType(p_args[0].decode(Rid)).encode(r_ret)
template jointGetType_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = jointGetType

method jointSetSolverPriority*(self: PhysicsServer3DExtension; joint: Rid; priority: int32): void {.base.} = (discard)
proc jointSetSolverPriority(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).jointSetSolverPriority(p_args[0].decode(Rid), p_args[1].decode(int32))
template jointSetSolverPriority_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = jointSetSolverPriority

method jointGetSolverPriority*(self: PhysicsServer3DExtension; joint: Rid): int32 {.base.} = (discard)
proc jointGetSolverPriority(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).jointGetSolverPriority(p_args[0].decode(Rid)).encode(r_ret)
template jointGetSolverPriority_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = jointGetSolverPriority

method jointDisableCollisionsBetweenBodies*(self: PhysicsServer3DExtension; joint: Rid; disable: bool): void {.base.} = (discard)
proc jointDisableCollisionsBetweenBodies(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).jointDisableCollisionsBetweenBodies(p_args[0].decode(Rid), p_args[1].decode(bool))
template jointDisableCollisionsBetweenBodies_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = jointDisableCollisionsBetweenBodies

method jointIsDisabledCollisionsBetweenBodies*(self: PhysicsServer3DExtension; joint: Rid): bool {.base.} = (discard)
proc jointIsDisabledCollisionsBetweenBodies(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).jointIsDisabledCollisionsBetweenBodies(p_args[0].decode(Rid)).encode(r_ret)
template jointIsDisabledCollisionsBetweenBodies_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = jointIsDisabledCollisionsBetweenBodies

method freeRid*(self: PhysicsServer3DExtension; rid: Rid): void {.base.} = (discard)
proc freeRid(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).freeRid(p_args[0].decode(Rid))
template freeRid_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = freeRid

method setActive*(self: PhysicsServer3DExtension; active: bool): void {.base.} = (discard)
proc setActive(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).setActive(p_args[0].decode(bool))
template setActive_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = setActive

method init*(self: PhysicsServer3DExtension): void {.base.} = (discard)
proc init(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).init()
template init_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = init

method step*(self: PhysicsServer3DExtension; step: Float): void {.base.} = (discard)
proc step(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).step(p_args[0].decode(Float))
template step_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = step

method sync*(self: PhysicsServer3DExtension): void {.base.} = (discard)
proc sync(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).sync()
template sync_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = sync

method flushQueries*(self: PhysicsServer3DExtension): void {.base.} = (discard)
proc flushQueries(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).flushQueries()
template flushQueries_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = flushQueries

method endSync*(self: PhysicsServer3DExtension): void {.base.} = (discard)
proc endSync(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).endSync()
template endSync_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = endSync

method finish*(self: PhysicsServer3DExtension): void {.base.} = (discard)
proc finish(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).finish()
template finish_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = finish

method isFlushingQueries*(self: PhysicsServer3DExtension): bool {.base.} = (discard)
proc isFlushingQueries(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).isFlushingQueries().encode(r_ret)
template isFlushingQueries_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = isFlushingQueries

method getProcessInfo*(self: PhysicsServer3DExtension; processInfo: PhysicsServer3D_ProcessInfo): int32 {.base.} = (discard)
proc getProcessInfo(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsServer3DExtension](p_instance).getProcessInfo(p_args[0].decode(PhysicsServer3D_ProcessInfo)).encode(r_ret)
template getProcessInfo_bind*(_: typedesc[PhysicsServer3DExtension]): ClassCallVirtual = getProcessInfo

proc bodyTestMotionIsExcludingBody*(self: PhysicsServer3DExtension; body: Rid): bool =
  expandMethodBind(className PhysicsServer3DExtension, "body_test_motion_is_excluding_body", 4155700596)
  var `?param` = [getPtr body]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc bodyTestMotionIsExcludingObject*(self: PhysicsServer3DExtension; `object`: uint64): bool =
  expandMethodBind(className PhysicsServer3DExtension, "body_test_motion_is_excluding_object", 1116898809)
  var `?param` = [getPtr `object`]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

const PhysicsServer3DExtension_vmap =
  PhysicsServer3D.vmap.concat toTable {
    "worldboundaryshapecreate" : "_world_boundary_shape_create",
    "separationrayshapecreate" : "_separation_ray_shape_create",
    "sphereshapecreate" : "_sphere_shape_create",
    "boxshapecreate" : "_box_shape_create",
    "capsuleshapecreate" : "_capsule_shape_create",
    "cylindershapecreate" : "_cylinder_shape_create",
    "convexpolygonshapecreate" : "_convex_polygon_shape_create",
    "concavepolygonshapecreate" : "_concave_polygon_shape_create",
    "heightmapshapecreate" : "_heightmap_shape_create",
    "customshapecreate" : "_custom_shape_create",
    "shapesetdata" : "_shape_set_data",
    "shapesetcustomsolverbias" : "_shape_set_custom_solver_bias",
    "shapesetmargin" : "_shape_set_margin",
    "shapegetmargin" : "_shape_get_margin",
    "shapegettype" : "_shape_get_type",
    "shapegetdata" : "_shape_get_data",
    "shapegetcustomsolverbias" : "_shape_get_custom_solver_bias",
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
    "areasetparam" : "_area_set_param",
    "areasettransform" : "_area_set_transform",
    "areagetparam" : "_area_get_param",
    "areagettransform" : "_area_get_transform",
    "areasetcollisionlayer" : "_area_set_collision_layer",
    "areagetcollisionlayer" : "_area_get_collision_layer",
    "areasetcollisionmask" : "_area_set_collision_mask",
    "areagetcollisionmask" : "_area_get_collision_mask",
    "areasetmonitorable" : "_area_set_monitorable",
    "areasetraypickable" : "_area_set_ray_pickable",
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
    "bodysetshapedisabled" : "_body_set_shape_disabled",
    "bodygetshapecount" : "_body_get_shape_count",
    "bodygetshape" : "_body_get_shape",
    "bodygetshapetransform" : "_body_get_shape_transform",
    "bodyremoveshape" : "_body_remove_shape",
    "bodyclearshapes" : "_body_clear_shapes",
    "bodyattachobjectinstanceid" : "_body_attach_object_instance_id",
    "bodygetobjectinstanceid" : "_body_get_object_instance_id",
    "bodysetenablecontinuouscollisiondetection" : "_body_set_enable_continuous_collision_detection",
    "bodyiscontinuouscollisiondetectionenabled" : "_body_is_continuous_collision_detection_enabled",
    "bodysetcollisionlayer" : "_body_set_collision_layer",
    "bodygetcollisionlayer" : "_body_get_collision_layer",
    "bodysetcollisionmask" : "_body_set_collision_mask",
    "bodygetcollisionmask" : "_body_get_collision_mask",
    "bodysetcollisionpriority" : "_body_set_collision_priority",
    "bodygetcollisionpriority" : "_body_get_collision_priority",
    "bodysetuserflags" : "_body_set_user_flags",
    "bodygetuserflags" : "_body_get_user_flags",
    "bodysetparam" : "_body_set_param",
    "bodygetparam" : "_body_get_param",
    "bodyresetmassproperties" : "_body_reset_mass_properties",
    "bodysetstate" : "_body_set_state",
    "bodygetstate" : "_body_get_state",
    "bodyapplycentralimpulse" : "_body_apply_central_impulse",
    "bodyapplyimpulse" : "_body_apply_impulse",
    "bodyapplytorqueimpulse" : "_body_apply_torque_impulse",
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
    "bodysetaxislock" : "_body_set_axis_lock",
    "bodyisaxislocked" : "_body_is_axis_locked",
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
    "bodysetraypickable" : "_body_set_ray_pickable",
    "bodytestmotion" : "_body_test_motion",
    "bodygetdirectstate" : "_body_get_direct_state",
    "softbodycreate" : "_soft_body_create",
    "softbodyupdaterenderingserver" : "_soft_body_update_rendering_server",
    "softbodysetspace" : "_soft_body_set_space",
    "softbodygetspace" : "_soft_body_get_space",
    "softbodysetraypickable" : "_soft_body_set_ray_pickable",
    "softbodysetcollisionlayer" : "_soft_body_set_collision_layer",
    "softbodygetcollisionlayer" : "_soft_body_get_collision_layer",
    "softbodysetcollisionmask" : "_soft_body_set_collision_mask",
    "softbodygetcollisionmask" : "_soft_body_get_collision_mask",
    "softbodyaddcollisionexception" : "_soft_body_add_collision_exception",
    "softbodyremovecollisionexception" : "_soft_body_remove_collision_exception",
    "softbodygetcollisionexceptions" : "_soft_body_get_collision_exceptions",
    "softbodysetstate" : "_soft_body_set_state",
    "softbodygetstate" : "_soft_body_get_state",
    "softbodysettransform" : "_soft_body_set_transform",
    "softbodysetsimulationprecision" : "_soft_body_set_simulation_precision",
    "softbodygetsimulationprecision" : "_soft_body_get_simulation_precision",
    "softbodysettotalmass" : "_soft_body_set_total_mass",
    "softbodygettotalmass" : "_soft_body_get_total_mass",
    "softbodysetlinearstiffness" : "_soft_body_set_linear_stiffness",
    "softbodygetlinearstiffness" : "_soft_body_get_linear_stiffness",
    "softbodysetpressurecoefficient" : "_soft_body_set_pressure_coefficient",
    "softbodygetpressurecoefficient" : "_soft_body_get_pressure_coefficient",
    "softbodysetdampingcoefficient" : "_soft_body_set_damping_coefficient",
    "softbodygetdampingcoefficient" : "_soft_body_get_damping_coefficient",
    "softbodysetdragcoefficient" : "_soft_body_set_drag_coefficient",
    "softbodygetdragcoefficient" : "_soft_body_get_drag_coefficient",
    "softbodysetmesh" : "_soft_body_set_mesh",
    "softbodygetbounds" : "_soft_body_get_bounds",
    "softbodymovepoint" : "_soft_body_move_point",
    "softbodygetpointglobalposition" : "_soft_body_get_point_global_position",
    "softbodyremoveallpinnedpoints" : "_soft_body_remove_all_pinned_points",
    "softbodypinpoint" : "_soft_body_pin_point",
    "softbodyispointpinned" : "_soft_body_is_point_pinned",
    "jointcreate" : "_joint_create",
    "jointclear" : "_joint_clear",
    "jointmakepin" : "_joint_make_pin",
    "pinjointsetparam" : "_pin_joint_set_param",
    "pinjointgetparam" : "_pin_joint_get_param",
    "pinjointsetlocala" : "_pin_joint_set_local_a",
    "pinjointgetlocala" : "_pin_joint_get_local_a",
    "pinjointsetlocalb" : "_pin_joint_set_local_b",
    "pinjointgetlocalb" : "_pin_joint_get_local_b",
    "jointmakehinge" : "_joint_make_hinge",
    "jointmakehingesimple" : "_joint_make_hinge_simple",
    "hingejointsetparam" : "_hinge_joint_set_param",
    "hingejointgetparam" : "_hinge_joint_get_param",
    "hingejointsetflag" : "_hinge_joint_set_flag",
    "hingejointgetflag" : "_hinge_joint_get_flag",
    "jointmakeslider" : "_joint_make_slider",
    "sliderjointsetparam" : "_slider_joint_set_param",
    "sliderjointgetparam" : "_slider_joint_get_param",
    "jointmakeconetwist" : "_joint_make_cone_twist",
    "conetwistjointsetparam" : "_cone_twist_joint_set_param",
    "conetwistjointgetparam" : "_cone_twist_joint_get_param",
    "jointmakegeneric6dof" : "_joint_make_generic_6dof",
    "generic6dofjointsetparam" : "_generic_6dof_joint_set_param",
    "generic6dofjointgetparam" : "_generic_6dof_joint_get_param",
    "generic6dofjointsetflag" : "_generic_6dof_joint_set_flag",
    "generic6dofjointgetflag" : "_generic_6dof_joint_get_flag",
    "jointgettype" : "_joint_get_type",
    "jointsetsolverpriority" : "_joint_set_solver_priority",
    "jointgetsolverpriority" : "_joint_get_solver_priority",
    "jointdisablecollisionsbetweenbodies" : "_joint_disable_collisions_between_bodies",
    "jointisdisabledcollisionsbetweenbodies" : "_joint_is_disabled_collisions_between_bodies",
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
template vmap*(_: typedesc[PhysicsServer3DExtension]): Table[string, string] = PhysicsServer3DExtension_vmap