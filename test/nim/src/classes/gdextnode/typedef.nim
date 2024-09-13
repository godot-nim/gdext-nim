import std/unittest
import std/tables
import std/strformat except `&`
import std/strutils

import gdext
import gdext/dirty/gdextensioninterface
import gdext/core/[gdclass, typeshift]

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

type GDExtNode* = ref object of Node
  initialized: bool
  texture: gdref Texture2D

# Override init hook to customize the behavior when the object is created.
method init(self: GDExtNode) =
  if unlikely(not self.initialized):
    self.initialized = true
  else:
    raise newException(CatchableError, "duplicated initialize")

proc test_UserClass(self: GDExtNode) =
  suite "UserClass":
    test "initialize":
      check self.initialized

proc test_SomeVariants(self: GDExtNode) =
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

proc test_Object(self: GDExtNode) =
  suite "Object":
    test "instantiate":
      let obj: Object = instantiate Object
      check CLASS_getObjectPtr(obj) != nil

    test "singleton":
      # `/T` is same as `T.singleton`
      (/Engine).registerSingleton(classname GDExtNode, self)
      check self == GDExtNode (/Engine).getSingleton(classname GDExtNode)
      check self == (/Engine).getSingleton(classname GDExtNode).as GDExtNode
      check self == (/GDExtNode)

proc test_RefCounted(self: GDExtNode) =
  suite "RefCounted":
    test "reference counting":
      let refc: gdref RefCounted = instantiate RefCounted
      check refc[].getReferenceCount == 1
      block Scope:
        let refc2 = refc
        check refc[].getReferenceCount == 2
        check refc2[].getReferenceCount == 2
      check refc[].getReferenceCount == 1


proc test_Node(self: GDExtNode) =
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

proc test_Resource(self: GDExtNode) =
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
      let icon = ResourceLoader.load("res://icon.png") as gdref Texture2D
      check icon == self.texture

# To register custom signal, define proc with following those rules:
# 1. put UserClass type on the first argument
# 2. put Error on return value
# 3. put `exportgd` and `signal` pragma
# Then call `custom_signal()` to emit Signal.
proc signal_arg0*(self: GDExtNode): Error {.gdsync, signal.}
proc signal_arg1*(self: GDExtNode; what: string): Error {.gdsync, signal.}

var listen_0_result: seq[bool]
var listen_1_result: seq[string]
proc listen_0*(self: GDExtNode) {.gdsync.} =
  listen_0_result.add true
proc listen_1*(self: GDExtNode; what: string) {.gdsync.} =
  listen_1_result.add what

var result_call_group: bool
proc lesten_call_group(self: GDExtNode, str: string) {.gdsync.} =
  result_callGroup = str == "Hello, world!"

proc test_FirstClassFunction(self: GDExtNode) =
  suite "First-class function":
    test "connect to signal":
      check self.connect("signal_arg0", self.callable"listen_0") == ok
      check self.connect("signal_arg0", self.callable"listen_1") == ok
      check self.connect("signal_arg1", self.callable"listen_0") == ok
      check self.connect("signal_arg1", self.callable"listen_1") == ok

    test "execute call_group":
      self.getTree.callGroup(&"tester", &"lesten_call_group", variant "Hello, world!")
      check result_call_group
    test "send Signal":
      check self.signal_arg0() == ok
      check listen_0_result[0]
      check listen_1_result[0].len != 0
      check self.signal_arg1("SIGNAL") == ok
      check listen_0_result[1]
      check listen_1_result[1] == "SIGNAL"

# Using `method` to override virtual functions of Engine-Class.
# No specific pragma is needed.
# based on Node.ready()
method ready(self: GDExtNode) {.gdsync.} =
  self.test_UserClass()
  self.test_SomeVariants()
  self.test_Object()
  self.test_RefCounted()
  self.test_Node()
  self.test_Resource()
  self.test_FirstclassFunction()

method input(self: GDExtNode; event: gdref InputEvent) {.gdsync.} =
  let evkey = event as gdref InputEventKey
  # Or, `let evkey = event.castTo InputEventKey`
  if evkey[].isNil: return
  print evkey[], ": ", evkey[].keyLabel

  if event[].isActionPressed "ui_cancel":
    self.getTree.quit()