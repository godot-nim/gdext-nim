## Array
## =====
##
## A standard collection of Variants provided by Godot that holds values of any type whose conversion to Variant is supported.
##
## TypedArray\[SomeVariant\]
## =========================
##
## Array that to be statically typed. Internally, it is the same as Array since that uses Variant for the element type, but the type is statically checked. (Attempting to add a `Texture2D` to a `TypedArray[Node]` will result in a compile error.)
##
## A good alternative if you want to use Array's API under a static type system.
##
## PackedArray
## ===========
##
## A primitive dynamic array provided by Godot.

import gdext/private/gdinterface
import gdext/private/staticevents
import gdext/private/typeshift
import gdext/private/macros
import gdext/builtinindex
import gdext/stringtools
import gdext/varianttools

import std/[sequtils, importutils, hashes]

template nilCheck*(self: Array) =
  if unlikely(cast[pointer](self) == nil):
    raise newException(NilAccessDefect, $typeof(self) & " requires init; call `new" & $typeof(self) & "()`")
template nilCheck*(self: var Array) =
  if unlikely(cast[pointer](self) == nil):
    self = newArray()

template nilCheck*[T](self: TypedArray[T]) =
  if unlikely(cast[pointer](self) == nil):
    raise newException(NilAccessDefect, $typeof(self) & " requires init; call `new" & $typeof(self) & "()`")
template nilCheck*[T](self: var TypedArray[T]) =
  if unlikely(cast[pointer](self) == nil):
    self = newTypedArray[T]()

proc setTyped(self: var Array; typ: VariantType; className: StringName; script: Variant) =
  interfaceArraySetTyped(addr self, typ, addr className, addr script)

template `^^*`(len, i: untyped): untyped =
  (when i is BackwardsIndex: len - int(i) else: int(i))

proc newPackedByteArray*(): PackedByteArray = (discard)
proc newPackedColorArray*(): PackedColorArray = (discard)
proc newPackedStringArray*(): PackedStringArray = (discard)
proc newPackedInt32Array*(): PackedInt32Array = (discard)
proc newPackedInt64Array*(): PackedInt64Array = (discard)
proc newPackedFloat32Array*(): PackedFloat32Array = (discard)
proc newPackedFloat64Array*(): PackedFloat64Array = (discard)
proc newPackedVector2Array*(): PackedVector2Array = (discard)
proc newPackedVector3Array*(): PackedVector3Array = (discard)
proc newPackedVector4Array*(): PackedVector4Array = (discard)

include gdext/gen/gdarrayconstr
include gdext/gen/gdpackedbytearrayconstr
include gdext/gen/gdpackedcolorarrayconstr
include gdext/gen/gdpackedstringarrayconstr
include gdext/gen/gdpackedint32arrayconstr
include gdext/gen/gdpackedint64arrayconstr
include gdext/gen/gdpackedfloat32arrayconstr
include gdext/gen/gdpackedfloat64arrayconstr
include gdext/gen/gdpackedvector2arrayconstr
include gdext/gen/gdpackedvector3arrayconstr
include gdext/gen/gdpackedvector4arrayconstr

include gdext/gen/gdarray
include gdext/gen/gdpackedbytearray
include gdext/gen/gdpackedcolorarray
include gdext/gen/gdpackedstringarray
include gdext/gen/gdpackedint32array
include gdext/gen/gdpackedint64array
include gdext/gen/gdpackedfloat32array
include gdext/gen/gdpackedfloat64array
include gdext/gen/gdpackedvector2array
include gdext/gen/gdpackedvector3array
include gdext/gen/gdpackedvector4array

proc `[]`*(self: Array; index: Natural): Variant =
  cast[ptr Variant](interface_Array_operatorIndexConst(addr self, index))[]
proc `[]`*(self: var Array; index: Natural): var Variant =
  cast[ptr Variant](interface_Array_operatorIndex(addr self, index))[]
proc `[]=`*(self: var Array; index: Natural; value: sink Variant) =
  `[]`(self, index) = value

proc `[]`*[T](self: TypedArray[T]; index: Natural): T =
  self.Array[index].get(T)
proc `[]`*[T: SomeBuiltins](self: var TypedArray[T]; index: Natural): var T =
  self.Array[index].getAddr(T)[]
