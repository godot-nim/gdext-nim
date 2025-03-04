import std/[tables, typetraits, importutils]

import gdext/buildconf

import gdext/gdinterface/[native, extracommands]
import gdext/utils/macros

import gdext/core/builtinindex

when Dev.debugCallbacks:
  type SYNC* = enum
    INSTANTIATE      = "SYNC--------INSTANTIATE: "
    CREATE_BIND      = "SYNC----CREATE(LIBRARY): "
    CREATE_CALL      = "SYNC----CREATE(BUILTIN): "
    FREE_BIND        = "SYNC------FREE(LIBRARY): "
    FREE_CALL        = "SYNC------FREE(BUILTIN): "
    RECREATE_BIND    = "SYNC--RECREATE(LIBRARY): "
    REFERENCE        = "SYNC-REFERENCE(BUILTIN): "
    REFERENCE_BIND   = "SYNC----------REFERENCE: "
    UNREFERENCE_BIND = "SYNC----------REFERENCE: "
    DESTROY          = "SYNC------------DESTROY: "

type
  GodotClassMeta* = object
    virtualMethods*: Table[StringName, ClassCallVirtual]
    className*: StringName
    callbacks*: InstanceBindingCallbacks

proc ownerPtr*(obj: Object): ptr ObjectPtr =
  privateAccess Object
  if unlikely(obj.isNil or obj.owner.isNil): nil
  else: addr obj.owner
proc owner*(obj: Object): ObjectPtr =
  privateAccess Object
  if unlikely(obj.isNil): nil
  else: obj.owner

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
  when Dev.debugCallbacks:
    privateAccess Object
    echo SYNC.CREATE_CALL, class.debugName, "(", className cast[ObjectPtr](p_instance), ")"

proc free_callback[T](p_token: pointer; p_instance: pointer; p_binding: pointer) {.gdcall.} =
  let class = cast[T](p_binding)
  onDestroy class
  `=destroy` class[]
  dealloc class
  when Dev.debugCallbacks:
    privateAccess Object
    echo SYNC.FREE_CALL, class.debugName, "(", className cast[ObjectPtr](p_instance), ")"

proc reference_callback(p_token: pointer; p_binding: pointer; p_reference: Bool): Bool {.gdcall.} =
  result = true
  when Dev.debugCallbacks:
    privateAccess Object
    let class = cast[RefCounted](p_binding)
    let count = hook_getReferenceCount class.owner
    let status = if p_reference: "UP" else: "DOWN"
    echo SYNC.REFERENCE, class.debugName, "(", $count, " ", status, ")"

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