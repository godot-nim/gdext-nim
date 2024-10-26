import gdext
import std/unittest
unittest.disableParamFiltering()

suite "Variant":
  test "has.*":
    var vresource = variant instantiate Resource
    var vstring = variant "hello, variant!"
    check vstring.hasMethod("bin_to_int")
    check vresource.hasMethod("reference")
    check hasMember(VariantTypeColor, "r")

  test "call error":
    var err: CallError
    var vdict = variant dictionary()
    check vdict.call("size").get(int) == 0
    expect VariantCallError: discard vdict.call("nonexistence")
    expect VariantCallError: discard vdict.call("size", "Extra Argument")
    discard vdict.call("nonexistence", err)
    check err.error == CallError_InvalidMethod
    discard vdict.call("size", err, "Extra Argument")
    check err.error == CallError_TooManyArguments

  test "equalability":
    var v1i = variant 1
    var v1idash = variant 1
    var v2i = variant 2
    var v1f = variant 1d
    var vstring = variant "hello, variant!"
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
    check not variant()
    check variant 1
    check not variant 0
    check variant "String"
    check not variant ""
    check not variant gdarray()

  test "Dictionary in Variant":
    var vdict = variant dictionary()
    check vdict.call("size").get(int) == 0
    vdict[variant"Key1"] = variant 1
    check vdict.call("size").get(int) == 1
    check vdict["Key1"].get(int) == 1
    vdict[variant"Key2"] = variant 2
    check variant"Key2" in vdict

    for key, val in vdict.pairs:
      case key.variantType
      of VariantTypeString:
        case key.get(string)
        of "Key1":
          check val.get(int) == 1
        of "Key2":
          check val.get(int) == 2
        else: check false
      else: check false


  test "Array in Variant":
    var varr = variant gdarray()
    check varr.call("size").get(int) == 0
    varr.call("append", "Value1")
    check varr.call("size").get(int) == 1
    check varr[0] == variant "Value1"
    varr.call("resize", 2)
    check varr.call("size").get(int) == 2
    check varr[1] == variant()
    varr[1] = variant "Value2"
    check variant"Value2" in varr

    var i: int
    for key, val in varr.pairs:
      check key.get(int) == i
      check val.get(string) == "Value" & $i.succ
      inc i

    var deep = duplicate varr
    check deep[1].get(string) == "Value2"
    varr[1] = variant "Value3"
    check deep[1].get(string) == "Value2"