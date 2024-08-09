import std/unittest
import std/tables
import std/strformat except `&`
import std/strutils

import gdext
import gdextcore/dirty/gdextensioninterface
import gdextcore/[gdclass, typeshift]

# sugar of `import godot/classDetail/classDetail_native_T`
# Since this library is still early stage, we recommend to use this sugar for portability
import gdextgen/classes/[
  gdSceneTree,
  gdNode,
  gdRefCounted,
  gdInputEventKey,
  gdEngine,
  gdSprite2D,
  gdResourceLoader,
]

# paramFiltering tryes to access to `paramCount` and it cause `OSError`
# because the program will finally be shared object(dll).
unittest.disableParamFiltering()

type NimSideTester* = ref object of Node
  initialized: bool
  texture: gdref Texture2D

# Override init hook to customize the behavior when the object is created.
method init(self: NimSideTester) =
  if unlikely(not self.initialized):
    self.initialized = true
  else:
    raise newException(CatchableError, "duplicated initialize")

proc test_UserClass(self: NimSideTester) =
  suite "UserClass":
    test "initialize":
      check self.initialized

proc test_SomeVariants(self: NimSideTester) =
  suite "Some Variants":
    test "String conversion":
      let gdstr: String = "String"
      check $gdstr == "String"
    test "indexing":
      var arr: PackedByteArray
      check arr.size == 0
      check arr.resize(3) == 0
      check arr.size == 3
      for i in 0..<3:
        check arr[i] == 0
      for i in 0..<3:
        arr[i] = byte i
      for i in 0..<3:
        check arr[i] == byte i
      check @(arr.data_unsafe.toOpenArray(0, 2)) == [0.byte, 1, 2]

proc test_Object(self: NimSideTester) =
  suite "Object":
    test "instantiate":
      let obj: Object = instantiate Object
      check CLASS_getObjectPtr(obj) != nil

    test "singleton":
      # `/T` is same as `T.singleton`
      (/Engine).registerSingleton(classname NimSideTester, self)
      check self == NimSideTester (/Engine).getSingleton(classname NimSideTester)
      check self == (/Engine).getSingleton(classname NimSideTester).as NimSideTester
      check self == (/NimSideTester)

proc test_RefCounted(self: NimSideTester) =
  suite "RefCounted":
    test "reference counting":
      let refc: gdref RefCounted = instantiate RefCounted
      check refc[].getReferenceCount == 1
      block Scope:
        let refc2 = refc
        check refc[].getReferenceCount == 2
        check refc2[].getReferenceCount == 2
      check refc[].getReferenceCount == 1


proc test_Node(self: NimSideTester) =
  suite "Node":
    # Shorthand of that:
    # let node1 = instantiate(Node2D)
    # node1.name = "MyNode2D"
    let node = instantiate(Node2D, "MyNode2D")
    # No need to have `original Node2D` since ownership of node will pass to `self` when call `addChild`.
    # Or you can call `release(original T): T` like:
    # ```
    # let node = original instantiate(Node2D, "MyNode2D")
    # self.addChild release node
    # ```
    # to dispose ownership.

    test "get node from tree":
      self.addChild node

      let node2_node: Node = self/"MyNode2D"
      # Or, `self.getNode("MyNode2D")`

      let node2: Node2D = node2_node as Node2D
      check node == node2

    test "stringify":
      print fmt"{node=}"
      check "MyNode2D" in $node

    test "get node from tree (using sugar)":
      let node = instantiate(Node2D, "Node2D")
      self.addChild node

      # Shorthand of: `self.getNode($Node2D) as Node2D
      let node2: Node2D = self/Node2D

      check node == node2

proc test_Resource(self: NimSideTester) =
  suite "Resource":
    test "reference counting":
      let sprite = self/Sprite2D
      let tex1: gdref Texture2D = sprite.texture
      self.texture = sprite.texture

      let refc = tex1[].getReferenceCount

      block Scope1:
        let tex2 = sprite.texture
        check tex1[].getReferenceCount == refc.succ
        check tex2[].getReferenceCount == refc.succ

      check tex1[].getReferenceCount == refc
    test "loading":
      let loader = /ResourceLoader
      let icon = loader.load("res://icon.png") as gdref Texture2D
      check icon == self.texture

