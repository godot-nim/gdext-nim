import std/[tables, typetraits]

import gdext/gdinterface/[native, extracommands]
import gdext/gen/globalenums
import gdext/utils/macros

import gdext/core/builtinindex

type
  HeapPropertyInfo* = object
    `type`*: VariantType
    name*: ref StringName
    className*: ref Stringname
    hint*: PropertyHint
    hintString*: ref String
    usage*: set[PropertyUsageFlags]

  Object* = ptr object of RootObj
    pOwner: ObjectPtr
  RefCounted* = ptr object of Object

  GodotClassMeta* = object
    virtualMethods*: Table[StringName, ClassCallVirtual]
    className*: StringName
    callbacks*: InstanceBindingCallbacks

  SomeClass* = Object
  SomeEngineClass* = concept type t
    t is SomeClass
    t.EngineClass is t
  SomeUserClass* = concept type t
    t is SomeClass
    t.EngineClass isnot t

method onInit*(self: Object) {.base.} = discard
method onDestroy*(self: Object) {.base.} = discard

proc createClass*[T: Object](o: ObjectPtr): T =
  result = cast[T](alloc sizeof pointerBase T)
  zeroMem result, sizeof pointerBase T
  result[] = (pointerBase T)(
    pOwner: o)
  onInit result

proc create_callback[T](p_token: pointer; p_instance: pointer): pointer {.gdcall.} =
  let class = createClass[T](cast[ObjectPtr](p_instance))
  result = cast[pointer](class)

proc free_callback[T](p_token: pointer; p_instance: pointer; p_binding: pointer) {.gdcall.} =
  let class = cast[T](p_binding)
  onDestroy class
  `=destroy` class[]
  dealloc class

proc reference_callback(p_token: pointer; p_binding: pointer; p_reference: Bool): Bool {.gdcall.} =
  result = true

proc Meta*(T: typedesc[SomeClass]): var GodotClassMeta =
  var instance {.global.} : GodotClassMeta
  once:
    instance = GodotClassMeta(
      className: stringName $T,
    )
    when T is SomeEngineClass:
      instance.callbacks = InstanceBindingCallbacks(
        create_callback: create_callback[T],
        free_callback: free_callback[T],
        reference_callback:
          when T is RefCounted: reference_callback
          else: nil
      )
  instance

{.push, inline.}
proc className*(T: typedesc[SomeClass]): var StringName = Meta(T).className
proc callbacks*(T: typedesc[SomeClass]): var InstanceBindingCallbacks = Meta(T).callbacks
proc vmethods*(T: typedesc[SomeClass]): var Table[StringName, ClassCallVirtual] = Meta(T).virtualMethods
{.pop.}

proc getInstance*(p_engine_object: ObjectPtr; callbacks: var InstanceBindingCallbacks): pointer =
  if p_engine_object.isNil: return
  let getInstanceBinding = interface_objectGetInstanceBinding
  result = p_engine_object.getInstanceBinding(environment.library, nil)
  if result.isNil:
    result = p_engine_object.getInstanceBinding(environment.library, addr callbacks)

proc getInstance*[T: Object](p_engine_object: ObjectPtr; _: typedesc[T]): T =
  cast[T](p_engine_object.getInstance(T.callbacks))

macro Super*(Type: typedesc): typedesc = Type.super


proc owner*(obj: Object): ObjectPtr =
  if unlikely(obj.isNil): nil
  else: obj.pOwner

proc ownerPtr*(obj: Object): ptr ObjectPtr =
  if unlikely(obj.isNil or obj.owner.isNil): nil
  else: addr obj.pOwner