proc `[]=`*[T](self: var TypedArray[T]; index: Natural; value: sink T) =
  `[]`(Array(self), index) = variant(value)

proc `[]`*[T](self: PackedArray[T]; index: Natural): T =
  self.data_unsafe[index]
proc `[]`*[T](self: var PackedArray[T]; index: Natural): var T =
  self.data_unsafe[index]
proc `[]=`*[T](self: var PackedArray[T]; index: Natural; value: sink T) =
  self.data_unsafe[index] = value

# Array
# =====

proc newArray*(len: Natural): Array =
  result = newArray()
  discard result.resize(len)

proc newArray*[T](s: openArray[T]): Array =
  result = newArray(s.len)
  for i in 0..<s.len:
    result[i] = variant s[i]

iterator items*(arr: Array): Variant =
  for i in 0..<arr.size: yield arr[i]
iterator pairs*(arr: Array): (int, Variant) =
  for i in 0..<arr.size: yield (int i, arr[i])

iterator mitems*(arr: var Array): var Variant =
  for i in 0..<arr.size: yield arr[i]
iterator mpairs*(arr: var Array): (int, var Variant) =
  for i in 0..<arr.size: yield (int i, arr[i])

template toOpenArray*(arr: Array): openArray[Variant] =
  cast[UncheckedArray[Variant]](addr arr[0]).toOpenArray(0, arr.size-1)

# TypedArray
# ==========

proc newTypedArray*[T](arr: Array): TypedArray[T] =
  when T is Object:
    TypedArray[T] newArray(arr, Int VariantType_Object, T.className, variant())
  elif T is GdRef:
    TypedArray[T] newArray(arr, Int VariantType_Object, T.RefCounted.className, variant())
  else:
    TypedArray[T] newArray(arr, Int T.variantType, newStringName(), variant())

proc newTypedArray*[T](arr: TypedArray[T]): TypedArray[T] =
  TypedArray[T] newArray(arr.Array)

proc newTypedArray*[T](): TypedArray[T] =
  result = TypedArray[T] newArray()
  when T is Object:
    result.Array.setTyped(VariantType_Object, T.className, variant())
  elif T is GdRef:
    result.Array.setTyped(VariantType_Object, T.RefCounted.className, variant())
  else:
    result.Array.setTyped(T.variantType, newStringName(), variant())

proc newTypedArray*[T](len: Natural): TypedArray[T] =
  result = newTypedArray[T]()
  discard result.Array.resize(len)

proc newTypedArray*[T](s: openArray[T]): TypedArray[T] =
  result = newTypedArray[T](s.len)
  for i in 0..<s.len:
    result[i] = s[i]

template typedArray*[T](arr: Array): TypedArray[T] {.deprecated: "use newTypedArray instead".} =
  newTypedArray[T](arr)
template typedArray*[T](): TypedArray[T] {.deprecated: "use newTypedArray instead".} =
  newTypedArray[T]()
template typedArray*[T](len: Natural): TypedArray[T] {.deprecated: "use newTypedArray instead".} =
  newTypedArray[T](len)

iterator items*[T](arr: TypedArray[T]): T =
  for i in 0..<arr.size: yield arr[i]
iterator pairs*[T](arr: TypedArray[T]): (int, T) =
  for i in 0..<arr.size: yield (int i, arr[i])

iterator mitems*[T](arr: var TypedArray[T]): var T =
  when T is Object or T is GdRef:
    {.error: "mutable items for " & $T & " is unavailable; use items instead".}
  for v in arr.Array.mitems: yield v.getAddr(T)[]
iterator mpairs*[T](arr: var TypedArray[T]): (int, var T) =
  when T is Object or T is GdRef:
    {.error: "mutable pairs for " & $T & " is unavailable; use pairs instead".}
  for i, v in arr.Array.mpairs: yield (i, v.getAddr(T)[])


# func `+`*[T](left, right: TypedArray[T]): TypedArray[T] =
#   TypedArray[T](left + right)
proc get*[T](self: var TypedArray[T]; index: Int): T =
  nilCheck self
  self.Array.get(index).get(T)
proc get*[T](self: TypedArray[T]; index: Int): T =
  nilCheck self
  self.Array.get(index).get(T)
proc set*[T](self: var TypedArray[T]; index: Int; value: T): void =
  nilCheck self
  self.Array.set(index, variant value)
