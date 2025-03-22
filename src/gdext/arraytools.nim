import gdext/private/gdinterface
import gdext/private/staticevents
import gdext/private/typeshift
import gdext/builtinindex
import gdext/stringtools

import std/sequtils

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

{.push, inline.}
proc setLen*(arr: Array; newlen: int) =
  discard arr.resize(newlen)
proc len*(arr: Array): int = arr.size

proc setLen*(arr: PackedArray; newlen: int) =
  discard arr.resize(newlen)
proc len*(arr: PackedArray): int = arr.size
{.pop.}

iterator items*(arr: Array): Variant =
  for i in 0..<arr.len: yield arr[i]
iterator pairs*(arr: Array): (int, Variant) =
  for i in 0..<arr.len: yield (int i, arr[i])

iterator items*[T](arr: TypedArray[T]): T =
  for i in 0..<arr.len: yield arr[i].get(T)
iterator pairs*[T](arr: TypedArray[T]): (int, T) =
  for i in 0..<arr.len: yield (int i, arr[i])

iterator items*[T](arr: PackedArray[T]): T =
  for i in 0..<arr.len: yield arr[i]
iterator pairs*[T](arr: PackedArray[T]): (int, T) =
  for i in 0..<arr.len: yield (int i, arr[i])

iterator mitems*(arr: Array): var Variant =
  for i in 0..<arr.len: yield arr[i]
iterator mpairs*(arr: Array): (int, var Variant) =
  for i in 0..<arr.len: yield (int i, arr[i])

iterator mitems*(arr: TypedArray): var Variant =
  for v in arr.Array.mitems: yield v
iterator mpairs*(arr: TypedArray): (int, var Variant) =
  for i, v in arr.Array.mpairs: yield (i, v)

iterator mitems*[T](arr: PackedArray[T]): var T =
  for i in 0..<arr.len: yield arr[i]
iterator mpairs*[T](arr: PackedArray[T]): (int, var T) =
  for i in 0..<arr.len: yield (int i, arr[i])

proc gdarray*(len: Natural): Array =
  result = gdarray()
  discard result.resize(len)

proc typedArray*[T: SomeVariant](arr: Array): TypedArray[T] =
  TypedArray[T] gdarray(arr, Int T.variantType, stringName(), variant())

proc typedArray*[T: SomeVariant](): TypedArray[T] =
  typedArray[T](gdarray())

proc typedArray*[T: SomeVariant](len: Natural): TypedArray[T] =
  result = typedArray[T]()
  discard result.Array.resize(len)

proc `[]`*[T: SomeVariant](arr: TypedArray[T]; i: int): T =
  arr.Array[i].get(T)
proc `[]=`*[T: SomeVariant](arr: TypedArray[T]; i: int; value: T) =
  arr.Array[i] = variant(value)

proc toSeq*[T](arr: PackedArray[T]): seq[T] =
  arr.dataUnsafe.toOpenArray(0, arr.size-1).toSeq
