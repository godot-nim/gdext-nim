import gdext
import testutils
import std/[unicode, strutils, tables, hashes]
import gdext/classes/gdnode
include gdext/gen/variantsizes

runtime: suite "to string":
  test "Bool":
    check $true == $Variant(true)
    check $false == $Variant(false)
  test "Int":
    check $3141592 == $Variant(3141592)
  test "Float":
    check $Inf == $Variant(system.Inf)
    check $3.141592 == $Variant(3.141592)
  test "Color":
    check $AliceBlue == $Variant(AliceBlue)
  test "AABB":
    check $AABB() == $Variant(AABB())
  test "Basis":
    check $Basis() == $Variant(Basis())
  test "Plane":
    check $Plane() == $Variant(Plane())
    let plane1 = plane(vector3(0, 0, 1), 1.5)
    check $plane1 == $Variant(plane1)
    let plane2 = plane(vector3(0, 0, 1), 1000000.12345)
    check $plane2 == $Variant(plane2)
  test "Projection":
    check $Projection() == $Variant(Projection())
  test "Quaternion":
    check $Quaternion() == $Variant(Quaternion())
  test "Rect2":
    check $Rect2() == $Variant(Rect2())
  test "Rect2i":
    check $Rect2i() == $Variant(Rect2i())
  test "Transform2D":
    check $Transform2D() == $Variant(Transform2D())
  test "Transform3D":
    check $Transform3D() == $Variant(Transform3D())
  test "Vector2":
    check $vector2() == $Variant(vector2())
    check $vector2(PI, Inf) == $Variant(vector2(PI, Inf))
  test "Vector2i":
    check $vector2i() == $Variant(vector2i())
  test "Vector3":
    check $vector3() == $Variant(vector3())
  test "Vector3i":
    check $vector3i() == $Variant(vector3i())
  test "Vector4":
    check $vector4() == $Variant(vector4())
  test "Vector4i":
    check $vector4i() == $Variant(vector4i())
  test "RID":
    check $rid() == $Variant(rid())
  test "String":
    check $newGdString("Hello, world!") == $Variant(newGdString("Hello, world!"))
  test "StringName":
    check $newStringName("Object") == $Variant(newStringName("Object"))
  test "NodePath":
    check $newNodePath("path/to/somewhere") == $Variant(newNodePath("path/to/somewhere"))
  test "Array":
    var arr = newArray[Variant](5)
    for i in 0..<arr.len:
      arr[i] = i
    check $arr == $Variant(arr)
    check ($arr).startsWith "["
  test "TypedArray":
    var arr = newArray[Int](5)
    for i in 0..<arr.len:
      arr[i] = i
    check $arr == $Variant(arr)
    check ($arr).startsWith "["
  test "PackedArray":
    var arr = newPackedInt64Array()
    arr.setLen(5)
    for i in 0..<arr.len:
      arr[i] = i
    check $arr == $Variant(arr)
    check ($arr).startsWith "["
  test "Dictionary":
    var dict = newDictionary[Variant, Variant]()
    for i, s in ["a", "b", "c"]:
      dict[s] = i
    check $dict == $Variant(dict)
    check ($dict).startsWith "{"
  test "Object":
    var obj = instantiate Object
    check $obj == $Variant(obj)
    destroy obj
    var nilobj: Object
    check $nilobj == $Variant(nilobj)
  test "RefCounted":
    var refc = instantiate RefCounted
    check $refc == $Variant(refc)
    check $refc[] == $Variant(refc[])
    var nilrefc: GdRef[RefCounted]
    check $nilrefc == $Variant(nilrefc)
  test "Node":
    var node = instantiate(Node, "MyNode")
    check $node == $Variant(node)
    destroy node
    var nilnode: Node
    check $nilnode == $Variant(nilnode)

