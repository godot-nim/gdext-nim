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

proc nilCheck*[T](self: Array[T]) =
  privateAccess Array
  if unlikely(cast[pointer](self) == nil):
    when T is Variant:
      cast[ptr Array[T]](addr self)[].cowdata = newArrayInternal()
    else:
      cast[ptr Array[T]](addr self)[].cowdata = newTypedArrayInternal(T.variantType, addr className(T))

proc nilCheck*(self: Dictionary) =
  privateAccess Dictionary
  if unlikely(cast[pointer](self) == nil):
    cast[ptr Dictionary](addr self)[].cowdata = newDictionaryInternal()
