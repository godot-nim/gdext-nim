import gdext
import std/unittest
unittest.disableParamFiltering()

suite "TypedArray":
  test "construct":
    var arr = typedArray[String](10)
    check arr.isTyped
    check cast[VariantType](arr.getTypedBuiltin) == VariantTypeString
    check arr.len == 10
    for i, val in arr:
      check val.variantType == VariantTypeString
      check ($val.get String).len == 0