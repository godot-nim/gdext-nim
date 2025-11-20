import std/importutils
import gdext/private/native
import gdext/private/propertyinfo
import gdext/builtinindex

{.push, inline.}

proc newArrayInternal*(): pointer =
  typeNew[VARIANT_TYPE_ARRAY](addr result, nil)
proc newTypedArrayInternal*(typ: VariantType; className: pointer): pointer =
  result = newArrayInternal()
  var variant: Variant
  interfaceArraySetTyped(addr result, typ, className, addr variant)

proc newDictionaryInternal*(): pointer =
  typeNew[VARIANT_TYPE_DICTIONARY](addr result, nil)

proc nilCheck*(self: Array) =
  privateAccess Array
  if unlikely(cast[pointer](self) == nil):
    cast[ptr Array](addr self)[].cowdata = newArrayInternal()

proc nilCheck*[T](self: TypedArray[T]) =
  privateAccess Array
  when compiles(T.className):
    if unlikely(cast[pointer](self) == nil):
      cast[ptr Array](addr self)[].cowdata = newTypedArrayInternal(T.variantType, addr className(T))

proc nilCheck*(self: Dictionary) =
  privateAccess Dictionary
  if unlikely(cast[pointer](self) == nil):
    cast[ptr Dictionary](addr self)[].cowdata = newDictionaryInternal()
