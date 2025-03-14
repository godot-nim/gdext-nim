import std/tables

import gdext/private/native

import gdext/buildconf

when Extension.decimalPrecision == "double":
  type real_elem* = float64
elif Extension.decimalPrecision == "float" or true:
  type real_elem* = float32

type int_elem* = int32
type float_elem* = float32
type char16* = char16_t
type char32* = char32_t

type Opaque[I: static int] = array[I, pointer]

type
  Vector*[N: static int; T] = array[N, T]
  NVector*[N: static int; T: SomeFloat] = distinct Vector[N, T]
  Radian*[T: SomeFloat] = distinct T

type
  Radian32* = Radian[float32]
  Radian64* = Radian[float64]

type
  VectorR*[N: static int] = Vector[N, real_elem]
  VectorI*[N: static int] = Vector[N, int_elem]

  PackedArray*[Item] {.byref.} = object
    proxy: pointer
    data_unsafe*: ptr UncheckedArray[Item]

export Bool
export Int

type
  GodotDefect* = object of CatchableError
  GodotCallDefect* = object of GodotDefect
  GodotVariantTypeDefect* = object of GodotDefect

  Variant* {.byref.} = object
    data*: tuple[
      `type`: uint64,
      opaque: array[4, pointer],
    ]
  Float* = float64
  Vector2* = VectorR[2]
  Vector3* = VectorR[3]
  Vector4* = VectorR[4]
  Vector2i* = VectorI[2]
  Vector3i* = VectorI[3]
  Vector4i* = VectorI[4]
  Rect2* {.byref.} = object
    position*: Vector2
    size*: Vector2
  Rect2i* {.byref.} = object
    position*: Vector2i
    size*: Vector2i
  Transform2D* {.byref.} = object
    x*: Vector2 = [1, 0]
    y*: Vector2 = [0, 1]
    origin*: Vector2
  Plane* {.byref.} = object
    normal*: Vector3
    d*: real_elem
  Quaternion* {.byref.} = object
    x*: real_elem
    y*: real_elem
    z*: real_elem
    w*: real_elem = 1
  AABB* {.byref.} = object
    position*: Vector3
    size*: Vector3
  Basis* {.byref.} = object
    x*: Vector3 = [1, 0, 0]
    y*: Vector3 = [0, 1, 0]
    z*: Vector3 = [0, 0, 1]
  Transform3D* {.byref.} = object
    basis*: Basis
    origin*: Vector3
  Projection* {.byref.} = object
    x*: Vector4 = [1, 0, 0, 0]
    y*: Vector4 = [0, 1, 0, 0]
    z*: Vector4 = [0, 0, 1, 0]
    w*: Vector4 = [0, 0, 0, 1]
  Color* {.byref.} = object
    r*: float_elem
    g*: float_elem
    b*: float_elem
    a*: float_elem = 1
  RID* {.byref.} = object
    opaque: Opaque[2]
  String* {.byref.} = object
    opaque: Opaque[1]
  StringName* {.byref.} = object
    opaque: Opaque[1]
  NodePath* {.byref.} = object
    opaque: Opaque[1]
  Callable* {.byref.} = object
    opaque: Opaque[4]
  Signal* {.byref.} = object
    opaque: Opaque[4]
  Dictionary* {.byref.} = object
    opaque: Opaque[1]
  Array* {.byref.} = object
    opaque: Opaque[1]

  TypedArray*[T: SomeProperty] = distinct Array

  PackedByteArray* = PackedArray[byte]
  PackedInt32Array* = PackedArray[int32]
  PackedInt64Array* = PackedArray[int64]
  PackedFloat32Array* = PackedArray[float32]
  PackedFloat64Array* = PackedArray[float64]
  PackedStringArray* = PackedArray[String]
  PackedVector2Array* = PackedArray[Vector2]
  PackedVector3Array* = PackedArray[Vector3]
  PackedVector4Array* = PackedArray[Vector4]
  PackedColorArray* = PackedArray[Color]

  Object* = ptr object of RootObj
    unsafeEngineInstance: ObjectPtr
    when Dev.debugCallbacks:
      debugName: string
  RefCounted* = ptr object of Object

  GdRef*[RefCounted] = object
    handle*: RefCounted

  SomePackedArray* =
    PackedByteArray    |
    PackedInt32Array   |
    PackedInt64Array   |
    PackedFloat32Array |
    PackedFloat64Array |
    PackedStringArray  |
    PackedVector2Array |
    PackedVector3Array |
    PackedVector4Array |
    PackedColorArray
  SomeFloatVector* =
    Vector2 |
    Vector3 |
    Vector4
  SomeIntVector* =
    Vector2i |
    Vector3i |
    Vector4i
  SomeVector* =
    SomeFloatVector |
    SomeIntVector
  SomePrimitives* =
    Bool         |
    Int          |
    Float        |
    SomeVector   |
    Rect2        |
    Rect2i       |
    Transform2D  |
    Plane        |
    Quaternion   |
    AABB         |
    Basis        |
    Transform3D  |
    Projection   |
    Color
  SomeGodotUniques* =
    String          |
    StringName      |
    NodePath        |
    RID             |
    Callable        |
    Signal          |
    Dictionary      |
    Array           |
    SomePackedArray
  SomeBuiltins* = SomePrimitives|SomeGodotUniques

  SomeClass* = Object
  SomeEngineClass* = concept type t
    t is SomeClass
    t.EngineClass is t
  SomeUserClass* = concept type t
    t is SomeClass
    t.EngineClass isnot t

  SomeProperty* = concept x, type t
    t.variantType is VariantType
    variant(x) is Variant
    compiles(Variant().get(t))

  AltInt* = int|int32|int16|int8|uint64|uint32|uint16|uint8
  AltFloat* = float32
  AltString* = string

