import gdext/gdinterface/native
import gdext/core/gdtypedarray
import gdext/core/builtinindex
import gdext/core/gdclass
import gdext/core/typeshift
import gdext/gen/[builtinclasses]

import std/sequtils

{.push, inline.}
proc setLen*(arr: var Array; newlen: int) =
  discard arr.resize(newlen)
proc setLen*(arr: var TypedArray; newlen: int) =
  arr.Array.setlen(newlen)
proc len*(arr: Array): int = arr.size
proc len*(arr: TypedArray): int = arr.Array.len

proc setLen*(arr: var PackedArray; newlen: int) =
  discard arr.resize(newlen)
proc len*(arr: PackedArray): int = arr.size
{.pop.}

iterator items*(arr: Array): Variant =
  for i in 0..<arr.len: yield arr[i]
iterator pairs*(arr: Array): (int, Variant) =
  for i in 0..<arr.len: yield (int i, arr[i])

iterator items*[T](arr: PackedArray[T]): T =
  for i in 0..<arr.len: yield arr[i]
iterator pairs*[T](arr: PackedArray[T]): (int, T) =
  for i in 0..<arr.len: yield (int i, arr[i])

iterator mitems*(arr: var Array): var Variant =
  for i in 0..<arr.len: yield arr[i]
iterator mpairs*(arr: var Array): (int, var Variant) =
  for i in 0..<arr.len: yield (int i, arr[i])

iterator mitems*[T](arr: var PackedArray[T]): var T =
  for i in 0..<arr.len: yield arr[i]
iterator mpairs*[T](arr: var PackedArray[T]): (int, var T) =
  for i in 0..<arr.len: yield (int i, arr[i])

proc typedArray*[T: SomeVariant](arr: Array): TypedArray[T] =
  when T is SomeBuiltins:
    TypedArray[T] gdarray(arr, Int T.variantType, stringName(), variant())
  elif T is SomeClass:
    TypedArray[T] gdarray(arr, Int VariantTypeObject, className T, variant())

proc typedArray*[T: SomeVariant](len: Natural = 0): TypedArray[T] =
  when T is SomeBuiltins:
    result = TypedArray[T] gdarray(gdarray(), Int T.variantType, stringName(), variant())
  elif T is SomeClass:
    result = TypedArray[T] gdarray(gdarray(), Int VariantTypeObject, className T, variant())

  result.setLen len

proc toSeq*[T](arr: PackedArray[T]): seq[T] =
  arr.dataUnsafe.toOpenArray(0, arr.size-1).toSeq