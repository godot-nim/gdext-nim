---
layout: default
title: Quick Reference
author: la.panon.
---

* TOC
{:toc}

This document offers concise examples of common patterns in **gdext-nim**.
Each section shows the equivalent code in GDScript and Nim, so you can quickly find how to perform a task.
For a complete API specification, see the [Full API Reference][reference].

---

<!-- ## Title

**GDScript:**

```gdscript
```

**Nim:**

```nim
``` -->

# Object Definition

## Inherit an object

**GDScript:**

```gdscript
# my_object.gd
@icon("res://path/to/optional/icon.svg")
class_name MyObject
extends Object
```

**Nim:**

```nim
# classes/gdmyobject.nim
import gdext
import gdext/classes/gdObject

type MyObject* {.gdsync, icon: "res://path/to/optional/icon.svg".} = ptr object of Object
```

```nim
# bootstrap.nim
import classes/gdmyobject
```

## Initialize objects

**GDScript:**

```gdscript
func _init():
  pass
```

**Nim:**

```nim
method onInit(self: MyObject) =
  discard
```

## Finalize objects

**GDScript:**

```gdscript
func _notification(what):
	if what == NOTIFICATION_PREDELETE:
    pass
```

**Nim:**

```nim
method notification(self: MyNode; what: int32) =
  case what
  of NotificationPredelete:
    discard
```

```nim
method onDestroy(self: MyObject) =
  discard
```

## Override virtual methods

**GDScript:**

```gdscript
func _ready():
  pass
```

**Nim:**

```nim
import gdext/classes/[gdNode]
method ready(self: MyNode) {.gdsync.} =
  discard
```

## Define functions

**GDScript:**

```gdscript
func my_function(arg1):
  pass
```

```gdscript
func my_function(arg1: int) -> Dictionary:
  pass
```

**Nim:**

```nim
proc my_function*(self: MyNode; arg1: Variant) {.gdsync.} =
  discard
```

```nim
proc my_function*(self: MyNode; arg1: Int): Dictionary {.gdsync.} =
  discard
```

## Define static functions

**GDScript:**

```gdscript
static func my_function(arg1):
  pass
```

```gdscript
static func my_function(arg1: int) -> Dictionary:
  pass
```

**Nim:**

```nim
proc my_function*(T: typedesc[MyNode]; arg1: Variant) {.gdsync.} =
  discard
```

```nim
proc my_function*(T: typedesc[MyNode]; arg1: Int): Dictionary {.gdsync.} =
  discard
```

Then you can call the function in Nim like this:

```nim
MyNode.my_function(10)
```

**Note:**

This syntax can also be used to define factory methods (custom constructors).

## Define signals

**GDScript:**

```gdscript
signal my_signal
```

```gdscript
signal my_signal(arg1, arg2)
```

**Nim:**

```nim
proc my_signal*(self: MyNode): Error {.gdsync, signal.}
```

```nim
proc my_signal*(self: MyNode; arg1: Int; arg2: Variant): Error {.gdsync, signal.}
```

## Define constants

**GDScript:**

```gdscript
const A = 5
```

**Nim:**

Not available

## Define enums

**GDScript:**

```gdscript
enum MyEnum {A, B = 5, C}
```

**Nim:**

```nim
type MyEnum = enum
  A, B = 5, C

MyNode.bind MyEnum
```

## Define bitfields

**GDScript:**

#N/A

**Nim:**

```nim
type MyFlags = enum
  A, B = 5, C

MyNode.bind set[MyFlags]
```


## Define new virtual functions

**GDScript:**

#N/A

**Nim:**

```nim
method my_virtual*(self: MyNode) {.gdsync, base.} =
  discard
```

## Export properties

**GDScript:**

```gdscript
@export var integer := 10
```

**Nim:**

```nim
type MyNode* {.gdsync.} = ptr object of Node
  integer* {.gdexport.}: Int = 10
```

```nim
type MyNode* {.gdsync.} = ptr object of Node
  integer*: Int = 10
gdexport MyNode.integer
```

```nim
type MyNode* {.gdsync.} = ptr object of Node
  integer* : Int

proc set_integer(self: MyNode; value: Int) {.gdsync.} =
  self.integer = value

gdexport "integer",
  getter= proc(self: MyNode): int = self.integer,
  setter= set_integer
```

## Customize property appearances in the editor

**GDScript:**

```gdscript
@export_range(0, 20) var integer := 10
```

**Nim:**

```nim
type MyNode* {.gdsync.} = ptr object of Node
  integer* {.gdexport: Appearance.range(0, 20).}: Int = 10
```

```nim
type MyNode* {.gdsync.} = ptr object of Node
  integer*: Int = 10
gdexport MyNode.integer, Appearance.range(0, 20)
```

```nim
type MyNode* {.gdsync.} = ptr object of Node
  integer* : Int

proc set_integer(self: MyNode; value: Int) {.gdsync.} =
  self.integer = value

gdexport "integer",
  getter= proc(self: MyNode): int = self.integer,
  setter= set_integer,
  Appearance.range(0, 20)
```

# Object Operation

## Instantiate Object

**GDScript:**

```gdscript
var obj := Object.new()
```

**Nim:**

```nim
var obj: Object = instantiate Object
```

## Call user-defined signals

**GDScript:**

```gdscript
signal my_signal

func _ready():
  my_signal.emit()
  emit_signal("my_signal")
```