runtime: suite "size":
  test "bool":
    check sizeof(bool) == Size.bool
    check sizeof(Bool) == Size.bool
  test "int":
    check sizeof(Int) == Size.int
  test "float":
    check sizeof(Float) == Size.float
  test "String":
    check sizeof(String) == Size.String
  test "Vector2":
    check sizeof(Vector2) == Size.Vector2
  test "Vector2i":
    check sizeof(Vector2i) == Size.Vector2i
  test "Rect2":
    check sizeof(Rect2) == Size.Rect2
  test "Rect2i":
    check sizeof(Rect2i) == Size.Rect2i
  test "Vector3":
    check sizeof(Vector3) == Size.Vector3
  test "Vector3i":
    check sizeof(Vector3i) == Size.Vector3i
  test "Transform2D":
    check sizeof(Transform2D) == Size.Transform2D
  test "Vector4":
    check sizeof(Vector4) == Size.Vector4
  test "Vector4i":
    check sizeof(Vector4i) == Size.Vector4i
  test "Plane":
    check sizeof(Plane) == Size.Plane
  test "Quaternion":
    check sizeof(Quaternion) == Size.Quaternion
  test "AABB":
    check sizeof(AABB) == Size.AABB
  test "Basis":
    check sizeof(Basis) == Size.Basis
  test "Transform3D":
    check sizeof(Transform3D) == Size.Transform3D
  test "Projection":
    check sizeof(Projection) == Size.Projection
  test "Color":
    check sizeof(Color) == Size.Color
  test "StringName":
    check sizeof(StringName) == Size.StringName
  test "NodePath":
    check sizeof(NodePath) == Size.NodePath
  test "RID":
    check sizeof(RID) == Size.RID
  test "Object":
    check sizeof(Object) == Size.Object
  test "Callable":
    check sizeof(Callable) == Size.Callable
  test "Signal":
    check sizeof(Signal) == Size.Signal
  test "Dictionary":
    check sizeof(Dictionary) == Size.Dictionary
  test "Array":
    check sizeof(Array) == Size.Array
  test "PackedByteArray":
    check sizeof(PackedByteArray) == Size.PackedByteArray
  test "PackedInt32Array":
    check sizeof(PackedInt32Array) == Size.PackedInt32Array
  test "PackedInt64Array":
    check sizeof(PackedInt64Array) == Size.PackedInt64Array
  test "PackedFloat32Array":
    check sizeof(PackedFloat32Array) == Size.PackedFloat32Array
  test "PackedFloat64Array":
    check sizeof(PackedFloat64Array) == Size.PackedFloat64Array
  test "PackedStringArray":
    check sizeof(PackedStringArray) == Size.PackedStringArray
  test "PackedVector2Array":
    check sizeof(PackedVector2Array) == Size.PackedVector2Array
  test "PackedVector3Array":
    check sizeof(PackedVector3Array) == Size.PackedVector3Array
  test "PackedColorArray":
    check sizeof(PackedColorArray) == Size.PackedColorArray
  test "PackedVector4Array":
    check sizeof(PackedVector4Array) == Size.PackedVector4Array
  test "Variant":
    check sizeof(Variant) == Size.Variant

