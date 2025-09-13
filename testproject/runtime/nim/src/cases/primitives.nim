import gdext
import testutils
import std/[unicode, strutils, tables]
import gdext/classes/gdnode
include gdext/gen/variantsizes

runtime: suite "to string":
  test "Bool":
    check $true == $variant(true)
    check $false == $variant(false)
  test "Int":
    check $3141592 == $variant(3141592)
  test "Float":
    check $Inf == $variant(Inf)
    check $3.141592 == $variant(3.141592)
  test "Color":
    check $AliceBlue == $variant(AliceBlue)
  test "AABB":
    check $AABB() == $variant(AABB())
  test "Basis":
    check $Basis() == $variant(Basis())
  test "Plane":
    check $Plane() == $variant(Plane())
    let plane1 = plane(vector3(0, 0, 1), 1.5)
    check $plane1 == $variant(plane1)
    let plane2 = plane(vector3(0, 0, 1), 1000000.12345)
    check $plane2 == $variant(plane2)
  test "Projection":
    check $Projection() == $variant(Projection())
  test "Quaternion":
    check $Quaternion() == $variant(Quaternion())
  test "Rect2":
    check $Rect2() == $variant(Rect2())
  test "Rect2i":
    check $Rect2i() == $variant(Rect2i())
  test "Transform2D":
    check $Transform2D() == $variant(Transform2D())
  test "Transform3D":
    check $Transform3D() == $variant(Transform3D())
  test "Vector2":
    check $vector2() == $variant(vector2())
    check $vector2(PI, Inf) == $variant(vector2(PI, Inf))
  test "Vector2i":
    check $vector2i() == $variant(vector2i())
  test "Vector3":
    check $vector3() == $variant(vector3())
  test "Vector3i":
    check $vector3i() == $variant(vector3i())
  test "Vector4":
    check $vector4() == $variant(vector4())
  test "Vector4i":
    check $vector4i() == $variant(vector4i())
  test "RID":
    check $rid() == $variant(rid())
  test "String":
    check $newGdString("Hello, world!") == $variant(newGdString("Hello, world!"))
  test "StringName":
    check $newStringName("Object") == $variant(newStringName("Object"))
  test "NodePath":
    check $newNodePath("path/to/somewhere") == $variant(newNodePath("path/to/somewhere"))
  test "Array":
    var arr = newArray(5)
    for i in 0..<arr.len:
      arr[i] = variant i
    check $arr == $variant(arr)
    check ($arr).startsWith "["
  test "TypedArray":
    var arr = newTypedArray[int](5)
    for i in 0..<arr.len:
      arr[i] = i
    check $arr == $variant(arr)
    check ($arr).startsWith "["
  test "PackedArray":
    var arr = newPackedInt64Array()
    arr.setLen(5)
    for i in 0..<arr.len:
      arr[i] = i
    check $arr == $variant(arr)
    check ($arr).startsWith "["
  test "Dictionary":
    var dict = newDictionary()
    for i, s in ["a", "b", "c"]:
      dict[variant s] = variant i
    check $dict == $variant(dict)
    check ($dict).startsWith "{"
  test "Object":
    var obj = instantiate Object
    check $obj == $variant(obj)
    destroy obj
    var nilobj: Object
    check $nilobj == $variant(nilobj)
  test "RefCounted":
    var refc = instantiate RefCounted
    check $refc == $variant(refc)
    check $refc[] == $variant(refc[])
    var nilrefc: GdRef[RefCounted]
    check $nilrefc == $variant(nilrefc)
  test "Node":
    var node = instantiate(Node, "MyNode")
    check $node == $variant(node)
    destroy node
    var nilnode: Node
    check $nilnode == $variant(nilnode)