proc pushBack*[T](self: var TypedArray[T]; value: T): void =
  nilCheck self
  self.Array.pushBack(variant value)
proc pushFront*[T](self: var TypedArray[T]; value: T): void =
  nilCheck self
  self.Array.pushFront(variant value)
proc append*[T](self: var TypedArray[T]; value: T): void =
  nilCheck self
  self.Array.append(variant value)
proc insert*[T](self: var TypedArray[T]; position: Int; value: T): Int =
  nilCheck self
  self.Array.insert(position, variant value)
proc fill*[T](self: var TypedArray[T]; value: T): void =
  nilCheck self
  self.Array.fill(variant value)
proc erase*[T](self: var TypedArray[T]; value: T): void =
  nilCheck self
  self.Array.erase(variant value)
proc front*[T](self: var TypedArray[T]): T =
  nilCheck self
  self.Array.front().get(T)
proc front*[T](self: TypedArray[T]): T =
  nilCheck self
  self.Array.front().get(T)
proc back*[T](self: var TypedArray[T]): T =
  nilCheck self
  self.Array.back().get(T)
proc back*[T](self: TypedArray[T]): T =
  nilCheck self
  self.Array.back().get(T)
proc pickRandom*[T](self: var TypedArray[T]): T =
  nilCheck self
  self.Array.pickRandom().get(T)
proc pickRandom*[T](self: TypedArray[T]): T =
  nilCheck self
  self.Array.pickRandom().get(T)
proc find*[T](self: var TypedArray[T]; what: T; `from`: Int = 0): Int =
  nilCheck self
  self.Array.find(variant what, `from`)
proc find*[T](self: TypedArray[T]; what: T; `from`: Int = 0): Int =
  nilCheck self
  self.Array.find(variant what, `from`)
# proc findCustom*[T](self: TypedArray[T]; `method`: Callable; `from`: Int = 0): Int =
proc rfind*[T](self: var TypedArray[T]; what: T; `from`: Int = -1): Int =
  nilCheck self
  self.Array.rFind(variant what, `from`)
proc rfind*[T](self: TypedArray[T]; what: T; `from`: Int = -1): Int =
  nilCheck self
  self.Array.rFind(variant what, `from`)
# proc rfindCustom*[T](self: TypedArray[T]; `method`: Callable; `from`: Int = -1): Int =
proc count*[T](self: var TypedArray[T]; value: T): Int =
  nilCheck self
  self.Array.count(variant value)
proc count*[T](self: TypedArray[T]; value: T): Int =
  nilCheck self
  self.Array.count(variant value)
proc has*[T](self: var TypedArray[T]; value: T): bool =
  nilCheck self
  self.Array.has(variant value)
proc has*[T](self: TypedArray[T]; value: T): bool =
  nilCheck self
  self.Array.has(variant value)
proc popBack*[T](self: var TypedArray[T]): T =
  nilCheck self
  self.Array.popBack().get(T)
proc popFront*[T](self: var TypedArray[T]): T =
  nilCheck self
  self.Array.popFront().get(T)
proc popAt*[T](self: var TypedArray[T]; position: Int): T =
  nilCheck self
  self.Array.popAt(position).get(T)
# proc sortCustom*[T](self: var TypedArray[T]; `func`: Callable): void =
proc bsearch*[T](self: var TypedArray[T]; value: T; before: bool = true): Int =
  nilCheck self
  self.Array.bsearch(variant value, before)
proc bsearch*[T](self: TypedArray[T]; value: T; before: bool = true): Int =
  nilCheck self
  self.Array.bsearch(variant value, before)
proc bsearchCustom*[T](self: var TypedArray[T]; value: T; `func`: Callable; before: bool = true): Int =
  nilCheck self
  self.Array.bsearchCustom(variant value, `func`, before)
proc bsearchCustom*[T](self: TypedArray[T]; value: T; `func`: Callable; before: bool = true): Int =
  nilCheck self
  self.Array.bsearchCustom(variant value, `func`, before)
proc duplicate*[T](self: var TypedArray[T]; deep: bool = false): TypedArray[T] =
  nilCheck self
  TypedArray[T](self.Array.duplicate())
proc duplicate*[T](self: TypedArray[T]; deep: bool = false): TypedArray[T] =
  nilCheck self
  TypedArray[T](self.Array.duplicate())