runtime: suite "Array":
  test "method definitions":
    var sa: Array[String] = newArray([String "one", "two", "three"])
    var va: Array[Variant] = newArray([Variant "one", "two", "three"])
    var ia: Array[Int] = newArray([Int 1, 2, 3])

    check ia.size is Int
    check va.size is Int

    check ia.isEmpty is bool
    check va.isEmpty is bool

    check compiles ia.clear
    check compiles va.clear

    check ia.hash is Hash
    check va.hash is Hash

    check compiles ia.assign(ia)
    check compiles va.assign(va)
    check compiles va.assign(ia)
    check not compiles ia.assign(va)
    check not compiles ia.assign(sa)

    check ia.get(Int 0) is Int
    check va.get(Int 0) is Variant

    check compiles va.set(Int 0, Int 10)
    check compiles ia.set(Int 0, Int 10)
    check compiles va.set(Int 0, Variant 10)
    check not compiles va.set(Int 0, newSeq[int]())
    check not compiles ia.set(Int 0, Variant 10)

    check compiles va.pushBack(Int 10)
    check compiles ia.pushBack(Int 10)
    check compiles va.pushBack(Variant 10)
    check not compiles va.pushBack(newSeq[int]())
    check not compiles ia.pushBack(Variant 10)

    check compiles va.pushFront(Int 10)
    check compiles ia.pushFront(Int 10)
    check compiles va.pushFront(Variant 10)
    check not compiles va.pushFront(newSeq[int]())
    check not compiles ia.pushFront(Variant 10)

    check compiles va.append(Int 10)
    check compiles ia.append(Int 10)
    check compiles va.append(Variant 10)
    check not compiles va.append(newSeq[int]())
    check not compiles ia.append(Variant 10)

    check compiles va.appendArray(va)
    check compiles va.appendArray(ia)
    check compiles ia.appendArray(ia)
    check not compiles ia.appendArray(va)
    check not compiles ia.appendArray(sa)

    check va.resize(Int 10) is Int
    check ia.resize(Int 10) is Int

    check va.insert(Int 0, Int 10) is Int
    check ia.insert(Int 0, Int 10) is Int
    check va.insert(Int 0, Variant 10) is Int
    check not compiles va.insert(Int 0, newSeq[int]())
    check not compiles ia.insert(Int 0, Variant 10)

    check compiles va.removeAt(Int 0)
    check compiles ia.removeAt(Int 0)

    check compiles va.fill(Variant 10)
    check compiles va.fill(Int 10)
    check compiles ia.fill(Int 10)
    check not compiles ia.fill(Variant 10)

    check compiles va.erase(Variant 10)
    check compiles va.erase(Int 10)
    check compiles ia.erase(Int 10)
    check compiles ia.erase(Variant 10)
    check not compiles va.erase(newSeq[int]())
    check not compiles ia.erase(newSeq[int]())

    check ia.front() is Int
    check va.front() is Variant

    check ia.back() is Int
    check va.back() is Variant

    check ia.pickRandom() is Int
    check va.pickRandom() is Variant

    check va.find(Variant 10) is Int
    check va.find(Int 10) is Int
    check ia.find(Int 10) is Int
    check ia.find(Variant 10) is Int
    check not compiles va.find(newSeq[int]())
    check not compiles ia.find(newSeq[int]())

    check va.findCustom(Callable()) is Int
    check ia.findCustom(Callable()) is Int

    check va.rfind(Variant 10) is Int
    check va.rfind(Int 10) is Int
    check ia.rfind(Int 10) is Int
    check ia.rfind(Variant 10) is Int
    check not compiles va.rfind(newSeq[int]())
    check not compiles ia.rfind(newSeq[int]())

    check va.rfindCustom(Callable()) is Int
    check ia.rfindCustom(Callable()) is Int

    check va.count(Variant 10) is Int
    check va.count(Int 10) is Int
    check ia.count(Int 10) is Int
    check ia.count(Variant 10) is Int
    check not compiles va.count(newSeq[int]())
    check not compiles ia.count(newSeq[int]())

    check va.has(Variant 10) is bool
    check va.has(Int 10) is bool
    check ia.has(Int 10) is bool
    check ia.has(Variant 10) is bool
    check not compiles va.has(newSeq[int]())
    check not compiles ia.has(newSeq[int]())

    check ia.popBack() is Int
    check va.popBack() is Variant

    check ia.popFront() is Int
    check va.popFront() is Variant

    check ia.popAt(Int 0) is Int
    check va.popAt(Int 0) is Variant

    check compiles ia.sort()
    check compiles va.sort()

    check compiles ia.sortCustom(Callable())
    check compiles va.sortCustom(Callable())

    check compiles ia.shuffle()
    check compiles va.shuffle()

    check va.bsearch(Variant 10) is Int
    check va.bsearch(Int 10) is Int
    check ia.bsearch(Int 10) is Int
    check ia.bsearch(Variant 10) is Int
    check not compiles va.bsearch(newSeq[int]())
    check not compiles ia.bsearch(newSeq[int]())

    check va.bsearchCustom(Variant 10, Callable()) is Int
    check va.bsearchCustom(Int 10, Callable()) is Int
    check ia.bsearchCustom(Int 10, Callable()) is Int
    check ia.bsearchCustom(Variant 10, Callable()) is Int
    check not compiles va.bsearchCustom(newSeq[int](), Callable())
    check not compiles ia.bsearchCustom(newSeq[int](), Callable())

    check compiles ia.reverse()
    check compiles va.reverse()

    check ia.duplicate() is Array[Int]
    check va.duplicate() is Array[Variant]

    check ia.duplicateDeep() is Array[Int]
    check va.duplicateDeep() is Array[Variant]

    check ia.slice(0, 2) is Array[Int]
    check va.slice(0, 2) is Array[Variant]

    check va.filter(Callable()) is Array[Variant]
    check ia.filter(Callable()) is Array[Int]

    check va.map(Callable()) is Array[Variant]
    check ia.map(Callable()) is Array[Int]

    check va.reduce(Callable(), Variant()) is Variant
    check ia.reduce(Callable(), Int 0) is Int

    check va.any(Callable()) is bool
    check ia.any(Callable()) is bool

    check va.all(Callable()) is bool
    check ia.all(Callable()) is bool

    check va.max() is Variant
    check ia.max() is Int

    check va.min() is Variant
    check ia.min() is Int

    check va.isTyped() is bool
    check ia.isTyped() is bool

    check va.isSameTyped(va) is bool
    check va.isSameTyped(ia) is bool
    check ia.isSameTyped(va) is bool
    check ia.isSameTyped(ia) is bool
    check ia.isSameTyped(sa) is bool

    check va.getTypedBuiltin() is Int
    check ia.getTypedBuiltin() is Int

    check va.getTypedClassName() is StringName
    check ia.getTypedClassName() is StringName

    check va.getTypedScript() is Variant
    check ia.getTypedScript() is Variant

    check compiles va.makeReadOnly()
    check compiles ia.makeReadOnly()

    check va.isReadOnly() is bool
    check ia.isReadOnly() is bool

  test "nil access":
    var arr: Array[Variant]
    let imm_arr = arr
    check arr.len == 0
    check imm_arr.len == 0
  test "construct":
    var arr = newArray[Variant](10)
    check not arr.isTyped
    check arr.len == 10
    for i, val in arr:
      check val == Variant()
  test "mutable iter":
    var arr = newArray[Variant](10)
    for i, val in arr.mpairs:
      val = i
    for i, val in arr:
      check val == i
  test "subscript":
    var arr = newArray[Variant](10)
    for i in 0..<arr.len:
      check arr[i] == Variant()
    for i in 0..<arr.len:
      arr[i] = i
    for i in 0..<arr.len:
      check arr[i] == i

  test "`[]`(HSlice)":
    var pi = newArray [Variant 1, 2, 3, 4]
    check pi[0..2] == newArray [Variant 1, 2, 3]

  test "`[]=`(HSlice)":
    var ps = newArray [Variant "a", "b", "c", "d", "e", "f", "g", "h"]
    ps[1 .. ^2] = newArray [Variant "x", "y", "z"]
    check ps == newArray [Variant "a", "x", "y", "z", "h"]

    var pb = newArray [Variant 1, 2, 3, 4, 5, 6, 7, 8]
    pb[1 .. ^2] = newArray [Variant 24, 25, 26]
    check pb == newArray [Variant 1, 24, 25, 26, 8]

  test "subscript(out of bounds)":
    var arr = newArray[Variant](10)
    expect IndexDefect:
      discard arr[10]

