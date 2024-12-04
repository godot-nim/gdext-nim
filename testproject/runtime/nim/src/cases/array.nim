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

suite "PackedArray":
  test "to seq":
    var bytes: PackedByteArray = packedByteArray()
    discard bytes.resize(8)
    for i in 0..<8:
      bytes[i] = byte i
    let s: seq[byte] = bytes.toSeq
    check s == @[byte 0, 1, 2, 3, 4, 5, 6, 7]