proc slice*[T](self: var TypedArray[T]; begin: Int; `end`: Int = 2147483647; step: Int = 1; deep: bool = false): TypedArray[T] =
  nilCheck self
  TypedArray[T](self.Array.slice(begin, `end`, step, deep))
proc slice*[T](self: TypedArray[T]; begin: Int; `end`: Int = 2147483647; step: Int = 1; deep: bool = false): TypedArray[T] =
  nilCheck self
  TypedArray[T](self.Array.slice(begin, `end`, step, deep))
proc filter*[T](self: var TypedArray[T]; `method`: Callable): TypedArray[T] =
  nilCheck self
  TypedArray[T](self.Array.filter(`method`))
proc filter*[T](self: TypedArray[T]; `method`: Callable): TypedArray[T] =
  nilCheck self
  TypedArray[T](self.Array.filter(`method`))
# proc map*[T](self: TypedArray[T]; `method`: Callable): Array =
# proc reduce*[T](self: TypedArray[T]; `method`: Callable; accum: T = default(Variant)): Variant =
# proc any*[T](self: TypedArray[T]; `method`: Callable): bool =
# proc all*[T](self: TypedArray[T]; `method`: Callable): bool =
proc max*[T](self: var TypedArray[T]): T =
  nilCheck self
  self.Array.max().get(T)
proc max*[T](self: TypedArray[T]): T =
  nilCheck self
  self.Array.max().get(T)
proc min*[T](self: var TypedArray[T]): T =
  nilCheck self
  self.Array.min().get(T)
proc min*[T](self: TypedArray[T]): T =
  nilCheck self
  self.Array.min().get(T)

# PackedArray
# ===========

proc newPackedByteArray*(size: int): PackedByteArray =
  discard result.resize(size)
proc newPackedColorArray*(size: int): PackedColorArray =
  discard result.resize(size)
proc newPackedStringArray*(size: int): PackedStringArray =
  discard result.resize(size)
proc newPackedInt32Array*(size: int): PackedInt32Array =
  discard result.resize(size)
proc newPackedInt64Array*(size: int): PackedInt64Array =
  discard result.resize(size)
proc newPackedFloat32Array*(size: int): PackedFloat32Array =
  discard result.resize(size)
proc newPackedFloat64Array*(size: int): PackedFloat64Array =
  discard result.resize(size)
proc newPackedVector2Array*(size: int): PackedVector2Array =
  discard result.resize(size)
proc newPackedVector3Array*(size: int): PackedVector3Array =
  discard result.resize(size)
proc newPackedVector4Array*(size: int): PackedVector4Array =
  discard result.resize(size)

proc newPackedArray*(s: openArray[byte]): PackedByteArray =
  result = newPackedByteArray(s.len)
  copyMem(addr result[0], addr s[0], sizeof(byte) * s.len)
proc newPackedArray*(s: openArray[Color]): PackedColorArray =
  result = newPackedColorArray(s.len)
  copyMem(addr result[0], addr s[0], sizeof(Color) * s.len)
proc newPackedArray*(s: openArray[String]): PackedStringArray =
  # Needs to call =copy since String do reference-counting.
  result = newPackedStringArray(s.len)
  for i in 0..<s.len:
    result[i] = s[i]
proc newPackedArray*(s: openArray[int32]): PackedInt32Array =
  result = newPackedInt32Array(s.len)
  copyMem(addr result[0], addr s[0], sizeof(int32) * s.len)
proc newPackedArray*(s: openArray[int64]): PackedInt64Array =
  result = newPackedInt64Array(s.len)
  copyMem(addr result[0], addr s[0], sizeof(int64) * s.len)
proc newPackedArray*(s: openArray[float32]): PackedFloat32Array =
  result = newPackedFloat32Array(s.len)
  copyMem(addr result[0], addr s[0], sizeof(float32) * s.len)
proc newPackedArray*(s: openArray[float64]): PackedFloat64Array =
  result = newPackedFloat64Array(s.len)
  copyMem(addr result[0], addr s[0], sizeof(float64) * s.len)
proc newPackedArray*(s: openArray[Vector2]): PackedVector2Array =
  result = newPackedVector2Array(s.len)
  copyMem(addr result[0], addr s[0], sizeof(Vector2) * s.len)
