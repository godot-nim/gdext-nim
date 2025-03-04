import std/[tables]

import gdext/gdinterface/native

import gdext/buildconf
import gdext/core/geometrics

when Extension.decimalPrecision == "double":
  type real_elem* = float64
elif Extension.decimalPrecision == "float" or true:
  type real_elem* = float32

type int_elem* = int32
type float_elem* = float32

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


var hook_copy: array[VariantType, PtrConstructor]
var hook_destroy: array[VariantType, PtrDestructor]

proc `=destroy`*(val {.bycopy.}: String) =
  if val.opaque == String.opaque.default: return
  try: hook_destroy[VariantTypeString](addr val)
  except: discard
proc `=destroy`*(val {.bycopy.}: StringName) =
  if val.opaque == StringName.opaque.default: return
  try: hook_destroy[VariantTypeStringName](addr val)
  except: discard
proc `=destroy`*(val {.bycopy.}: NodePath) =
  if val.opaque == NodePath.opaque.default: return
  try: hook_destroy[VariantTypeNodePath](addr val)
  except: discard
proc `=destroy`*(val {.bycopy.}: Callable) =
  if val.opaque == Callable.opaque.default: return
  try: hook_destroy[VariantTypeCallable](addr val)
  except: discard
proc `=destroy`*(val {.bycopy.}: Signal) =
  if val.opaque == Signal.opaque.default: return
  try: hook_destroy[VariantTypeSignal](addr val)
  except: discard
proc `=destroy`*(val {.bycopy.}: Array) =
  if val.opaque == Array.opaque.default: return
  try: hook_destroy[VariantTypeArray](addr val)
  except: discard
proc `=destroy`*(val {.bycopy.}: Dictionary) =
  if val.opaque == Dictionary.opaque.default: return
  try: hook_destroy[VariantTypeDictionary](addr val)
  except: discard
proc `=destroy`*[T](val {.bycopy.}: PackedArray[T]) =
  if val.opaque == PackedArray.opaque.default: return
  try:
    when T is byte:
      hook_destroy[VariantTypePackedByteArray](addr val)
    elif T is int32:
      hook_destroy[VariantTypePackedInt32Array](addr val)
    elif T is int64:
      hook_destroy[VariantTypePackedInt64Array](addr val)
    elif T is float32:
      hook_destroy[VariantTypePackedFloat32Array](addr val)
    elif T is float64:
      hook_destroy[VariantTypePackedFloat64Array](addr val)
    elif T is String:
      hook_destroy[VariantTypePackedStringArray](addr val)
    elif T is Vector2:
      hook_destroy[VariantTypePackedVector2Array](addr val)
    elif T is Vector3:
      hook_destroy[VariantTypePackedVector3Array](addr val)
    elif T is Vector4:
      hook_destroy[VariantTypePackedVector4Array](addr val)
    elif T is Color:
      hook_destroy[VariantTypePackedColorArray](addr val)
  except: discard

proc `=dup`*(src: String): String =
  let argPtr = cast[pointer](addr src)
  hook_copy[VariantTypeString](addr result, addr argPtr)
proc `=dup`*(src: StringName): StringName =
  let argPtr = cast[pointer](addr src)
  hook_copy[VariantTypeStringName](addr result, addr argPtr)
proc `=dup`*(src: NodePath): NodePath =
  let argPtr = cast[pointer](addr src)
  hook_copy[VariantTypeNodePath](addr result, addr argPtr)
proc `=dup`*(src: RID): RID =
  let argPtr = cast[pointer](addr src)
  hook_copy[VariantTypeRID](addr result, addr argPtr)
proc `=dup`*(src: Callable): Callable =
  let argPtr = cast[pointer](addr src)
  hook_copy[VariantTypeCallable](addr result, addr argPtr)
proc `=dup`*(src: Signal): Signal =
  let argPtr = cast[pointer](addr src)
  hook_copy[VariantTypeSignal](addr result, addr argPtr)
proc `=dup`*(src: Dictionary): Dictionary =
  let argPtr = cast[pointer](addr src)
  hook_copy[VariantTypeDictionary](addr result, addr argPtr)
proc `=dup`*(src: Array): Array =
  let argPtr = cast[pointer](addr src)
  hook_copy[VariantTypeArray](addr result, addr argPtr)

proc `=dup`*[T](src: PackedArray[T]): PackedArray[T] =
  let argPtr = cast[pointer](addr src)
  when T is byte:
    hook_copy[VariantTypePackedByteArray](addr result, addr argPtr)
  elif T is int32:
    hook_copy[VariantTypePackedInt32Array](addr result, addr argPtr)
  elif T is int64:
    hook_copy[VariantTypePackedInt64Array](addr result, addr argPtr)
  elif T is float32:
    hook_copy[VariantTypePackedFloat32Array](addr result, addr argPtr)
  elif T is float64:
    hook_copy[VariantTypePackedFloat64Array](addr result, addr argPtr)
  elif T is String:
    hook_copy[VariantTypePackedStringArray](addr result, addr argPtr)
  elif T is Vector2:
    hook_copy[VariantTypePackedVector2Array](addr result, addr argPtr)
  elif T is Vector3:
    hook_copy[VariantTypePackedVector3Array](addr result, addr argPtr)
  elif T is Vector4:
    hook_copy[VariantTypePackedVector4Array](addr result, addr argPtr)
  elif T is Color:
    hook_copy[VariantTypePackedColorArray](addr result, addr argPtr)


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
  try:
    interface_variantDestroy(addr x)
  except: discard
proc `=dup`*(x: Variant): Variant =
  interface_variantNewCopy(addr result, addr x)
proc `=copy`*(dest: var Variant; source: Variant) =
  `=destroy` dest
  interface_variantNewCopy(addr dest, addr source)

proc load* =
  const
    constrs = [
      VariantTypeString,
      VariantTypeStringName,
      VariantTypeNodePath,
      VariantTypeRID,
      VariantTypeCallable,
      VariantTypeSignal,
      VariantTypeDictionary,
      VariantTypeArray,
      VariantTypePackedByteArray,
      VariantTypePackedInt32Array,
      VariantTypePackedInt64Array,
      VariantTypePackedFloat32Array,
      VariantTypePackedFloat64Array,
      VariantTypePackedStringArray,
      VariantTypePackedVector2Array,
      VariantTypePackedVector3Array,
      VariantTypePackedVector4Array,
      VariantTypePackedColorArray,
    ]
    destrs = [
      VariantTypeString,
      VariantTypeStringName,
      VariantTypeNodePath,
      VariantTypeCallable,
      VariantTypeSignal,
      VariantTypeDictionary,
      VariantTypeArray,
      VariantTypePackedByteArray,
      VariantTypePackedInt32Array,
      VariantTypePackedInt64Array,
      VariantTypePackedFloat32Array,
      VariantTypePackedFloat64Array,
      VariantTypePackedStringArray,
      VariantTypePackedVector2Array,
      VariantTypePackedVector3Array,
      VariantTypePackedVector4Array,
      VariantTypePackedColorArray,
    ]

  for variantType in constrs:
    hook_copy[variantType] = interface_Variant_getPtrConstructor(variantType, 1)
  for variantType in destrs:
    hook_destroy[variantType] = interface_Variant_getPtrDestructor(variantType)