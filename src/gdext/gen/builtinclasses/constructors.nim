{.warning[UnusedImport]:off.}

import gdext/coronation/header/builtinclasses/constructors
import gdext/coronation/tune/builtinclasses/constructors; export constructors

var String_constr: array[4, PtrConstructor]
proc load_String_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2, 3]:
    String_constr[i] = interface_Variant_getPtrConstructor(VariantType_String, int32 i)

proc gdstring*(): String =
  String_constr[0](addr result, nil)
proc gdstring*(`from`: String): String =
  let argArr = [getPtr `from`]
  String_constr[1](addr result, addr argArr[0])
proc gdstring*(`from`: StringName): String =
  let argArr = [getPtr `from`]
  String_constr[2](addr result, addr argArr[0])
proc gdstring*(`from`: NodePath): String =
  let argArr = [getPtr `from`]
  String_constr[3](addr result, addr argArr[0])

var Rect2_constr: array[5, PtrConstructor]
proc load_Rect2_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2, 3, 4]:
    Rect2_constr[i] = interface_Variant_getPtrConstructor(VariantType_Rect2, int32 i)

proc rect2*(): Rect2 =
  Rect2_constr[0](addr result, nil)
proc rect2*(`from`: Rect2): Rect2 =
  let argArr = [getPtr `from`]
  Rect2_constr[1](addr result, addr argArr[0])
proc rect2*(`from`: Rect2i): Rect2 =
  let argArr = [getPtr `from`]
  Rect2_constr[2](addr result, addr argArr[0])
proc rect2*(position: Vector2; size: Vector2): Rect2 =
  let argArr = [getPtr position, getPtr size]
  Rect2_constr[3](addr result, addr argArr[0])
proc rect2*(x: Float; y: Float; width: Float; height: Float): Rect2 =
  let argArr = [getPtr x, getPtr y, getPtr width, getPtr height]
  Rect2_constr[4](addr result, addr argArr[0])

var Rect2i_constr: array[5, PtrConstructor]
proc load_Rect2i_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2, 3, 4]:
    Rect2i_constr[i] = interface_Variant_getPtrConstructor(VariantType_Rect2i, int32 i)

proc rect2i*(): Rect2i =
  Rect2i_constr[0](addr result, nil)
proc rect2i*(`from`: Rect2i): Rect2i =
  let argArr = [getPtr `from`]
  Rect2i_constr[1](addr result, addr argArr[0])
proc rect2i*(`from`: Rect2): Rect2i =
  let argArr = [getPtr `from`]
  Rect2i_constr[2](addr result, addr argArr[0])
proc rect2i*(position: Vector2i; size: Vector2i): Rect2i =
  let argArr = [getPtr position, getPtr size]
  Rect2i_constr[3](addr result, addr argArr[0])
proc rect2i*(x: Int; y: Int; width: Int; height: Int): Rect2i =
  let argArr = [getPtr x, getPtr y, getPtr width, getPtr height]
  Rect2i_constr[4](addr result, addr argArr[0])

var Transform2D_constr: array[5, PtrConstructor]
proc load_Transform2D_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2, 3, 4]:
    Transform2D_constr[i] = interface_Variant_getPtrConstructor(VariantType_Transform2D, int32 i)

proc transform2D*(): Transform2D =
  Transform2D_constr[0](addr result, nil)
proc transform2D*(`from`: Transform2D): Transform2D =
  let argArr = [getPtr `from`]
  Transform2D_constr[1](addr result, addr argArr[0])
proc transform2D*(rotation: Float; position: Vector2): Transform2D =
  let argArr = [getPtr rotation, getPtr position]
  Transform2D_constr[2](addr result, addr argArr[0])
proc transform2D*(rotation: Float; scale: Vector2; skew: Float; position: Vector2): Transform2D =
  let argArr = [getPtr rotation, getPtr scale, getPtr skew, getPtr position]
  Transform2D_constr[3](addr result, addr argArr[0])
proc transform2D*(xAxis: Vector2; yAxis: Vector2; origin: Vector2): Transform2D =
  let argArr = [getPtr xAxis, getPtr yAxis, getPtr origin]
  Transform2D_constr[4](addr result, addr argArr[0])

var Plane_constr: array[7, PtrConstructor]
proc load_Plane_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [1, 2, 3, 4, 5]:
    Plane_constr[i] = interface_Variant_getPtrConstructor(VariantType_Plane, int32 i)