template Item*(typ: typedesc[String]): typedesc = Rune
template Item*(typ: typedesc[Array]): typedesc = Variant
template Item*(typ: typedesc[Dictionary]): typedesc = Variant

template variantType*(_: typedesc[Bool]): VariantType = VariantType_Bool
template variantType*(_: typedesc[Int]): VariantType = VariantType_Int
template variantType*(_: typedesc[Float]): VariantType = VariantType_Float
template variantType*(_: typedesc[Vector2]): VariantType = VariantType_Vector2
template variantType*(_: typedesc[Vector3]): VariantType = VariantType_Vector3
template variantType*(_: typedesc[Vector4]): VariantType = VariantType_Vector4
template variantType*(_: typedesc[Vector2i]): VariantType = VariantType_Vector2i
template variantType*(_: typedesc[Vector3i]): VariantType = VariantType_Vector3i
template variantType*(_: typedesc[Vector4i]): VariantType = VariantType_Vector4i
template variantType*(_: typedesc[Rect2]): VariantType = VariantType_Rect2
template variantType*(_: typedesc[Rect2i]): VariantType = VariantType_Rect2i
template variantType*(_: typedesc[Transform2D]): VariantType = VariantType_Transform2d
template variantType*(_: typedesc[Plane]): VariantType = VariantType_Plane
template variantType*(_: typedesc[Quaternion]): VariantType = VariantType_Quaternion
template variantType*(_: typedesc[AABB]): VariantType = VariantType_AABB
template variantType*(_: typedesc[Basis]): VariantType = VariantType_Basis
template variantType*(_: typedesc[Transform3D]): VariantType = VariantType_Transform3d
template variantType*(_: typedesc[Projection]): VariantType = VariantType_Projection
template variantType*(_: typedesc[Color]): VariantType = VariantType_Color
template variantType*(_: typedesc[RID]): VariantType = VariantType_RID
template variantType*(_: typedesc[String]): VariantType = VariantType_String
template variantType*(_: typedesc[StringName]): VariantType = VariantType_StringName
template variantType*(_: typedesc[NodePath]): VariantType = VariantType_NodePath
template variantType*(_: typedesc[Callable]): VariantType = VariantType_Callable
template variantType*(_: typedesc[Signal]): VariantType = VariantType_Signal
template variantType*(_: typedesc[Dictionary]): VariantType = VariantType_Dictionary
template variantType*(_: typedesc[Array]): VariantType = VariantType_Array
template variantType*(_: typedesc[PackedByteArray]): VariantType = VariantType_PackedByteArray
template variantType*(_: typedesc[PackedInt32Array]): VariantType = VariantType_PackedInt32Array
template variantType*(_: typedesc[PackedInt64Array]): VariantType = VariantType_PackedInt64Array
template variantType*(_: typedesc[PackedFloat32Array]): VariantType = VariantType_PackedFloat32Array
template variantType*(_: typedesc[PackedFloat64Array]): VariantType = VariantType_PackedFloat64Array
template variantType*(_: typedesc[PackedStringArray]): VariantType = VariantType_PackedStringArray
template variantType*(_: typedesc[PackedVector2Array]): VariantType = VariantType_PackedVector2Array
template variantType*(_: typedesc[PackedVector3Array]): VariantType = VariantType_PackedVector3Array
template variantType*(_: typedesc[PackedVector4Array]): VariantType = VariantType_PackedVector4Array
template variantType*(_: typedesc[PackedColorArray]): VariantType = VariantType_PackedColorArray