runtime: suite "TypedArray":
  test "nil access":
    var arr: Array[String]
    let imm_arr = arr
    check arr.len == 0
    check imm_arr.len == 0
  test "construct":
    var arr = newArray[String](10)
    check arr.isTyped
    check cast[VariantType](arr.getTypedBuiltin) == VariantTypeString
    check arr.len == 10
    for i, val in arr:
      check val.length == 0

  test "iter":
    let res = [String "a", "b", "c"]
    let arr = newArray res
    for i, val in arr:
      check val == res[i]
    block:
      var i: int
      for val in arr:
        check val == res[i]
        inc i

    let res2 = [Node.instantiate(), Node.instantiate(), Node.instantiate()]
    for i, r in res2:
      r.name = res[i]
    let arr2 = newArray res2
    for i, val in arr2:
      check val.name == res[i]
    block:
      var i: int
      for val in arr2:
        check val.name == res[i]
        inc i
    for node in res2:
      destroy node

  test "mutable iter":
    var arr = newArray[String](10)
    for i, val in arr.mpairs:
      val = $i
    for i, val in arr:
      check $val == $i

    var arr2 = newArray[Object](10)
    check not compiles(
      for i, val in arr2.mpairs: discard
    )

  test "subscript":
    var arr = newArray[String](10)
    for i in 0..<arr.len:
      check arr[i] == String""
    for i in 0..<arr.len:
      arr[i] = $i
    for i in 0..<arr.len:
      check arr[i] == String $i

  test "backward subscript":
    var obj = instantiate Object
    var po = newArray [obj]
    var pi = newArray [1]
    check po[0] != nil
    check po[^1] != nil
    check pi[0] == 1
    check pi[^1] == 1
    destroy obj

  test "typed functions":
    var arr = newArray[String](2)
    arr.fill "Hello, "
    arr.pushBack "world!"
    check $arr.popFront == "Hello, "
    check $arr[0] == "Hello, "
    check $arr[1] == "world!"

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
    var arr = newArray[String](10)
    expect IndexDefect:
      discard arr[10]

