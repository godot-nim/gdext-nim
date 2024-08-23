import gdextcore/dirty/gdextensioninterface
import gdextcore/gdtypedarray
import gdextcore/builtinindex
import gdextcore/gdclass
import gdextcore/gdvariant
import gdextcore/typeshift
import gdextgen/builtinclasses

export gdtypedarray

{.push, inline.}
proc setLen*(arr: var Array; newlen: Natural) =
  discard arr.resize(newlen)
proc setLen*(arr: var TypedArray; newlen: Natural) =
  arr.Array.setlen(newlen)
proc len*(arr: Array): Natural = arr.size
proc len*(arr: TypedArray): Natural = arr.Array.len
{.pop.}

iterator items*(arr: Array): Variant =
  for i in 0..<arr.len: yield arr[i]

iterator pairs*(arr: Array): (Natural, Variant) =
  for i in 0..<arr.len: yield (Natural i, arr[i])


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