template variantType*(_: typedesc[TypedArray]): VariantType = VariantType_Array

# Object

template variantType*(Type: typedesc[ObjectPtr]): Variant_Type = VariantType_Object
template variantType*(Type: typedesc[Object]): Variant_Type = VariantType_Object

template variantType*(Type: typedesc[GdRef]): Variant_Type = VariantType_Object

# Variant

template variantType*(Type: typedesc[Variant]): Variant_Type = VariantType_Nil

# Alternatives

template variantType*(Type: typedesc[AltInt]): Variant_Type = VariantType_Int
template variantType*(Type: typedesc[AltFloat]): Variant_Type = VariantType_Float
template variantType*(Type: typedesc[AltString]): Variant_Type = VariantType_String
template variantType*(Type: typedesc[enum]): Variant_Type = VariantType_Int
template variantType*[E: enum](Type: typedesc[set[E]]): Variant_Type = VariantType_Int

template variantType*(Type: typedesc[ptr Variant]): Variant_Type = VariantType_Nil

include gdext/gen/[classindex, localenums, globalenums, structs]

proc `=destroy`*(val {.bycopy.}: String) =
  if val.opaque == String.opaque.default: return
  typeDestructor[VariantTypeString](addr val)
proc `=destroy`*(val {.bycopy.}: StringName) =
  if val.opaque == StringName.opaque.default: return
  typeDestructor[VariantTypeStringName](addr val)
proc `=destroy`*(val {.bycopy.}: NodePath) =
  if val.opaque == NodePath.opaque.default: return
  typeDestructor[VariantTypeNodePath](addr val)
proc `=destroy`*(val {.bycopy.}: Callable) =
  if val.opaque == Callable.opaque.default: return
  typeDestructor[VariantTypeCallable](addr val)
proc `=destroy`*(val {.bycopy.}: Signal) =
  if val.opaque == Signal.opaque.default: return
  typeDestructor[VariantTypeSignal](addr val)
proc `=destroy`*(val {.bycopy.}: Array) =
  if val.opaque == Array.opaque.default: return
  typeDestructor[VariantTypeArray](addr val)
proc `=destroy`*(val {.bycopy.}: Dictionary) =
  if val.opaque == Dictionary.opaque.default: return
  typeDestructor[VariantTypeDictionary](addr val)
proc `=destroy`*[T](val {.bycopy.}: PackedArray[T]) =
  if val.opaque == PackedArray.opaque.default: return
  when T is byte:
    typeDestructor[VariantTypePackedByteArray](addr val)
  elif T is int32:
    typeDestructor[VariantTypePackedInt32Array](addr val)
  elif T is int64:
    typeDestructor[VariantTypePackedInt64Array](addr val)
  elif T is float32:
    typeDestructor[VariantTypePackedFloat32Array](addr val)
  elif T is float64:
    typeDestructor[VariantTypePackedFloat64Array](addr val)
  elif T is String:
    typeDestructor[VariantTypePackedStringArray](addr val)
  elif T is Vector2:
    typeDestructor[VariantTypePackedVector2Array](addr val)
  elif T is Vector3:
    typeDestructor[VariantTypePackedVector3Array](addr val)
  elif T is Vector4:
    typeDestructor[VariantTypePackedVector4Array](addr val)
  elif T is Color:
    typeDestructor[VariantTypePackedColorArray](addr val)

proc `=dup`*(src: String): String =
  let argPtr = cast[pointer](addr src)
  typeConstructor[VariantTypeString](addr result, addr argPtr)
proc `=dup`*(src: StringName): StringName =
  let argPtr = cast[pointer](addr src)
  typeConstructor[VariantTypeStringName](addr result, addr argPtr)
proc `=dup`*(src: NodePath): NodePath =
  let argPtr = cast[pointer](addr src)
  typeConstructor[VariantTypeNodePath](addr result, addr argPtr)
proc `=dup`*(src: RID): RID =
  let argPtr = cast[pointer](addr src)
  typeConstructor[VariantTypeRID](addr result, addr argPtr)
proc `=dup`*(src: Callable): Callable =
  let argPtr = cast[pointer](addr src)
  typeConstructor[VariantTypeCallable](addr result, addr argPtr)
proc `=dup`*(src: Signal): Signal =
  let argPtr = cast[pointer](addr src)
  typeConstructor[VariantTypeSignal](addr result, addr argPtr)
proc `=dup`*(src: Dictionary): Dictionary =
  let argPtr = cast[pointer](addr src)
  typeConstructor[VariantTypeDictionary](addr result, addr argPtr)