runtime: suite "size":
  test "bool":
    check sizeof(bool) == boolSize
    check sizeof(Bool) == boolSize
  test "int":
    check sizeof(Int) == intSize
  test "float":
    check sizeof(Float) == floatSize
  test "String":
    check sizeof(String) == StringSize
  test "Vector2":
    check sizeof(Vector2) == Vector2Size
  test "Vector2i":
    check sizeof(Vector2i) == Vector2iSize
  test "Rect2":
    check sizeof(Rect2) == Rect2Size
  test "Rect2i":
    check sizeof(Rect2i) == Rect2iSize
  test "Vector3":
    check sizeof(Vector3) == Vector3Size
  test "Vector3i":
    check sizeof(Vector3i) == Vector3iSize
  test "Transform2D":
    check sizeof(Transform2D) == Transform2DSize
  test "Vector4":
    check sizeof(Vector4) == Vector4Size
  test "Vector4i":
    check sizeof(Vector4i) == Vector4iSize
  test "Plane":
    check sizeof(Plane) == PlaneSize
  test "Quaternion":
    check sizeof(Quaternion) == QuaternionSize
  test "AABB":
    check sizeof(AABB) == AABBSize
  test "Basis":
    check sizeof(Basis) == BasisSize
  test "Transform3D":
    check sizeof(Transform3D) == Transform3DSize
  test "Projection":
    check sizeof(Projection) == ProjectionSize
  test "Color":
    check sizeof(Color) == ColorSize
  test "StringName":
    check sizeof(StringName) == StringNameSize
  test "NodePath":
    check sizeof(NodePath) == NodePathSize
  test "RID":
    check sizeof(RID) == RIDSize
  test "Object":
    check sizeof(Object) == ObjectSize
  test "Callable":
    check sizeof(Callable) == CallableSize
  test "Signal":
    check sizeof(Signal) == SignalSize
  test "Dictionary":
    check sizeof(Dictionary) == DictionarySize
  test "Array":
    check sizeof(Array) == ArraySize
  test "PackedByteArray":
    check sizeof(PackedByteArray) == PackedByteArraySize
  test "PackedInt32Array":
    check sizeof(PackedInt32Array) == PackedInt32ArraySize
  test "PackedInt64Array":
    check sizeof(PackedInt64Array) == PackedInt64ArraySize
  test "PackedFloat32Array":
    check sizeof(PackedFloat32Array) == PackedFloat32ArraySize
  test "PackedFloat64Array":
    check sizeof(PackedFloat64Array) == PackedFloat64ArraySize
  test "PackedStringArray":
    check sizeof(PackedStringArray) == PackedStringArraySize
  test "PackedVector2Array":
    check sizeof(PackedVector2Array) == PackedVector2ArraySize
  test "PackedVector3Array":
    check sizeof(PackedVector3Array) == PackedVector3ArraySize
  test "PackedColorArray":
    check sizeof(PackedColorArray) == PackedColorArraySize
  test "PackedVector4Array":
    check sizeof(PackedVector4Array) == PackedVector4ArraySize
  test "Variant":
    check sizeof(Variant) == VariantSize

runtime: suite "Array":
  test "nil access":
    var arr: Array
    let imm_arr = arr
    check arr.len == 0
    expect NilAccessDefect:
      discard imm_arr.len
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

  test "`[]`(HSlice)":
    var pi = newArray [1, 2, 3, 4]
    check pi[0..2] == newArray [1, 2, 3]

  test "`[]=`(HSlice)":
    var ps = newArray [String "a","b","c","d","e","f","g","h"]
    ps[1 .. ^2] = newArray [String "x","y","z"]
    check ps == newArray [String "a","x","y","z","h"]

    var pb = newArray [byte 1, 2, 3, 4, 5, 6, 7, 8]
    pb[1 .. ^2] = newArray [byte 24, 25, 26]
    check pb == newArray [byte 1, 24, 25, 26, 8]

  test "subscript(out of bounds)":
    var arr = newArray(10)
    expect IndexDefect:
      discard arr[10]