runtime: suite "newPackedArray":
  var strs: PackedStringArray = newPackedStringArray()

  test "resizing":
    check strs.size == 0
    check strs.resize(8) == 0
    check strs.size == 8

    for i in 0..<strs.size:
      check strs[i] == String""

  test "assignment":
    for i in 0..<strs.size:
      strs[i] = String $i
    for i in 0..<strs.size:
      check strs[i] == String $i

  test "to seq":
    let s: seq[String] = @strs
    check s == @[String"0", "1", "2", "3", "4", "5", "6", "7"]

  test "mutable iteration":
    for b in strs.mitems:
      b = "Hello, world!"
      check b == String"Hello, world!"

    for i, b in strs.mpairs:
      b = $i
      check b == String $i

  test "immutable iteration":
    for i, b in strs:
      check b == String $i

    var i: int
    for b in strs:
      check b == String $i
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
    Variant 1,
    2.0,
    "three",
    instantiate Object,
    ]
  let data = {
    keys[0]: values[0],
    keys[1]: values[1],
    keys[2]: values[2],
    keys[3]: values[3],
    }

  test "method definitions":
    var objflt: Dictionary[Object, Float]
    var strstn: Dictionary[String, StringName]
    var varvar: Dictionary[Variant, Variant]

    check size(varvar) is Int
    check size(objflt) is Int

    check isEmpty(varvar) is Bool
    check isEmpty(objflt) is Bool

    check compiles clear(varvar)
    check compiles clear(objflt)

    check compiles assign(objflt, objflt)
    check not compiles assign(objflt, strstn)
    check compiles assign(varvar, objflt)
    check not compiles assign(objflt, varvar)

    check compiles sort(varvar)
    check compiles sort(objflt)

    check compiles merge(objflt, objflt)
    check compiles merge(varvar, objflt)
    check not compiles merge(objflt, varvar)
    check not compiles merge(objflt, strstn)

    check merged(objflt, objflt) is Dictionary[Object, Float]
    check merged(varvar, objflt) is Dictionary[Object, Float]
    check merged(objflt, varvar) is Dictionary[Object, Float]
    check merged(objflt, strstn) is Dictionary[Variant, Variant]

    check has(strstn, String()) is Bool
    check has(strstn, Variant()) is Bool
    check has(strstn, 10) is Bool
    check has(varvar, Variant()) is Bool
    check has(varvar, 10) is Bool
    check not compiles has(varvar, newSeq[int]())

    check hasAll(strstn, Array[String]()) is Bool
    check hasAll(strstn, Array[Variant]()) is Bool
    check hasAll(strstn, Array[StringName]()) is Bool
    check hasAll(varvar, Array[Variant]()) is Bool
    check hasAll(varvar, Array[String]()) is Bool

    check findKey(strstn, Variant()) is Variant
    check findKey(strstn, StringName()) is Variant
    check findKey(strstn, 10) is Variant
    check findKey(varvar, Variant()) is Variant
    check findKey(varvar, 10) is Variant

    check erase(strstn, Variant()) is Bool
    check erase(strstn, String()) is Bool
    check erase(strstn, 10) is Bool
    check erase(varvar, Variant()) is Bool
    check erase(varvar, 10) is Bool

    check hash(strstn) is Hash
    check hash(varvar) is Hash

    check: compiles:
      var _: Array[Variant] = keys(varvar)
      var _: Array[String] = keys(strstn)

    check: compiles:
      var _: Array[Variant] = values(varvar)
      var _: Array[StringName] = values(strstn)

    check duplicate(varvar) is Dictionary[Variant, Variant]
    check duplicate(strstn) is Dictionary[String, StringName]

    check duplicateDeep(varvar) is Dictionary[Variant, Variant]
    check duplicateDeep(strstn) is Dictionary[String, StringName]

    check get(varvar, Variant(), Variant()) is Variant
    check get(varvar, 10, Variant()) is Variant
    check not compiles get(strstn, Variant())
    check get(strstn, String()) is StringName
    check not compiles get(strstn, 10)

    check getOrAdd(varvar, Variant(), Variant()) is Variant
    check getOrAdd(varvar, 10, Variant()) is Variant
    check not compiles getOrAdd(strstn, Variant())
    check getOrAdd(strstn, String()) is StringName
    check not compiles getOrAdd(strstn, 10)

    check compiles set(varvar, Variant(), Variant())
    check compiles set(varvar, 10, Variant())
    check compiles set(varvar, Variant(), 10)
    check compiles set(varvar, 10, 10)
    check compiles set(strstn, String(), StringName())
    check not compiles set(strstn, String(), 10)
    check not compiles set(strstn, 10, StringName())
    check not compiles set(strstn, 10, 10)

    check isTyped(varvar) is Bool
    check isTyped(strstn) is Bool

    check isTypedKey(varvar) is Bool
    check isTypedKey(strstn) is Bool

    check isTypedValue(varvar) is Bool
    check isTypedValue(strstn) is Bool

    check isSameTyped(varvar, varvar) is Bool
    check isSameTyped(strstn, varvar) is Bool
    check isSameTyped(varvar, strstn) is Bool
    check isSameTyped(strstn, strstn) is Bool
    check isSameTyped(strstn, objflt) is Bool

    check isSameTypedKey(varvar, varvar) is Bool
    check isSameTypedKey(strstn, varvar) is Bool
    check isSameTypedKey(varvar, strstn) is Bool
    check isSameTypedKey(strstn, strstn) is Bool
    check isSameTypedKey(strstn, objflt) is Bool

    check isSameTypedValue(varvar, varvar) is Bool
    check isSameTypedValue(strstn, varvar) is Bool
    check isSameTypedValue(varvar, strstn) is Bool
    check isSameTypedValue(strstn, strstn) is Bool
    check isSameTypedValue(strstn, objflt) is Bool

    check compiles makeReadOnly(varvar)
    check compiles makeReadOnly(strstn)

    check isReadOnly(varvar) is Bool
    check isReadOnly(strstn) is Bool

    check recursiveEqual(varvar, varvar, 0) is Bool
    check recursiveEqual(strstn, varvar, 0) is Bool
    check recursiveEqual(varvar, strstn, 0) is Bool
    check recursiveEqual(strstn, strstn, 0) is Bool
    check recursiveEqual(strstn, objflt, 0) is Bool

  test "nil access":
    var dict: Dictionary[Variant, Variant]
    let imm_dict = dict
    check dict.size == 0
    check imm_dict.size == 0

  test "construct from Table":
    var tab = data.toTable
    var dict = newDictionary(tab)
    check dict.isTyped
    check dict.size == 4
    for (key, val) in data:
      check dict[key] == val

  test "construct from TableRef":
    var tab = data.newTable
    var dict = newDictionary(tab)
    check dict.isTyped
    check dict.size == 4
    for (key, val) in data:
      check dict[key] == val

  test "construct from openArray":
    var dict = newDictionary(data)
    check dict.isTyped
    check dict.size == 4
    for (key, val) in data:
      check dict[key] == val

  test "keys":
    var dict = newDictionary(data)
    for key in dict.keys:
      check key in keys

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
      value = system.Inf
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
