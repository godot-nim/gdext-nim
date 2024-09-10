import gdext/core/builtinindex
import gdext/core/gdclass

type SomeVariant* = concept t
  t is (SomeClass or SomeBuiltins)

type TypedArray*[T: SomeVariant] = distinct Array