proc newPackedArray*(s: openArray[Vector3]): PackedVector3Array =
  result = newPackedVector3Array(s.len)
  copyMem(addr result[0], addr s[0], sizeof(Vector3) * s.len)
proc newPackedArray*(s: openArray[Vector4]): PackedVector4Array =
  result = newPackedVector4Array(s.len)
  copyMem(addr result[0], addr s[0], sizeof(Vector4) * s.len)

{.push, inline.}
proc newPackedByteArray*(s: openArray[byte]): PackedByteArray = newPackedArray(s)
proc newPackedColorArray*(s: openArray[Color]): PackedColorArray = newPackedArray(s)
proc newPackedStringArray*(s: openArray[String]): PackedStringArray = newPackedArray(s)
proc newPackedInt32Array*(s: openArray[int32]): PackedInt32Array = newPackedArray(s)
proc newPackedInt64Array*(s: openArray[int64]): PackedInt64Array = newPackedArray(s)
proc newPackedFloat32Array*(s: openArray[float32]): PackedFloat32Array = newPackedArray(s)
proc newPackedFloat64Array*(s: openArray[float64]): PackedFloat64Array = newPackedArray(s)
proc newPackedVector2Array*(s: openArray[Vector2]): PackedVector2Array = newPackedArray(s)
proc newPackedVector3Array*(s: openArray[Vector3]): PackedVector3Array = newPackedArray(s)
proc newPackedVector4Array*(s: openArray[Vector4]): PackedVector4Array = newPackedArray(s)
{.pop.}

iterator items*[T](arr: PackedArray[T]): T =
  for i in 0..<arr.size: yield arr[i]
iterator pairs*[T](arr: PackedArray[T]): (int, T) =
  for i in 0..<arr.size: yield (int i, arr[i])

iterator mitems*[T](arr: var PackedArray[T]): var T =
  for i in 0..<arr.size: yield arr[i]
iterator mpairs*[T](arr: var PackedArray[T]): (int, var T) =
  for i in 0..<arr.size: yield (int i, arr[i])

template toOpenArray*[T](arr: PackedArray[T]): openArray[T] =
  arr.dataUnsafe.toOpenArray(0, arr.size.int-1)
proc `@`*[T](arr: PackedArray[T]): seq[T] =
  @(arr.toOpenArray)

# seq integrations
# ================

# Aliases
# -------

{.push, inline.}

# `&`
func `&`*(x, y: Array): Array = x + y
func `&`*[T](x, y: TypedArray[T]): TypedArray[T] = x + y
func `&`*[T](x, y: PackedArray[T]) = x + y

# []
proc `[]`*(arr: Array; index: BackwardsIndex): Variant =
  arr[arr.size - int(index)]
proc `[]`*[T](arr: TypedArray[T]; index: BackwardsIndex): T =
  arr[arr.size - int(index)]
proc `[]`*[T](arr: PackedArray[T]; index: BackwardsIndex): T =
  arr[arr.size - int(index)]

# var []
proc `[]`*(arr: var Array; index: BackwardsIndex): var Variant =
  arr[arr.size - int(index)]
proc `[]`*[T: not Object and not RefCounted](arr: var TypedArray[T]; index: BackwardsIndex): var T =
  arr.Array[arr.size - int(index)].getAddr(T)[]
proc `[]`*[T](arr: var PackedArray[T]; index: BackwardsIndex): var T =
  arr[arr.size - int(index)]

# [] slice
proc `[]`*[U, V: Ordinal](arr: Array, x: HSlice[U, V]): Array =
  when U is BackwardsIndex or V is BackwardsIndex:
    let size = arr.size
  arr.slice((size ^^* x.a), succ(size ^^* x.b))
proc `[]`*[T; U, V: Ordinal](arr: TypedArray[T], x: HSlice[U, V]): TypedArray[T] =
  when U is BackwardsIndex or V is BackwardsIndex:
    let size = arr.size
  arr.slice((size ^^* x.a), succ(size ^^* x.b))
proc `[]`*[T; U, V: Ordinal](arr: PackedArray[T], x: HSlice[U, V]): PackedArray[T] =
  when U is BackwardsIndex or V is BackwardsIndex:
    let size = arr.size
  arr.slice((size ^^* x.a), succ(size ^^* x.b))

