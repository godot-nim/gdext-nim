## Array
## =====
##
## A standard collection of Variants provided by Godot that holds values of any type whose conversion to Variant is supported. Create with `gdarray()`.
##
## TypedArray\[SomeVariant\]
## =========================
##
## Array that to be statically typed. Internally, it is the same as Array since that uses Variant for the element type, but the type is statically checked. (Attempting to add a `Texture2D` to a `TypedArray[Node]` will result in a compile error.)
##
## A good alternative if you want to use Array's API under a static type system.
##
## Create with `typedArray[T]()`.
##
## PackedArray
## ===========
##
## A primitive dynamic array provided by Godot. Create with `packedByteArray()`, and so on.

import gdext/private/gdinterface
import gdext/private/staticevents
import gdext/private/typeshift
import gdext/builtinindex
import gdext/stringtools
import gdext/varianttools

import std/sequtils

proc packedByteArray*(): PackedByteArray = (discard)
proc packedColorArray*(): PackedColorArray = (discard)
proc packedStringArray*(): PackedStringArray = (discard)
proc packedInt32Array*(): PackedInt32Array = (discard)
proc packedInt64Array*(): PackedInt64Array = (discard)
proc packedFloat32Array*(): PackedFloat32Array = (discard)
proc packedFloat64Array*(): PackedFloat64Array = (discard)
proc packedVector2Array*(): PackedVector2Array = (discard)
proc packedVector3Array*(): PackedVector3Array = (discard)
proc packedVector4Array*(): PackedVector4Array = (discard)

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

# Array
# =====

proc gdarray*(len: Natural): Array =
  result = gdarray()
  discard result.resize(len)

proc setLen*(arr: Array; newlen: int) =
  discard arr.resize(newlen)
proc len*(arr: Array): int = arr.size

iterator items*(arr: Array): Variant =
  for i in 0..<arr.len: yield arr[i]
iterator pairs*(arr: Array): (int, Variant) =
  for i in 0..<arr.len: yield (int i, arr[i])

iterator mitems*(arr: Array): var Variant =
  for i in 0..<arr.len: yield arr[i]
iterator mpairs*(arr: Array): (int, var Variant) =
  for i in 0..<arr.len: yield (int i, arr[i])

proc contains*[T: SomeProperty](arr: Array; value: T): bool = arr.find(variant value)

# TypedArray
# ==========

proc typedArray*[T](arr: Array): TypedArray[T] =
  TypedArray[T] gdarray(arr, Int T.variantType, stringName(), variant())

proc typedArray*[T](): TypedArray[T] =
  typedArray[T](gdarray())

proc typedArray*[T](len: Natural): TypedArray[T] =
  result = typedArray[T]()
  discard result.Array.resize(len)

iterator items*[T](arr: TypedArray[T]): T =
  for i in 0..<arr.len: yield arr[i].get(T)
iterator pairs*[T](arr: TypedArray[T]): (int, T) =
  for i in 0..<arr.len: yield (int i, arr[i])

iterator mitems*[T](arr: TypedArray[T]): var T =
  when T is Object or T is GdRef:
    {.error: "mutable items for " & $T & " is unavailable; use items instead.".}
  for v in arr.Array.mitems: yield v.getAddr(T)[]
iterator mpairs*[T](arr: TypedArray[T]): (int, var T) =
  when T is Object or T is GdRef:
    {.error: "mutable pairs for " & $T & " is unavailable; use pairs instead.".}
  for i, v in arr.Array.mpairs: yield (i, v.getAddr(T)[])

proc `[]`*[T](arr: TypedArray[T]; i: int): T =
  arr.Array[i].get(T)
proc `[]=`*[T](arr: TypedArray[T]; i: int; value: T) =
  arr.Array[i] = variant(value)

proc get*[T](self: TypedArray[T]; index: Int): T =
  self.Array.get(index)
proc set*[T](self: TypedArray[T]; index: Int; value: T): void =
  self.Array.set(index, variant value)
proc pushBack*[T](self: TypedArray[T]; value: T): void =
  self.Array.pushBack(variant value)
proc pushFront*[T](self: TypedArray[T]; value: T): void =
  self.Array.pushFront(variant value)
proc append*[T](self: TypedArray[T]; value: T): void =
  self.Array.append(variant value)