proc plane*(`from`: Plane): Plane =
  let argArr = [getPtr `from`]
  Plane_constr[1](addr result, addr argArr[0])
proc plane*(normal: Vector3): Plane =
  let argArr = [getPtr normal]
  Plane_constr[2](addr result, addr argArr[0])
proc plane*(normal: Vector3; d: Float): Plane =
  let argArr = [getPtr normal, getPtr d]
  Plane_constr[3](addr result, addr argArr[0])
proc plane*(normal: Vector3; point: Vector3): Plane =
  let argArr = [getPtr normal, getPtr point]
  Plane_constr[4](addr result, addr argArr[0])
proc plane*(point1: Vector3; point2: Vector3; point3: Vector3): Plane =
  let argArr = [getPtr point1, getPtr point2, getPtr point3]
  Plane_constr[5](addr result, addr argArr[0])

var Quaternion_constr: array[6, PtrConstructor]
proc load_Quaternion_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [1, 2, 3, 4]:
    Quaternion_constr[i] = interface_Variant_getPtrConstructor(VariantType_Quaternion, int32 i)

proc quaternion*(`from`: Quaternion): Quaternion =
  let argArr = [getPtr `from`]
  Quaternion_constr[1](addr result, addr argArr[0])
proc quaternion*(`from`: Basis): Quaternion =
  let argArr = [getPtr `from`]
  Quaternion_constr[2](addr result, addr argArr[0])
proc quaternion*(axis: Vector3; angle: Float): Quaternion =
  let argArr = [getPtr axis, getPtr angle]
  Quaternion_constr[3](addr result, addr argArr[0])
proc quaternion*(arcFrom: Vector3; arcTo: Vector3): Quaternion =
  let argArr = [getPtr arcFrom, getPtr arcTo]
  Quaternion_constr[4](addr result, addr argArr[0])

var AABB_constr: array[3, PtrConstructor]
proc load_AABB_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2]:
    AABB_constr[i] = interface_Variant_getPtrConstructor(VariantType_AABB, int32 i)

proc aABB*(): AABB =
  AABB_constr[0](addr result, nil)
proc aABB*(`from`: AABB): AABB =
  let argArr = [getPtr `from`]
  AABB_constr[1](addr result, addr argArr[0])
proc aABB*(position: Vector3; size: Vector3): AABB =
  let argArr = [getPtr position, getPtr size]
  AABB_constr[2](addr result, addr argArr[0])

var Basis_constr: array[5, PtrConstructor]
proc load_Basis_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2, 3, 4]:
    Basis_constr[i] = interface_Variant_getPtrConstructor(VariantType_Basis, int32 i)

proc basis*(): Basis =
  Basis_constr[0](addr result, nil)
proc basis*(`from`: Basis): Basis =
  let argArr = [getPtr `from`]
  Basis_constr[1](addr result, addr argArr[0])
proc basis*(`from`: Quaternion): Basis =
  let argArr = [getPtr `from`]
  Basis_constr[2](addr result, addr argArr[0])
proc basis*(axis: Vector3; angle: Float): Basis =
  let argArr = [getPtr axis, getPtr angle]
  Basis_constr[3](addr result, addr argArr[0])
proc basis*(xAxis: Vector3; yAxis: Vector3; zAxis: Vector3): Basis =
  let argArr = [getPtr xAxis, getPtr yAxis, getPtr zAxis]
  Basis_constr[4](addr result, addr argArr[0])

var Transform3D_constr: array[5, PtrConstructor]
proc load_Transform3D_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2, 3, 4]:
    Transform3D_constr[i] = interface_Variant_getPtrConstructor(VariantType_Transform3D, int32 i)

proc transform3D*(): Transform3D =
  Transform3D_constr[0](addr result, nil)
proc transform3D*(`from`: Transform3D): Transform3D =
  let argArr = [getPtr `from`]
  Transform3D_constr[1](addr result, addr argArr[0])
proc transform3D*(basis: Basis; origin: Vector3): Transform3D =
  let argArr = [getPtr basis, getPtr origin]
  Transform3D_constr[2](addr result, addr argArr[0])
proc transform3D*(xAxis: Vector3; yAxis: Vector3; zAxis: Vector3; origin: Vector3): Transform3D =
  let argArr = [getPtr xAxis, getPtr yAxis, getPtr zAxis, getPtr origin]
  Transform3D_constr[3](addr result, addr argArr[0])
proc transform3D*(`from`: Projection): Transform3D =
  let argArr = [getPtr `from`]
  Transform3D_constr[4](addr result, addr argArr[0])

