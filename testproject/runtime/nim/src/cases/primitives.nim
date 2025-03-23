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
  test "subscript":
    var arr = gdarray(10)
    for i in 0..<arr.len:
      check arr[i] == variant()
    for i in 0..<arr.len:
      arr[i] = variant i
    for i in 0..<arr.len:
      check arr[i].get(int) == i

runtime: suite "TypedArray":
  test "construct":
    var arr = typedArray[String](10)
    check arr.isTyped
    check cast[VariantType](arr.getTypedBuiltin) == VariantTypeString
    check arr.len == 10
    for i, val in arr:
      check val.length == 0
  test "mutable iter":
    var arr = typedArray[String](10)
    for i, val in arr.mpairs:
      val = variant($i)
    for i, val in arr:
      check $val == $i
  test "subscript":
    var arr = typedArray[String](10)
    for i in 0..<arr.len:
      check arr[i] == gdstring""
    for i in 0..<arr.len:
      arr[i] = gdstring $i
    for i in 0..<arr.len:
      check arr[i] == gdstring $i

runtime: suite "PackedArray":
  var strs: PackedStringArray = packedStringArray()

  test "resizing":
    check strs.size == 0
    check strs.resize(8) == 0
    check strs.size == 8

    for i in 0..<strs.size:
      check strs[i] == gdstring()

  test "assignment":
    for i in 0..<strs.size:
      strs[i] = gdstring $i
    for i in 0..<strs.size:
      check strs[i] == gdstring $i

  test "to seq":
    let s: seq[String] = strs.toSeq
    check s == @[gdstring"0", gdstring"1", gdstring"2", gdstring"3", gdstring"4", gdstring"5", gdstring"6", gdstring"7"]

  test "mutable iteration":
    for b in strs.mitems:
      b = gdstring "Hello, world!"
      check b == gdstring "Hello, world!"

    for i, b in strs.mpairs:
      b = gdstring $i
      check b == gdstring $i

  test "immutable iteration":
    for i, b in strs:
      check b == gdstring $i

    var i: int
    for b in strs:
      check b == gdstring $i
      inc i

  test "contains(PackedInt32Array)":
    var arr = packedInt32Array()
    discard arr.resize(10)
    for i, v in arr.mpairs:
      v = int32 i
    check arr.contains 9
    check 1 in arr
    check 11 notin arr

  test "contains(PackedStringArray)":
    var arr = packedStringArray()
    discard arr.resize(10)
    for i, v in arr.mpairs:
      v = gdstring $i
    check arr.contains "9"
    check "1" in arr
    check "hello" notin arr


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
