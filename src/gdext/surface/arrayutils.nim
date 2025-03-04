import gdext/gdinterface/native
import gdext/core/gdtypedarray
import gdext/core/builtinindex
import gdext/core/typeshift
import gdext/gen/[builtinclasses]

import std/sequtils

{.push, inline.}
proc setLen*(arr: var Array; newlen: int) =
  discard arr.resize(newlen)
proc len*(arr: Array): int = arr.size

proc setLen*(arr: var PackedArray; newlen: int) =
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
  for i in 0..<arr.len: yield (int i, arr[i].get(T))

iterator items*[T](arr: PackedArray[T]): T =
  for i in 0..<arr.len: yield arr[i]
iterator pairs*[T](arr: PackedArray[T]): (int, T) =
  for i in 0..<arr.len: yield (int i, arr[i])

iterator mitems*(arr: var Array): var Variant =
  for i in 0..<arr.len: yield arr[i]
iterator mpairs*(arr: var Array): (int, var Variant) =
  for i in 0..<arr.len: yield (int i, arr[i])

iterator mitems*(arr: var TypedArray): var Variant =
  for v in arr.Array.mitems: yield v
iterator mpairs*(arr: var TypedArray): (int, var Variant) =
  for i, v in arr.Array.mpairs: yield (i, v)

iterator mitems*[T](arr: var PackedArray[T]): var T =
  for i in 0..<arr.len: yield arr[i]
iterator mpairs*[T](arr: var PackedArray[T]): (int, var T) =
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

proc toSeq*[T](arr: PackedArray[T]): seq[T] =
  arr.dataUnsafe.toOpenArray(0, arr.size-1).toSeq