var Projection_constr: array[4, PtrConstructor]
proc load_Projection_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2, 3]:
    Projection_constr[i] = interface_Variant_getPtrConstructor(VariantType_Projection, int32 i)

proc projection*(): Projection =
  Projection_constr[0](addr result, nil)
proc projection*(`from`: Projection): Projection =
  let argArr = [getPtr `from`]
  Projection_constr[1](addr result, addr argArr[0])
proc projection*(`from`: Transform3D): Projection =
  let argArr = [getPtr `from`]
  Projection_constr[2](addr result, addr argArr[0])
proc projection*(xAxis: Vector4; yAxis: Vector4; zAxis: Vector4; wAxis: Vector4): Projection =
  let argArr = [getPtr xAxis, getPtr yAxis, getPtr zAxis, getPtr wAxis]
  Projection_constr[3](addr result, addr argArr[0])

var Color_constr: array[7, PtrConstructor]
proc load_Color_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [5, 6]:
    Color_constr[i] = interface_Variant_getPtrConstructor(VariantType_Color, int32 i)

proc color*(code: String): Color =
  let argArr = [getPtr code]
  Color_constr[5](addr result, addr argArr[0])
proc color*(code: String; alpha: Float): Color =
  let argArr = [getPtr code, getPtr alpha]
  Color_constr[6](addr result, addr argArr[0])

var StringName_constr: array[3, PtrConstructor]
proc load_StringName_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2]:
    StringName_constr[i] = interface_Variant_getPtrConstructor(VariantType_StringName, int32 i)

proc stringName*(): StringName =
  StringName_constr[0](addr result, nil)
proc stringName*(`from`: StringName): StringName =
  let argArr = [getPtr `from`]
  StringName_constr[1](addr result, addr argArr[0])
proc stringName*(`from`: String): StringName =
  let argArr = [getPtr `from`]
  StringName_constr[2](addr result, addr argArr[0])

var NodePath_constr: array[3, PtrConstructor]
proc load_NodePath_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2]:
    NodePath_constr[i] = interface_Variant_getPtrConstructor(VariantType_NodePath, int32 i)

proc nodePath*(): NodePath =
  NodePath_constr[0](addr result, nil)
proc nodePath*(`from`: NodePath): NodePath =
  let argArr = [getPtr `from`]
  NodePath_constr[1](addr result, addr argArr[0])
proc nodePath*(`from`: String): NodePath =
  let argArr = [getPtr `from`]
  NodePath_constr[2](addr result, addr argArr[0])

var RID_constr: array[2, PtrConstructor]
proc load_RID_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1]:
    RID_constr[i] = interface_Variant_getPtrConstructor(VariantType_RID, int32 i)

proc rID*(): RID =
  RID_constr[0](addr result, nil)
proc rID*(`from`: RID): RID =
  let argArr = [getPtr `from`]
  RID_constr[1](addr result, addr argArr[0])

var Callable_constr: array[3, PtrConstructor]
proc load_Callable_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2]:
    Callable_constr[i] = interface_Variant_getPtrConstructor(VariantType_Callable, int32 i)

proc callable*(): Callable =
  Callable_constr[0](addr result, nil)
proc callable*(`from`: Callable): Callable =
  let argArr = [getPtr `from`]
  Callable_constr[1](addr result, addr argArr[0])
proc callable*(`object`: Object; `method`: StringName): Callable =
  let argArr = [getPtr `object`, getPtr `method`]
  Callable_constr[2](addr result, addr argArr[0])

var Signal_constr: array[3, PtrConstructor]
proc load_Signal_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2]:
    Signal_constr[i] = interface_Variant_getPtrConstructor(VariantType_Signal, int32 i)

proc signal*(): Signal =
  Signal_constr[0](addr result, nil)
proc signal*(`from`: Signal): Signal =
  let argArr = [getPtr `from`]
  Signal_constr[1](addr result, addr argArr[0])
proc signal*(`object`: Object; signal: StringName): Signal =
  let argArr = [getPtr `object`, getPtr signal]
  Signal_constr[2](addr result, addr argArr[0])

var Dictionary_constr: array[2, PtrConstructor]
proc load_Dictionary_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1]:
    Dictionary_constr[i] = interface_Variant_getPtrConstructor(VariantType_Dictionary, int32 i)

proc dictionary*(): Dictionary =
  Dictionary_constr[0](addr result, nil)
