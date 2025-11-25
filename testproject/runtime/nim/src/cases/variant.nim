import gdext
import gdext/classes/[gdResource, gdNode]
import testutils
import std/strutils

runtime: suite "Variant":
  test "has.*":
    var vresource: Variant = instantiate Resource
    var vstring: Variant = "hello, variant!"
    check vstring.hasMethod("bin_to_int")
    check vresource.hasMethod("reference")
    check hasMember(VariantTypeColor, "r")

  test "call error":
    var vdict: Variant = newDictionary[Variant, Variant]()
    check vdict.call("size") == 0
    expect GodotCallDefect: discard vdict.call("nonexistence")
    expect GodotCallDefect: discard vdict.call("size", "Extra Argument")

  test "equalability":
    var v1i: Variant = 1
    var v1idash: Variant = 1
    var v2i: Variant = 2
    var v1f: Variant = 1d
    var vstring: Variant = "hello, variant!"
    check v1i == v1i
    check v1i == v1idash
    check v1i == v1f
    check v1i != v2i
    check v1i != vstring
    check v1i < v2i
    check v1i <= v1i
    check v1i <= v2i
    check v2i > v1i
    check v1i >= v1i
    check v2i >= v1i

  test "booleanize":
    check not Variant()
    check Variant 1
    check not Variant 0
    check Variant "String"
    check not Variant ""
    check not Variant newArray[Variant]()

  test "Dictionary in Variant":
    var vdict = newDictionary[Variant, Variant]()
    check vdict.call("size").get(int) == 0
    vdict["Key1"] = 1
    check vdict.call("size").get(int) == 1
    check vdict["Key1"].get(int) == 1
    vdict["Key2"] = 2
    check "Key2" in vdict

    for key, val in vdict.pairs:
      case key.getType
      of VariantTypeString:
        case key.get(string)
        of "Key1":
          check val == 1
        of "Key2":
          check val == 2
        else: check false
      else: check false


  test "Array in Variant":
    var varr: Variant = newArray[Variant]()
    check varr.call("size") == 0
    varr.call("append", "Value1")
    check varr.call("size") == 1
    check varr[0] == "Value1"
    varr.call("resize", 2)
    check varr.call("size") == 2
    check varr[1] == Variant()
    varr[1] = "Value2"
    check "Value2" in varr

    var i: int
    for key, val in varr.pairs:
      check key == i
      check val == "Value" & $i.succ
      inc i

    var deep = duplicate varr
    check deep[1] == "Value2"
    varr[1] = "Value3"
    check deep[1] == "Value2"

  test "as":
    block:
      var v: Variant = 10
      check (v as int) == 10
      check (v as float) == 10.0
      check (v as string) == "10"
      check (v as Object) == nil
      check (v as RefCounted) == nil
      check (v as gdref RefCounted) == GdRef[RefCounted]()
    block:
      var v: Variant = 10.0
      check (v as int) == 10
      check (v as float) == 10.0
      check (v as string) == "10.0"
      check (v as Object) == nil
      check (v as RefCounted) == nil
      check (v as gdref RefCounted) == GdRef[RefCounted]()
    block:
      var v: Variant = "10"
      check (v as int) == 10
      check (v as float) == 10.0
      check (v as string) == "10"
      check (v as Object) == nil
      check (v as RefCounted) == nil
      check (v as gdref RefCounted) == GdRef[RefCounted]()
    block:
      var obj = instantiate Node
      var v: Variant = obj
      check (v as int) == 0
      check (v as float) == 0.0
      check (v as string).startsWith("<Node#")
      check (v as Node) == obj
      check (v as RefCounted) == nil
      check (v as gdref RefCounted) == GdRef[RefCounted]()
      destroy obj
    block:
      var refc = instantiate RefCounted
      var v: Variant = refc
      check (v as int) == 0
      check (v as float) == 0.0
      check (v as string).startsWith("<RefCounted#")
      check (v as Object) == (refc[] as Object)
      check (v as RefCounted) == refc[]
      check (v as gdref RefCounted) == refc

  test "of":
    block:
      var v: Variant = 10
      check v of int
      check not(v of float)
      check not(v of Object)
      check not(v of RefCounted)

    block:
      var obj = instantiate Object
      var v: Variant = obj
      check not(v of int)
      check not(v of float)
      check v of Object
      check not(v of RefCounted)
      destroy v as Object

    block:
      var v: Variant = instantiate RefCounted
      check not(v of int)
      check not(v of float)
      check v of Object
      check v of RefCounted

    block:
      var v: Variant = newArray[String]()
      check v of Array[Variant]
      check v of Array[String]
      check not (v of Array[StringName])

    block:
      var v: Variant = newDictionary[String, Float]()
      check v of Dictionary[Variant, Variant]
      check v of Dictionary[String, Variant]
      check v of Dictionary[Variant, Float]
      check v of Dictionary[String, Float]
      check not (v of Dictionary[StringName, Variant])