# []=
proc `[]=`*(arr: var Array; index: BackwardsIndex; value: Variant) =
  arr[arr.size - int(index)] = value
proc `[]=`*[T](arr: var TypedArray[T]; index: BackwardsIndex; value: T) =
  arr[arr.size - int(index)] = value
proc `[]=`*[T](arr: var PackedArray[T]; index: BackwardsIndex; value: T) =
  arr[arr.size - int(index)] = value

# contains
proc contains*(arr: Array; value: Variant): bool =
  arr.has(value)
proc contains*(arr: var Array; value: Variant): bool =
  arr.has(value)
proc contains*[T: SomeProperty](arr: Array; value: T): bool =
  arr.has(variant value)
proc contains*[T: SomeProperty](arr: var Array; value: T): bool =
  arr.has(variant value)
proc contains*[T](arr: TypedArray[T]; value: T): bool =
  arr.has(value)
proc contains*[T](arr: var TypedArray[T]; value: T): bool =
  arr.has(value)
proc contains*[T](arr: PackedArray[T]; item: T): bool =
  arr.toOpenArray.contains item

# setLen
proc setLen*(arr: var Array; newlen: int) =
  discard arr.resize(newlen)
template setLen(arr: var TypedArray; newlen: int) =
  arr.Array.setLen(newlen)
proc setLen*(arr: var PackedArray; newlen: int) =
  discard arr.resize(newlen)

# len
proc len*(arr: Array): int = int arr.size
proc len*(arr: var Array): int = int arr.size
proc len*(arr: TypedArray): int = int arr.Array.len
proc len*(arr: var TypedArray): int = int arr.Array.len
proc len*(arr: PackedArray): int = int arr.size

# high
proc high*(arr: Array): int = int arr.size.pred
proc high*(arr: var Array): int = int arr.size.pred
proc high*(arr: PackedArray): int = int arr.size.pred
proc high*(arr: var PackedArray): int = int arr.size.pred

# low
proc low*(arr: Array): int = 0
proc low*(arr: PackedArray): int = 0

# add
proc add*(self: var Array; value: Variant) =
  append(self, value)
proc add*(self: var Array; array: Array) =
  appendArray(self, array)

proc add*[T](self: var TypedArray[T]; value: T) =
  append(self, value)

proc add*[T](self: var PackedArray[T]; value: T) =
  append(self, value)
proc add*[T](self: var PackedArray[T]; array: PackedArray[T]) =
  appendArray(self, array)

# delete
proc delete*(self: var Array; index: Natural) =
  self.removeAt(index)
proc delete*[T](self: var PackedArray[T]; index: Natural) =
  self.removeAt(index)

# pop
proc pop*(self: var Array): Variant = self.popBack
proc pop*[T](self: var TypedArray[T]): T = self.popBack
proc pop*[T](self: var PackedArray[T]): T = self.popBack

# grow
# TODO: Port grow

# shrink
# TODO: Port shrink


{.pop.}

# Ports
# -----

proc newArray(s: var Array; size: Natural) =
  privateAccess Array
  if s.cowdata.isNil:
    s = newArray(size)
  else:
    clear s
    discard s.resize(size)
proc newTypedArray[T](s: var TypedArray[T]; size: Natural) =
  privateAccess Array
  if s.Array.cowdata.isNil:
    s = newTypedArray[T](size)
  else:
    clear s.Array
    discard s.Array.resize(size)

proc newPackedArray(s: var PackedArray; size: int) =
  clear s
  discard s.resize(size)


proc `&`*(x: Array; y: Variant): Array =
  let size = x.size
  newArray(result, size + 1)
  for i in 0..<size:
    result[i] = x[i]
  result[size] = y
proc `&`*(x: Variant; y: Array): Array =
  let size = y.size
  newArray(result, size + 1)
  result[0] = x
  for i in 0..<size:
    result[1+i] = y[i]

proc `&`*[T](x: TypedArray; y: T): TypedArray[T] =
  let size = x.size
  newTypedArray(result, size + 1)
  for i in 0..<size:
    result[i] = x[i]
  result[size] = y
proc `&`*[T](x: T; y: TypedArray): TypedArray[T] =
  let size = y.size
  newTypedArray(result, size + 1)
  result[0] = x
  for i in 0..<size:
    result[1+i] = y[i]

