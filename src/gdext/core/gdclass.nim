import std/[tables, typetraits, importutils]

import gdext/buildconf

import gdext/gdinterface/[native, extracommands]
import gdext/utils/[macros, debugging]

import gdext/core/builtinindex

type
  GodotClassMeta* = object
    virtualMethods*: Table[StringName, ClassCallVirtual]
    className*: StringName
    callbacks*: InstanceBindingCallbacks

proc createClass*[T: Object](o: ObjectPtr): T =
  privateAccess Object
  result = cast[T](alloc sizeof pointerBase T)
  zeroMem result, sizeof pointerBase T
  result[] = (pointerBase T)(owner: o)
  when Dev.debugCallbacks:
    result.debugName = $T
  onInit result

proc create_callback[T](p_token: pointer; p_instance: pointer): pointer {.gdcall.} =
  let class = createClass[T](cast[ObjectPtr](p_instance))
  result = cast[pointer](class)
  debugCreate(class)

proc free_callback[T](p_token: pointer; p_instance: pointer; p_binding: pointer) {.gdcall.} =
  let class = cast[T](p_binding)
  debugFree(class)
  onDestroy class
  `=destroy` class[]
  dealloc class

proc reference_callback(p_token: pointer; p_binding: pointer; p_reference: Bool): Bool {.gdcall.} =
  result = true
  debugReference(cast[Object](p_binding), p_reference)

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

template className*(T: typedesc[SomeClass]): var StringName = Meta(T).className
template callbacks*(T: typedesc[SomeClass]): var InstanceBindingCallbacks = Meta(T).callbacks
template vmethods*(T: typedesc[SomeClass]): var Table[StringName, ClassCallVirtual] = Meta(T).virtualMethods

proc getInstance*(p_engine_object: ObjectPtr; callbacks: var InstanceBindingCallbacks): pointer =
  if p_engine_object.isNil: return
  let getInstanceBinding = interface_objectGetInstanceBinding
  result = p_engine_object.getInstanceBinding(environment.library, nil)
  if result.isNil:
    result = p_engine_object.getInstanceBinding(environment.library, addr callbacks)

proc getInstance*[T: Object](p_engine_object: ObjectPtr; _: typedesc[T]): T =
  cast[T](p_engine_object.getInstance(T.callbacks))

macro Super*(Type: typedesc): typedesc = Type.super