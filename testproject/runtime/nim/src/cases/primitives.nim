import gdext
import testutils
import std/unittest
unittest.disableParamFiltering()

runtime: suite "TypedArray":
  test "construct":
    var arr = typedArray[String](10)
    check arr.isTyped
    check cast[VariantType](arr.getTypedBuiltin) == VariantTypeString
    check arr.len == 10
    for i, val in arr:
      check val.getType == VariantTypeString
      check ($val.get String).len == 0

runtime: suite "PackedArray":
  var bytes: PackedByteArray = packedByteArray()

  test "resizing":
    check bytes.size == 0
    check bytes.resize(8) == 0
    check bytes.size == 8

    for i in 0..<bytes.size:
      check bytes[i] == 0

  test "assignment":
    for i in 0..<bytes.size:
      bytes[i] = byte i
    for i in 0..<bytes.size:
      check bytes[i] == byte i

  test "to seq":
    let s: seq[byte] = bytes.toSeq
    check s == @[byte 0, 1, 2, 3, 4, 5, 6, 7]

runtime: suite "String":
  test "to nim-string":
    let gdstr: String = "String"
    check $gdstr == "String"