proc dictionary*(`from`: Dictionary): Dictionary =
  let argArr = [getPtr `from`]
  Dictionary_constr[1](addr result, addr argArr[0])

var Array_constr: array[13, PtrConstructor]
proc load_Array_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]:
    Array_constr[i] = interface_Variant_getPtrConstructor(VariantType_Array, int32 i)

proc gdarray*(): Array =
  Array_constr[0](addr result, nil)
proc gdarray*(`from`: Array): Array =
  let argArr = [getPtr `from`]
  Array_constr[1](addr result, addr argArr[0])
proc gdarray*(base: Array; `type`: Int; className: StringName; script: Variant): Array =
  let argArr = [getPtr base, getPtr `type`, getPtr className, getPtr script]
  Array_constr[2](addr result, addr argArr[0])
proc gdarray*(`from`: PackedByteArray): Array =
  let argArr = [getPtr `from`]
  Array_constr[3](addr result, addr argArr[0])
proc gdarray*(`from`: PackedInt32Array): Array =
  let argArr = [getPtr `from`]
  Array_constr[4](addr result, addr argArr[0])
proc gdarray*(`from`: PackedInt64Array): Array =
  let argArr = [getPtr `from`]
  Array_constr[5](addr result, addr argArr[0])
proc gdarray*(`from`: PackedFloat32Array): Array =
  let argArr = [getPtr `from`]
  Array_constr[6](addr result, addr argArr[0])
proc gdarray*(`from`: PackedFloat64Array): Array =
  let argArr = [getPtr `from`]
  Array_constr[7](addr result, addr argArr[0])
proc gdarray*(`from`: PackedStringArray): Array =
  let argArr = [getPtr `from`]
  Array_constr[8](addr result, addr argArr[0])
proc gdarray*(`from`: PackedVector2Array): Array =
  let argArr = [getPtr `from`]
  Array_constr[9](addr result, addr argArr[0])
proc gdarray*(`from`: PackedVector3Array): Array =
  let argArr = [getPtr `from`]
  Array_constr[10](addr result, addr argArr[0])
proc gdarray*(`from`: PackedColorArray): Array =
  let argArr = [getPtr `from`]
  Array_constr[11](addr result, addr argArr[0])
proc gdarray*(`from`: PackedVector4Array): Array =
  let argArr = [getPtr `from`]
  Array_constr[12](addr result, addr argArr[0])

var PackedByteArray_constr: array[3, PtrConstructor]
proc load_PackedByteArray_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2]:
    PackedByteArray_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedByteArray, int32 i)

proc packedByteArray*(): PackedByteArray =
  PackedByteArray_constr[0](addr result, nil)
proc packedByteArray*(`from`: PackedByteArray): PackedByteArray =
  let argArr = [getPtr `from`]
  PackedByteArray_constr[1](addr result, addr argArr[0])
proc packedByteArray*(`from`: Array): PackedByteArray =
  let argArr = [getPtr `from`]
  PackedByteArray_constr[2](addr result, addr argArr[0])

var PackedInt32Array_constr: array[3, PtrConstructor]
proc load_PackedInt32Array_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2]:
    PackedInt32Array_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedInt32Array, int32 i)

proc packedInt32Array*(): PackedInt32Array =
  PackedInt32Array_constr[0](addr result, nil)
proc packedInt32Array*(`from`: PackedInt32Array): PackedInt32Array =
  let argArr = [getPtr `from`]
  PackedInt32Array_constr[1](addr result, addr argArr[0])
proc packedInt32Array*(`from`: Array): PackedInt32Array =
  let argArr = [getPtr `from`]
  PackedInt32Array_constr[2](addr result, addr argArr[0])

var PackedInt64Array_constr: array[3, PtrConstructor]
proc load_PackedInt64Array_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2]:
    PackedInt64Array_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedInt64Array, int32 i)

proc packedInt64Array*(): PackedInt64Array =
  PackedInt64Array_constr[0](addr result, nil)
proc packedInt64Array*(`from`: PackedInt64Array): PackedInt64Array =
  let argArr = [getPtr `from`]
  PackedInt64Array_constr[1](addr result, addr argArr[0])
proc packedInt64Array*(`from`: Array): PackedInt64Array =
  let argArr = [getPtr `from`]
  PackedInt64Array_constr[2](addr result, addr argArr[0])

var PackedFloat32Array_constr: array[3, PtrConstructor]
proc load_PackedFloat32Array_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2]:
    PackedFloat32Array_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedFloat32Array, int32 i)

