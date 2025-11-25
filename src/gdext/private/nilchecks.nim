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
proc newTypedDictionaryInternal*(atyp: VariantType; aclassName: pointer; btyp: VariantType, bclassname: pointer): pointer =
  result = newDictionaryInternal()
  var variant: Variant
  interfaceDictionarySetTyped(addr result, atyp, aclassName, addr variant, btyp, bclassName, addr variant)

proc nilCheck*[T](self: Array[T]) =
  privateAccess Array
  if unlikely(cast[pointer](self) == nil):
    when T is Variant:
      cast[ptr Array[T]](addr self)[].cowdata = newArrayInternal()
    else:
      cast[ptr Array[T]](addr self)[].cowdata = newTypedArrayInternal(T.variantType, addr className(T))

proc nilCheck*[A, B](self: Dictionary[A, B]) =
  privateAccess Dictionary
  if unlikely(cast[pointer](self) == nil):
    when A is Variant and B is Variant:
      cast[ptr Dictionary[A, B]](addr self)[].cowdata = newDictionaryInternal()
    else:
      cast[ptr Dictionary[A, B]](addr self)[].cowdata = newTypedDictionaryInternal(A.variantType, addr className(A), B.variantType, addr className(B))
