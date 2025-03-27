import gdext
import testutils
import std/unicode

runtime: suite "Array":
  test "construct":
    var arr = newArray(10)
    check not arr.isTyped
    check arr.len == 10
    for i, val in arr:
      check val == variant()
  test "mutable iter":
    var arr = newArray(10)
    for i, val in arr.mpairs:
      val = variant(i)
    for i, val in arr:
      check val.get(int) == i
  test "subscript":
    var arr = newArray(10)
    for i in 0..<arr.len:
      check arr[i] == variant()
    for i in 0..<arr.len:
      arr[i] = variant i
    for i in 0..<arr.len:
      check arr[i].get(int) == i

runtime: suite "TypedArray":
  test "construct":
    var arr = newTypedArray[String](10)
    check arr.isTyped
    check cast[VariantType](arr.getTypedBuiltin) == VariantTypeString
    check arr.len == 10
    for i, val in arr:
      check val.length == 0
  test "mutable iter":
    var arr = newTypedArray[String](10)
    for i, val in arr.mpairs:
      val = $i
    for i, val in arr:
      check $val == $i

    var arr2 = newTypedArray[Object](10)
    check not compiles(
      for i, val in arr2.mpairs: discard
    )

  test "subscript":
    var arr = newTypedArray[String](10)
    for i in 0..<arr.len:
      check arr[i] == newGdString""
    for i in 0..<arr.len:
      arr[i] = newGdString $i
    for i in 0..<arr.len:
      check arr[i] == newGdString $i
  test "typed functions":
    var arr = newTypedArray[String](2)
    arr.fill "Hello, "
    arr.pushBack "world!"
    check $arr.popFront == "Hello, "
    check $arr[0] == "Hello, "
    check $arr[1] == "world!"


runtime: suite "newPackedArray":
  var strs: PackedStringArray = newPackedStringArray()

  test "resizing":
    check strs.size == 0
    check strs.resize(8) == 0
    check strs.size == 8

    for i in 0..<strs.size:
      check strs[i] == newGdString()

  test "assignment":
    for i in 0..<strs.size:
      strs[i] = newGdString $i
    for i in 0..<strs.size:
      check strs[i] == newGdString $i

  test "to seq":
    let s: seq[String] = strs.toSeq
    check s == @[newGdString"0", newGdString"1", newGdString"2", newGdString"3", newGdString"4", newGdString"5", newGdString"6", newGdString"7"]

  test "mutable iteration":
    for b in strs.mitems:
      b = newGdString "Hello, world!"
      check b == newGdString "Hello, world!"

    for i, b in strs.mpairs:
      b = newGdString $i
      check b == newGdString $i

  test "immutable iteration":
    for i, b in strs:
      check b == newGdString $i

    var i: int
    for b in strs:
      check b == newGdString $i
      inc i

  test "contains(newPackedInt32Array)":
    var arr = newPackedInt32Array()
    discard arr.resize(10)
    for i, v in arr.mpairs:
      v = int32 i
    check arr.contains 9
    check 1 in arr
    check 11 notin arr

  test "contains(newPackedStringArray)":
    var arr = newPackedStringArray()
    discard arr.resize(10)
    for i, v in arr.mpairs:
      v = newGdString $i
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