proc packedFloat32Array*(): PackedFloat32Array =
  PackedFloat32Array_constr[0](addr result, nil)
proc packedFloat32Array*(`from`: PackedFloat32Array): PackedFloat32Array =
  let argArr = [getPtr `from`]
  PackedFloat32Array_constr[1](addr result, addr argArr[0])
proc packedFloat32Array*(`from`: Array): PackedFloat32Array =
  let argArr = [getPtr `from`]
  PackedFloat32Array_constr[2](addr result, addr argArr[0])

var PackedFloat64Array_constr: array[3, PtrConstructor]
proc load_PackedFloat64Array_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2]:
    PackedFloat64Array_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedFloat64Array, int32 i)

proc packedFloat64Array*(): PackedFloat64Array =
  PackedFloat64Array_constr[0](addr result, nil)
proc packedFloat64Array*(`from`: PackedFloat64Array): PackedFloat64Array =
  let argArr = [getPtr `from`]
  PackedFloat64Array_constr[1](addr result, addr argArr[0])
proc packedFloat64Array*(`from`: Array): PackedFloat64Array =
  let argArr = [getPtr `from`]
  PackedFloat64Array_constr[2](addr result, addr argArr[0])

var PackedStringArray_constr: array[3, PtrConstructor]
proc load_PackedStringArray_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2]:
    PackedStringArray_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedStringArray, int32 i)

proc packedStringArray*(): PackedStringArray =
  PackedStringArray_constr[0](addr result, nil)
proc packedStringArray*(`from`: PackedStringArray): PackedStringArray =
  let argArr = [getPtr `from`]
  PackedStringArray_constr[1](addr result, addr argArr[0])
proc packedStringArray*(`from`: Array): PackedStringArray =
  let argArr = [getPtr `from`]
  PackedStringArray_constr[2](addr result, addr argArr[0])

var PackedVector2Array_constr: array[3, PtrConstructor]
proc load_PackedVector2Array_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2]:
    PackedVector2Array_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedVector2Array, int32 i)

proc packedVector2Array*(): PackedVector2Array =
  PackedVector2Array_constr[0](addr result, nil)
proc packedVector2Array*(`from`: PackedVector2Array): PackedVector2Array =
  let argArr = [getPtr `from`]
  PackedVector2Array_constr[1](addr result, addr argArr[0])
proc packedVector2Array*(`from`: Array): PackedVector2Array =
  let argArr = [getPtr `from`]
  PackedVector2Array_constr[2](addr result, addr argArr[0])

var PackedVector3Array_constr: array[3, PtrConstructor]
proc load_PackedVector3Array_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2]:
    PackedVector3Array_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedVector3Array, int32 i)

proc packedVector3Array*(): PackedVector3Array =
  PackedVector3Array_constr[0](addr result, nil)
proc packedVector3Array*(`from`: PackedVector3Array): PackedVector3Array =
  let argArr = [getPtr `from`]
  PackedVector3Array_constr[1](addr result, addr argArr[0])
proc packedVector3Array*(`from`: Array): PackedVector3Array =
  let argArr = [getPtr `from`]
  PackedVector3Array_constr[2](addr result, addr argArr[0])

var PackedColorArray_constr: array[3, PtrConstructor]
proc load_PackedColorArray_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2]:
    PackedColorArray_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedColorArray, int32 i)

proc packedColorArray*(): PackedColorArray =
  PackedColorArray_constr[0](addr result, nil)
proc packedColorArray*(`from`: PackedColorArray): PackedColorArray =
  let argArr = [getPtr `from`]
  PackedColorArray_constr[1](addr result, addr argArr[0])
proc packedColorArray*(`from`: Array): PackedColorArray =
  let argArr = [getPtr `from`]
  PackedColorArray_constr[2](addr result, addr argArr[0])

var PackedVector4Array_constr: array[3, PtrConstructor]
proc load_PackedVector4Array_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in [0, 1, 2]:
    PackedVector4Array_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedVector4Array, int32 i)

proc packedVector4Array*(): PackedVector4Array =
  PackedVector4Array_constr[0](addr result, nil)
proc packedVector4Array*(`from`: PackedVector4Array): PackedVector4Array =
  let argArr = [getPtr `from`]
  PackedVector4Array_constr[1](addr result, addr argArr[0])
proc packedVector4Array*(`from`: Array): PackedVector4Array =
  let argArr = [getPtr `from`]
  PackedVector4Array_constr[2](addr result, addr argArr[0])