runtime: suite "TypedArray":
  test "nil access":
    var arr: TypedArray[String]
    let imm_arr = arr
    check arr.len == 0
    expect NilAccessDefect:
      discard imm_arr.len
  test "construct":
    var arr = newTypedArray[String](10)
    check arr.isTyped
    check cast[VariantType](arr.getTypedBuiltin) == VariantTypeString
    check arr.len == 10
    for i, val in arr:
      check val.length == 0

  test "iter":
    let res = ["a", "b", "c"]
    let arr = newTypedArray [newGdString"a", "b", "c"]
    for i, val in arr:
      check $val == res[i]
    block:
      var i: int
      for val in arr:
        check $val == res[i]
        inc i
 
    let res2 = [Node.instantiate(), Node.instantiate(), Node.instantiate()]
    for i, r in res2:
      r.name = res[i]
    let arr2 = newTypedArray res2
    for i, val in arr2:
      check $val.name == res[i]
    block:
      var i: int
      for val in arr2:
        check $val.name == res[i]
        inc i

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

  test "backward subscript":
    var obj = instantiate Object
    var po = newTypedArray [obj]
    var pi = newTypedArray [1]
    check po[0] != nil
    check po[^1] != nil
    check pi[0] == 1
    check pi[^1] == 1
    destroy obj

  test "typed functions":
    var arr = newTypedArray[String](2)
    arr.fill "Hello, "
    arr.pushBack "world!"
    check $arr.popFront == "Hello, "
    check $arr[0] == "Hello, "
    check $arr[1] == "world!"

  test "`[]`(HSlice)":
    var pi = newTypedArray [1, 2, 3, 4]
    check pi[0..2] == newTypedArray [1, 2, 3]

  test "`[]=`(HSlice)":
    var ps = newTypedArray [String "a","b","c","d","e","f","g","h"]
    ps[1 .. ^2] = newTypedArray [String "x","y","z"]
    check ps == newTypedArray [String "a","x","y","z","h"]

    var pb = newTypedArray [byte 1, 2, 3, 4, 5, 6, 7, 8]
    pb[1 .. ^2] = newTypedArray [byte 24, 25, 26]
    check pb == newTypedArray [byte 1, 24, 25, 26, 8]

  test "subscript(out of bounds)":
    var arr = newTypedArray[String](10)
    expect IndexDefect:
      discard arr[10]

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
    let s: seq[String] = @strs
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

  test "`[]`(HSlice)":
    var pi = newPackedArray [int64 1, 2, 3, 4]
    check pi[0..2] == newPackedArray [int64 1, 2, 3]

  test "`[]=`(HSlice)":
    var ps = newPackedArray [String "a","b","c","d","e","f","g","h"]
    ps[1 .. ^2] = newPackedArray [String "x","y","z"]
    check ps == newPackedArray [String "a","x","y","z","h"]

    var pb = newPackedArray [byte 1, 2, 3, 4, 5, 6, 7, 8]
    pb[1 .. ^2] = newPackedArray [byte 24, 25, 26]
    check pb == newPackedArray [byte 1, 24, 25, 26, 8]

  test "subscript(out of bounds)":
    var arr = newPackedStringArray(10)
    expect IndexDefect:
      discard arr[10]

runtime: suite "Dictionary":
  let keys = [
    "int",
    "float",
    "string",
    "Object",
    ]
  let values = [
    variant(1),
    variant(2.0),
    variant("three"),
    variant(instantiate Object),
    ]
  let data = {
    keys[0]: values[0],
    keys[1]: values[1],
    keys[2]: values[2],
    keys[3]: values[3],
    }
  test "nil access":
    var dict: Dictionary
    let imm_dict = dict
    check dict.size == 0
    expect NilAccessDefect:
      discard imm_dict.size

  test "construct from Table":
    var tab = data.toTable
    var dict = newDictionary(tab)
    check not dict.isTyped
    check dict.size == 4
    for (key, val) in data:
      check dict[variant key] == val

  test "construct from TableRef":
    var tab = data.newTable
    var dict = newDictionary(tab)
    check not dict.isTyped
    check dict.size == 4
    for (key, val) in data:
      check dict[variant key] == val

  test "construct from openArray":
    var dict = newDictionary(data)
    check not dict.isTyped
    check dict.size == 4
    for (key, val) in data:
      check dict[variant key] == val

  test "keys":
    var dict = newDictionary(data)
    for key in dict.keys:
      check key as string in keys

  test "values":
    var dict = newDictionary(data)
    for value in dict.values:
      check value in values

  test "pairs":
    var dict = newDictionary(data)
    for key, value in dict:
      check values[keys.find(key)] == value

  test "mvalues":
    var dict = newDictionary(data)
    for value in dict.mvalues:
      value = variant Inf
    for value in dict.values:
      check value as float == Inf

  test "mpairs":
    var dict = newDictionary(data)
    for key, value in dict.mpairs:
      value = key
    for key, value in dict:
      check value == key

  test "[]":
    var dict = newDictionary(data)
    check dict["int"] of int and dict["int"] as int == 1
    check dict["float"] of float and dict["float"] as float == 2.0
    check dict["string"] of string and dict["string"] as string == "three"
    check dict["Object"] of Object and dict["Object"] as Object == values[3]

  test "[]=":
    var dict = newDictionary(data)
    dict["int"] = 10
    check dict["int"] as int == 10

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
