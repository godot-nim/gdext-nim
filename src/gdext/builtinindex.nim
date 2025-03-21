import std/tables

import gdext/private/native

import gdext/buildconf
import gdext/core/geometrics

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
  VectorR*[N: static int] = Vector[N, real_elem]
  VectorI*[N: static int] = Vector[N, int_elem]

  PackedArray*[Item] {.byref.} = object
    proxy: pointer
    data_unsafe*: ptr UncheckedArray[Item]

export Bool
export Int

type
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
    x*: Vector2
    y*: Vector2
    origin*: Vector2
  Plane* {.byref.} = object
    normal*: Vector3
    d*: real_elem
  Quaternion* {.byref.} = object
    x*: real_elem
    y*: real_elem
    z*: real_elem
    w*: real_elem
  AABB* {.byref.} = object
    position*: Vector3
    size*: Vector3
  Basis* {.byref.} = object
    x*: Vector3
    y*: Vector3
    z*: Vector3
  Transform3D* {.byref.} = object
    basis*: Basis
    origin*: Vector3
  Projection* {.byref.} = object
    x*: Vector4
    y*: Vector4
    z*: Vector4
    w*: Vector4
  Color* {.byref.} = object
    r*: float_elem
    g*: float_elem
    b*: float_elem
    a*: float_elem
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

  TypedArray*[T: SomeVariant] = distinct Array

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
    owner: ObjectPtr
    when Dev.debugCallbacks:
      debugName: string
  RefCounted* = ptr object of Object

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

  SomeVariant* = concept type t
    t is SomeBuiltins | Object

template Item*(typ: typedesc[String]): typedesc = Rune
template Item*(typ: typedesc[Array]): typedesc = Variant
template Item*(typ: typedesc[Dictionary]): typedesc = Variant

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

method onInit*(self: Object) {.base.} = discard
method onDestroy*(self: Object) {.base.} = discard
