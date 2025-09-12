import std/[tables]
import gdext/private/gdinterface
import gdext/private/macros
import gdext/private/propertyinfo
import gdext/private/classindex
import gdext/builtinindex {.all.}
import gdext/stringtools

proc getClassName*(o: ObjectPtr): StringName

proc setInstanceBinding*(p_o: ObjectPtr; p_binding: Object; p_callbacks: ptr InstanceBindingCallbacks) =
  interfaceObjectSetInstanceBinding(p_o, environment.library, cast[pointer](p_binding), p_callbacks)

proc setInstance*(p_o: ObjectPtr; p_classname: StringName; p_instance: Object) =
  interfaceObjectSetInstance(p_o, addr p_classname, cast[pointer](p_instance))

proc callScriptMethod*(obj: Object; p_method: StringName): Variant =
  var ce: CallError
  interfaceObjectCallScriptMethod(obj.engineInstance, addr p_method, nil, 0, addr result, addr ce)
  check ce
proc callScriptMethod*(obj: Object; p_method: StringName; args: array[0, Variant]): Variant =
  var ce: CallError
  interfaceObjectCallScriptMethod(obj.engineInstance, addr p_method, nil, 0, addr result, addr ce)
  check ce
proc callScriptMethod*[I](obj: Object; p_method: StringName; args: array[I, Variant]): Variant =
  var ce: CallError
  let args = getPtr args
  interfaceObjectCallScriptMethod(obj.engineInstance, addr p_method, addr args[0], args.len, addr result, addr ce)
  check ce

proc hasScriptMethod*(obj: Object; p_method: StringName): bool =
  interfaceObjectHasScriptMethod(obj.engineInstance, addr p_method)

proc getInstanceID*(self: Object): GDObjectInstanceID =
  interfaceObjectGetInstanceId self.engineInstance

proc getClassName*(o: ObjectPtr): StringName =
  if unlikely(o.isNil): return
  discard interfaceObjectGetClassName(o, environment.library, addr result)
proc getClassName*(self: Object): StringName =
  self.engineInstance.getClassName

proc constructObject*(_: typedesc[ClassDB]; p_classname: StringName): ObjectPtr =
  interfaceClassdbConstructObject(addr p_classname)

proc getMethodBind*(_: typedesc[ClassDB]; p_classname: StringName; p_methodname: StringName; p_hash: Int): MethodBindPtr =
  interfaceClassdbGetMethodBind(addr p_classname, addr p_methodname, p_hash)
proc getMethodBind*(_: typedesc[ClassDB]; p_classname: StringName; p_methodname: string; p_hash: Int): MethodBindPtr =
  ClassDB.getMethodBind(p_classname, newStringName p_methodname, p_hash)

proc getClassTag*(_: typedesc[ClassDB]; p_classname: StringName): pointer =
  interfaceClassdbGetClassTag(addr p_classname)

proc castTo*(obj: ObjectPtr; p_class_tag: pointer): ObjectPtr =
  interfaceObjectCastTo(obj, p_class_tag)
proc castTo*(obj: Object; p_class_tag: pointer): ObjectPtr =
  obj.engineInstance.castTo(p_class_tag)
proc castTo*[T](obj: ObjectPtr; _: typedesc[T]): ObjectPtr =
  obj.castTo(ClassDB.getClassTag(className T))

proc getInstanceBinding*(p_engine_object: ObjectPtr; callbacks: var InstanceBindingCallbacks): pointer =
  if p_engine_object.isNil: return
  result = interfaceObjectGetInstanceBinding(p_engine_object, environment.library, nil)
  if result.isNil:
    result = interfaceObjectGetInstanceBinding(p_engine_object, environment.library, addr callbacks)

proc getInstanceBinding*[T: Object](p_engine_object: ObjectPtr; _: typedesc[T]): T =
  var cname = p_engine_object.getClassName
  var callbacks: ptr InstanceBindingCallbacks
  while true:
    if cname == newStringName():
      break
    callbacks = callbackTable.getOrDefault(cname)
    if callbacks != nil:
      break
    cname = getParentClass(cname)
  if callbacks == nil:
    callbacks = addr T.callbacks
  cast[T](p_engine_object.castTo(T).getInstanceBinding(callbacks[]))