proc `&`*[T](x: PackedArray; y: T): PackedArray[T] =
  let size = x.size
  newPackedArray(result, size + 1)
  for i in 0..<size:
    result[i] = x[i]
  result[size] = y
proc `&`*[T](x: T; y: PackedArray): PackedArray[T] =
  let size = y.size
  newPackedArray(result, size + 1)
  result[0] = x
  for i in 0..<size:
    result[1+i] = y[i]

template `^^`(s, i: untyped): untyped =
  (when i is BackwardsIndex: s.len - int(i) else: int(i))
template spliceImpl(s, a, L, b: typed): untyped =
  # make room for additional elements or cut:
  var shift = b.len - max(0,L)  # ignore negative slice size
  var newLen = s.len + shift
  if shift > 0:
    # enlarge:
    setLen(s, newLen)
    for i in countdown(newLen-1, a+b.len): s[i] = s[i-shift]
  else:
    for i in countup(a+b.len, newLen-1): s[i] = s[i-shift]
    # for i in countup(a+b.len, newLen-1): s.set(i, s.get(i-shift))
    # cut down:
    setLen(s, newLen)
  # fill the hole:
  for i in 0 ..< b.len: s[a+i] = b[i]
  # for i in 1 ..< b.len: s.set(a+i, b.get(i))

proc `[]=`*[U, V: Ordinal](s: var Array; x: HSlice[U, V]; b: Array) =
  let a = s ^^ x.a
  let L = (s ^^ x.b) - a + 1
  if L == b.len:
    for i in 0 ..< L: s[i+a] = b[i]
  else:
    spliceImpl(s, a, L, b)

proc `[]=`*[T; U, V: Ordinal](s: var TypedArray[T]; x: HSlice[U, V]; b: TypedArray[T]) =
  let a = s ^^ x.a
  let L = (s ^^ x.b) - a + 1
  if L == b.len:
    for i in 0 ..< L: s[i+a] = b[i]
  else:
    spliceImpl(s, a, L, b)

proc `[]=`*[T; U, V: Ordinal](s: var PackedArray[T]; x: HSlice[U, V]; b: PackedArray[T]) =
  let a = s ^^ x.a
  let L = (s ^^ x.b) - a + 1
  if L == b.len:
    for i in 0 ..< L: s[i+a] = b[i]
  else:
    spliceImpl(s, a, L, b)

# Backward compatibility
# ======================

template gdArray*(args: varargs[untyped]): untyped {.deprecated: "use newArray instead".} = unpackVarargs(newArray, args)
template packedByteArray*(args: varargs[untyped]): untyped {.deprecated: "use newPackedByteArray instead".} = unpackVarargs(newPackedByteArray, args)
template packedColorArray*(args: varargs[untyped]): untyped {.deprecated: "use newPackedColorArray instead".} = unpackVarargs(newPackedColorArray, args)
template packedStringArray*(args: varargs[untyped]): untyped {.deprecated: "use newPackedStringArray instead".} = unpackVarargs(newPackedStringArray, args)
template packedInt32Array*(args: varargs[untyped]): untyped {.deprecated: "use newPackedInt32Array instead".} = unpackVarargs(newPackedInt32Array, args)
template packedInt64Array*(args: varargs[untyped]): untyped {.deprecated: "use newPackedInt64Array instead".} = unpackVarargs(newPackedInt64Array, args)
template packedFloat32Array*(args: varargs[untyped]): untyped {.deprecated: "use newPackedFloat32Array instead".} = unpackVarargs(newPackedFloat32Array, args)
template packedFloat64Array*(args: varargs[untyped]): untyped {.deprecated: "use newPackedFloat64Array instead".} = unpackVarargs(newPackedFloat64Array, args)
template packedVector2Array*(args: varargs[untyped]): untyped {.deprecated: "use newPackedVector2Array instead".} = unpackVarargs(newPackedVector2Array, args)
template packedVector3Array*(args: varargs[untyped]): untyped {.deprecated: "use newPackedVector3Array instead".} = unpackVarargs(newPackedVector3Array, args)
template packedVector4Array*(args: varargs[untyped]): untyped {.deprecated: "use newPackedVector4Array instead".} = unpackVarargs(newPackedVector4Array, args)

template toSeq*[T](arr: PackedArray[T]): seq[T] {.deprecated: "use `@` instead".} = @arr
