import gdext
import testutils
import std/unicode

runtime: suite "Array":
  test "construct":
    var arr = gdarray(10)
    check not arr.isTyped
    check arr.len == 10
    for i, val in arr:
      check val == variant()
  test "mutable iter":
    var arr = gdarray(10)
    for i, val in arr.mpairs:
      val = variant(i)
    for i, val in arr:
      check val.get(int) == i

runtime: suite "TypedArray":
  test "construct":
    var arr = typedArray[String](10)
    check arr.isTyped
    check cast[VariantType](arr.getTypedBuiltin) == VariantTypeString
    check arr.len == 10
    for i, val in arr.Array:
      check val.getType == VariantTypeString
      check val.get(String).length == 0
    for i, val in arr:
      check val.length == 0
  test "mutable iter":
    var arr = typedArray[String](10)
    for i, val in arr.mpairs:
      val = variant($i)
    for i, val in arr:
      check $val == $i

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

  test "mutable iteration":
    for b in bytes.mitems:
      b = 255
      check b == 255

    for i, b in bytes.mpairs:
      b = byte i
      check b == byte i

  test "immutable iteration":
    for i, b in bytes:
      check b == byte i

    var i: int
    for b in bytes:
      check b == byte i
      inc i

runtime: suite "String":
  test "to nim-string":
    let gdstr: String = "String"
    check $gdstr == "String"

  test "Variable-width encoding":
    let ja_raw: string = "これは日本語です。"
    let en_raw: string = "This is English."
    let ja: String = ja_raw
    let en: String = en_raw
    for (str, Str) in [(ja_raw, ja), (en_raw, en)]:
      check str == $Str
      for i, rune in str.toRunes:
        check rune == Str[i]
