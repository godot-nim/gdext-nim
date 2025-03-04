import testutils
import std/[tables, strutils]

import gdext
import gdext/gdinterface/native
import gdext/core/[gdclass, typeshift]

import classes/gdvirtualnode01

# sugar of `import godot/classDetail/classDetail_native_T`
# Since this library is still early stage, we recommend to use this sugar for portability
import gdext/classes/[
  gdSceneTree,
  gdNode,
  gdRefCounted,
  gdInputEventKey,
  gdEngine,
  gdSprite2D,
  gdResourceLoader,
]

type GDExtNode* = ptr object of Node
  initialized: bool
  texture: gdref Texture2D

# Override init hook to customize the behavior when the object is created.
method onInit(self: GDExtNode) =
  if unlikely(not self.initialized):
    self.initialized = true
  else:
    raise newException(CatchableError, "duplicated initialize")

proc test_UserClass(self: GDExtNode) =
  suite "UserClass":
    test "initialize":
      check self.initialized

proc test_Object(self: GDExtNode) =
  suite "Object":
    test "instantiate":
      let obj: Object = instantiate Object
      check obj.owner != nil
      destroy obj

    test "singleton":
      Engine.registerSingleton(classname GDExtNode, self)
      check self == GDExtNode Engine.getSingleton(classname GDExtNode)
      check self == Engine.getSingleton(classname GDExtNode).as GDExtNode
      check self == GDExtNode

    test "stringify":
      let obj1: Object = instantiate Object
      let obj2: Object = Input.singleton
      check ($obj1).startsWith "Object"
      check ($obj2).startsWith "Input"

      destroy obj1

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

    test "get node from tree":
      # Shorthand of that:
      # let node1 = instantiate(Node2D)
      # node1.name = "MyNode2D"
      let node = instantiate(Node2D, "MyNode2D")
      self.addChild node

      let node2_node: Node = self/"MyNode2D"
      # Or, `self.getNode("MyNode2D")`

      let node2: Node2D = node2_node as Node2D
      check node == node2

    test "get node from tree (using sugar)":
      let node = instantiate(Node2D, "Node2D")
      self.addChild node

      # Shorthand of: `self.getNode($Node2D) as Node2D
      let node2: Node2D = self/Node2D

      check node == node2

    test "stringify":
      check ($self).startsWith "GDExtNode"

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

proc test_VirtualMethod(self: GDExtNode) =
  suite "virtuals":
    test "call virtual method from nim source":
      check (self/"../VirtualNode01" as VirtualNode01).virtualMethod("from Nim Source") ==
        "virtualMethod of VirtualNode01 is called from Nim Source"
      check (self/"../InheritedNode01" as VirtualNode01).virtualMethod("from Nim Source") ==
        "virtualMethod of InheritedNode01 is called from Nim Source"
      check (self/"../VirtualNode02" as VirtualNode01).virtualMethod("from Nim Source") ==
        "virtualMethod of VirtualNode02 is called from Nim Source"
      check (self/"../InheritedNode02" as VirtualNode01).virtualMethod("from Nim Source") ==
        "virtualMethod of InheritedNode02 is called from Nim Source"

# Using `method` to override virtual functions of Engine-Class.
# No specific pragma is needed.
# based on Node.ready()
method ready(self: GDExtNode) {.gdsync.} =
  if not Engine.isEditorHint:
    self.test_UserClass()
    self.test_Object()
    self.test_RefCounted()
    self.test_Node()
    self.test_Resource()
    self.test_FirstclassFunction()
    self.test_VirtualMethod()