proc insert*[T](self: TypedArray[T]; position: Int; value: T): Int =
  self.Array.insert(position, variant value)
proc fill*[T](self: TypedArray[T]; value: T): void =
  self.Array.fill(variant value)
proc erase*[T](self: TypedArray[T]; value: T): void =
  self.Array.erase(variant value)
proc front*[T](self: TypedArray[T]): T =
  self.Array.front().get(T)
proc back*[T](self: TypedArray[T]): T =
  self.Array.back().get(T)
proc pickRandom*[T](self: TypedArray[T]): T =
  self.Array.pickRandom().get(T)
proc find*[T](self: TypedArray[T]; what: T; `from`: Int = 0): Int =
  self.Array.find(variant what, `from`)
# proc findCustom*[T](self: TypedArray[T]; `method`: Callable; `from`: Int = 0): Int =
proc rfind*[T](self: TypedArray[T]; what: T; `from`: Int = -1): Int =
  self.Array.rFind(variant what, `from`)
# proc rfindCustom*[T](self: TypedArray[T]; `method`: Callable; `from`: Int = -1): Int =
proc count*[T](self: TypedArray[T]; value: T): Int =
  self.Array.count(variant value)
proc has*[T](self: TypedArray[T]; value: T): bool =
  self.Array.has(variant value)
proc popBack*[T](self: TypedArray[T]): T =
  self.Array.popBack().get(T)
proc popFront*[T](self: TypedArray[T]): T =
  self.Array.popFront().get(T)
proc popAt*[T](self: TypedArray[T]; position: Int): T =
  self.Array.popAt(position).get(T)
# proc sortCustom*[T](self: TypedArray[T]; `func`: Callable): void =
proc bsearch*[T](self: TypedArray[T]; value: T; before: bool = true): Int =
  self.Array.bsearch(variant value, before)
proc bsearchCustom*[T](self: TypedArray[T]; value: T; `func`: Callable; before: bool = true): Int =
  self.Array.bsearchCustom(variant value, `func`, before)
proc duplicate*[T](self: TypedArray[T]; deep: bool = false): TypedArray[T] =
  typedArray[T](self.Array.duplicate())
proc slice*[T](self: TypedArray[T]; begin: Int; `end`: Int = 2147483647; step: Int = 1; deep: bool = false): TypedArray[T] =
  typedArray[T](self.Array.slice(begin, `end`, step, deep))
proc filter*[T](self: TypedArray[T]; `method`: Callable): TypedArray[T] =
  typedArray[T](self.Array.filter(`method`))
# proc map*[T](self: TypedArray[T]; `method`: Callable): Array =
# proc reduce*[T](self: TypedArray[T]; `method`: Callable; accum: T = default(Variant)): Variant =
# proc any*[T](self: TypedArray[T]; `method`: Callable): bool =
# proc all*[T](self: TypedArray[T]; `method`: Callable): bool =
proc max*[T](self: TypedArray[T]): T =
  self.Array.max().get(T)
proc min*[T](self: TypedArray[T]): T =
  self.Array.min().get(T)

# PackedArray
# ===========

proc setLen*(arr: PackedArray; newlen: int) =
  discard arr.resize(newlen)
proc len*(arr: PackedArray): int = arr.size

iterator items*[T](arr: PackedArray[T]): T =
  for i in 0..<arr.len: yield arr[i]
iterator pairs*[T](arr: PackedArray[T]): (int, T) =
  for i in 0..<arr.len: yield (int i, arr[i])

iterator mitems*[T](arr: PackedArray[T]): var T =
  for i in 0..<arr.len: yield arr[i]
iterator mpairs*[T](arr: PackedArray[T]): (int, var T) =
  for i in 0..<arr.len: yield (int i, arr[i])

proc `[]`*[T](self: PackedArray[T]; index: int): var T = self.data_unsafe[index]
proc `[]=`*[T](self: PackedArray[T]; index: int; value: T) = self.data_unsafe[index] = value

template toOpenArray*[T](arr: PackedArray[T]): openArray[T] =
  arr.dataUnsafe.toOpenArray(0, arr.size-1)
proc toSeq*[T](arr: PackedArray[T]): seq[T] =
  arr.toOpenArray.toSeq

proc contains*[T](arr: PackedArray[T]; item: T): bool =
  arr.toOpenArray.contains item