**Nim:**

```nim
proc my_signal*(self: MyNode): Error {.gdsync, signal}

method ready(self: MyNode) {.gdsync.} =
  assert self.my_signal() == ok
  assert self.signal("my_signal").emit() == ok
  assert self.emitSignal("my_signal") == ok
```

## Connect signals and callables

**GDScript:**

```gdscript
signal my_signal
func my_function():
  pass

func _ready():
  my_signal.connect(my_function)
```

```nim
proc my_signal*(self: MyNode): Error {.gdsync, signal}
proc my_function*(self: MyNode) {.gdsync} =
  discard

method ready(self: MyNode) {.gdsync.} =
  discard self.connect("my_signal", self.callable("my_function"))
  discard self.signal("my_signal").connect(self.callable("my_function"))
```

## Cast objects

**GDScript:**

```gdscript
var node: Node = object as Node
```

```gdscript
var refcounted: RefCounted = object as RefCounted
```

**Nim:**

```nim
var node: Node = object as Node
```

```nim
var refcounted: gdref RefCounted = object as gdref RefCounted
```

**Note:**

In gdext-nim, these type casts are valid (A and B are subtypes of **Object**):

- A as B
- gdref A as B
- A as gdref B
- gdref A as gdref B

You can also obtain a gdref A from an A.

```nim
proc f(x: RefCounted): gdref RefCounted = x as gdref RefCounted
```


# RefCounted Operation

## Instantiate RefCounted

**GDScript:**

```gdscript
var refc := RefCounted.new()
```

**Nim:**

```nim
var refc: gdref RefCounted = instantiate RefCounted
```

## Call functions of RefCounted

**GDScript:**

```gdscript
refc.getReferenceCount()
```

**Nim:**

```nim
refc[].getReferenceCount()
```

## Load resources

**GDScript:**

```gdscript
var texture = preload("res://icon.png")
```

```gdscript
var texture = load("res://icon.png")
```

**Nim:**

**preload** is not available.

```nim
var resource: gdref Resource = ResourceLoader.load("res://icon.png")
var texture = resource as gdref Texture
```

# Node Operation

## Get nodes

**GDScript:**

```gdscript
var subnode: SubNode = $path/to/SubNode as SubNode
var subnode: SubNode = getNode("path/to/SubNode") as SubNode
```

**Nim:**

```nim
var subnode: SubNode = self/"path/to/SubNode" as SubNode
var subnode: SubNode = self.getNode("path/to/SubNode").castTo(SubNode)
```

# Variant Operation

## Primitives ⇔ Variant

**GDScript:**

```gdscript
var v: Variant = 10
var i: int = v
```

```gdscript
var v: Variant = Object.new()
var o: Object = v
```

```gdscript
var v: Variant = RefCounted.new()
var r: RefCounted = v
```

**Nim:**

```nim
var v: Variant = variant 10
var i: int = v.get(int)
```

```nim
var v: Variant = variant instantiate Object
var o: Object = v.get(Object)
```

```nim
var v: Variant = variant instantiate Refcounted
var r: gdref RefCounted = v.get(gdref RefCounted)
```

## Allocate primitives

**GDScript:**

```gdscript
var array: Array[Variant] = [1, 2, 3]
```

```gdscript
var typed_array: Array[int] = [1, 2, 3]
```

```gdscript
var dict: Dictionary[Variant, Variant] = {"A": 1, "B": 2, "C": 3}
```

```gdscript
var dict: Dictionary[string, int] = {"A": 1, "B": 2, "C": 3}
```

```gdscript
var string = "Hello"
```

```gdscript
var string_name = &"Node"
```

```gdscript
var node_path = ^"A/B"
```

```gdscript
var packed_array = PackedByteArray([1, 2, 3])
```

```gdscript
var nil = null
```

**Nim:**

```nim
var array: Array = newArray [1, 2, 3]
```

```nim
var typed_array: TypedArray[Int] = newTypedArray[int]([1, 2, 3])
```

```nim
var dict: Dictionary = newDictionary()
dict[variant "A"] = variant 1
dict[variant "B"] = variant 2
dict[variant "C"] = variant 3
```

**Note:** typed-dictionary is not available

```nim
var string = newString "Hello"
var string: String = "Hello"
```

```nim
var string_name = newStringName "Node"
var string_name: StringName = "Node"
```

```nim
var node_path = newNodePath "A/B"
var node_path: NodePath = "A/B"
```

```nim
var packed_array = newPackedByteArray [1.byte, 2, 3]
var packed_array = newPackedArray [1.byte, 2, 3]
```

```nim
var nil = variant()
```

## Init primitives

**GDScript:**

```gdscript
var vector3: Vector3 = Vector3(1, 2, 3)
```

**Nim:**

Constructor is **camelCase**.

```nim
var vector3: Vector3 = vector3(1, 2, 3)
```

## Get member constants

**GDScript:**

```gdscript
var vector3: Vector3 = Vector3.ZERO
```

**Nim:**

[Nim Manual](https://nim-lang.org/docs/manual.html#lexical-analysis-identifier-equality) says:
> That means only the first letters are compared in a case-sensitive manner.

```nim
var vector3: Vector3 = Vector3.Zero
var vector3: Vector3 = Vector3.ZERO
```

[reference]: {{ site.baseurl }}/gdext.html