proc `=dup`*(src: Array): Array =
  let argPtr = cast[pointer](addr src)
  typeConstructor[VariantTypeArray](addr result, addr argPtr)

proc `=dup`*[T](src: PackedArray[T]): PackedArray[T] =
  let argPtr = cast[pointer](addr src)
  when T is byte:
    typeConstructor[VariantTypePackedByteArray](addr result, addr argPtr)
  elif T is int32:
    typeConstructor[VariantTypePackedInt32Array](addr result, addr argPtr)
  elif T is int64:
    typeConstructor[VariantTypePackedInt64Array](addr result, addr argPtr)
  elif T is float32:
    typeConstructor[VariantTypePackedFloat32Array](addr result, addr argPtr)
  elif T is float64:
    typeConstructor[VariantTypePackedFloat64Array](addr result, addr argPtr)
  elif T is String:
    typeConstructor[VariantTypePackedStringArray](addr result, addr argPtr)
  elif T is Vector2:
    typeConstructor[VariantTypePackedVector2Array](addr result, addr argPtr)
  elif T is Vector3:
    typeConstructor[VariantTypePackedVector3Array](addr result, addr argPtr)
  elif T is Vector4:
    typeConstructor[VariantTypePackedVector4Array](addr result, addr argPtr)
  elif T is Color:
    typeConstructor[VariantTypePackedColorArray](addr result, addr argPtr)


proc `=copy`*(dst: var String; src: String) =
  if dst == src: return
  `=destroy` dst
  wasMoved dst
  dst = `=dup` src
proc `=copy`*(dst: var StringName; src: StringName) =
  if dst == src: return
  `=destroy` dst
  wasMoved dst
  dst = `=dup` src
proc `=copy`*(dst: var NodePath; src: NodePath) =
  if dst == src: return
  `=destroy` dst
  wasMoved dst
  dst = `=dup` src
proc `=copy`*(dst: var RID; src: RID) =
  if dst == src: return
  `=destroy` dst
  wasMoved dst
  dst = `=dup` src
proc `=copy`*(dst: var Callable; src: Callable) =
  if dst == src: return
  `=destroy` dst
  wasMoved dst
  dst = `=dup` src
proc `=copy`*(dst: var Signal; src: Signal) =
  if dst == src: return
  `=destroy` dst
  wasMoved dst
  dst = `=dup` src
proc `=copy`*(dst: var Dictionary; src: Dictionary) =
  if dst == src: return
  `=destroy` dst
  wasMoved dst
  dst = `=dup` src
proc `=copy`*(dst: var Array; src: Array) =
  if dst == src: return
  `=destroy` dst
  wasMoved dst
  dst = `=dup` src
proc `=copy`*[T](dst: var PackedArray[T]; src: PackedArray[T]) =
  if dst == src: return
  `=destroy` dst
  wasMoved dst
  dst = `=dup` src

proc `=destroy`*(x: Variant) =
  interface_variantDestroy(addr x)
proc `=dup`*(x: Variant): Variant =
  interface_variantNewCopy(addr result, addr x)
proc `=copy`*(dest: var Variant; source: Variant) =
  `=destroy` dest
  wasMoved dest
  interface_variantNewCopy(addr dest, addr source)

proc hook_reference(o: ObjectPtr): Bool {.raises: [].}
proc hook_unreference(o: ObjectPtr): Bool {.raises: [].}

proc `=destroy`*[T](self: GdRef[T]) =
  if self.handle.isNil: return
  let objectptr = self.handle.unsafeEngineInstance
  if objectptr.isNil: return
  if hook_unreference(objectptr):
    interfaceObjectDestroy objectPtr
proc `=dup`*[T](src: GdRef[T]): GdRef[T] =
  if src.handle.isNil: return
  result.handle = src.handle
  let objectptr = src.handle.unsafeEngineInstance
  if objectptr.isNil: return
  discard hook_reference(objectptr)
proc `=copy`*[T](dst: var GdRef[T]; src: GdRef[T]) =
  `=destroy`dst
  `=wasMoved`dst
  dst = `=dup`src

proc hook_reference(o: ObjectPtr): Bool {.raises: [].} =
  if unlikely(o.isNil): return
  interface_Object_methodBindPtrCall(RefCounted_reference, o, nil, addr result)
proc hook_unreference(o: ObjectPtr): Bool {.raises: [].} =
  if unlikely(o.isNil): return
  interface_Object_methodBindPtrCall(RefCounted_unreference, o, nil, addr result)

template gdref*[T](Type: typedesc[T]): typedesc = GdRef[Type]