# To register custom signal, define proc with following those rules:
# 1. put UserClass type on the first argument
# 2. put Error on return value
# 3. put `exportgd` and `signal` pragma
# Then call `custom_signal()` to emit Signal.
proc custom_signal*(self: NimSideTester; value: int): Error {.gdsync, signal.}

proc simple_signal*(self: NimSideTester): Error {.gdsync, signal.}

var result_call_group: bool
proc lesten_call_group(self: NimSideTester, str: string) {.gdsync.} =
  result_callGroup = str == "Hello, world!"

proc test_FirstClassFunction(self: NimSideTester) =
  suite "First-class function":
    test "execute call_group":
      self.getTree.callGroup(&"tester", &"lesten_call_group", variant "Hello, world!")
      check result_call_group
    test "send Signal":
      check self.custom_signal(10) == ok


proc variant_signal*(self: NimSideTester; value: Variant): Error {.gdsync, signal.}
var emitteds: array[VariantType, Variant]
var originals: array[VariantType, Variant]
proc on_variant_signal*(self: NimSideTester; value: Variant) {.gdsync, name: "_on_variant_signal".} =
  emitteds[value.variantType] = value

proc test_Variant(self: NimSideTester) =
  template test_identity(testname, value) =
    test testname:
      let v = value
      type T = typeof v
      let t = variantType T
      originals[t] = variant v
      check originals[t].variantType == t
      check originals[t].get(T) == v

      check self.variant_signal(originals[t]) == ok
      check emitteds[t].variantType == originals[t].variantType
      check emitteds[t].get(T) == originals[t].get(T)

  suite "Variant":
    test "identity":
      let obj = instantiate Object
      test_identity "identity-gd.Int", Int 10
      test_identity "identity-gd.Float", Float 10
      test_identity "identity-gd.String", gdstring "String"
      test_identity "identity-gd.StringName", stringName "StringName"
      test_identity "identity-gd.Object", obj
      test_identity "identity-int", 11
      test_identity "identity-int32", 12'i32
      test_identity "identity-int16", 13'i16
      test_identity "identity-bool", true
    test "get/set":
      var arr = gdarray()
      discard arr.resize(1)
      var vdict: Variant = variant dictionary()
      var varr: Variant = variant arr
      let vkey: Variant = variant system.Inf

      # Named
      vdict["Key0"] = variant 1
      check vdict["Key0"] == variant 1
      vdict["Key1"] = variant 2
      check vdict["Key1"] == variant 2

      # Indexed
      varr[0] = variant 3
      check varr[0] == variant 3
      expect IndexDefect:
        varr[1] = variant 4

      # Keyed
      vdict[vkey] = variant 5
      check vdict[vkey] == variant 5

    test "iterate":
      var arr = gdarray()
      discard arr.resize(2)
      var dict = dictionary()
      var keyObj = instantiate Object

      var expect = toTable {
        variant 0: variant 0,
        variant 1: variant 1,
        variant "Key0": variant 0,
        variant "Key1": variant 1,
        variant keyObj: variant 2,
      }

      var vdict: Variant = variant dict
      var varr: Variant = variant arr

      varr[0] = variant 0
      varr[1] = variant 1
      vdict["Key0"] = variant 0
      vdict["Key1"] = variant 1
      vdict[variant keyObj] = variant 2

      for key, item in varr.pairs:
        check item == expect[key]
      for key, item in vdict.pairs:
        check item == expect[key]


template connect_all*(self: NimSideTester) =
  print self.connect("variant_signal", self.callable("_on_variant_signal"))

# Using `method` to override virtual functions of Engine-Class.
# No specific pragma is needed.
# based on Node.ready()
method ready(self: NimSideTester) {.gdsync.} =
  (self.connect_all)

  self.test_UserClass()
  self.test_SomeVariants()
  self.test_Object()
  self.test_RefCounted()
  self.test_Node()
  self.test_Resource()
  self.test_FirstclassFunction()
  self.test_Variant()

method input(self: NimSideTester; event: gdref InputEvent) {.gdsync.} =
  let evkey = event as gdref InputEventKey
  # Or, `let evkey = event.castTo InputEventKey`
  if evkey[].isNil: return
  print evkey[], ": ", evkey[].keyLabel
