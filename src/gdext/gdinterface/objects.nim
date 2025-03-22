import gdext/private/gdinterface
import gdext/builtinindex

export builtinindex

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

proc destroy*(obj: Object) =
  interfaceObjectDestroy(obj.engineInstance)

proc castTo*(obj: Object; p_class_tag: pointer): ObjectPtr =
  interfaceObjectCastTo(obj.engineInstance, p_class_tag)

proc getInstanceID*(self: Object): GDObjectInstanceID =
  interfaceObjectGetInstanceId self.engineInstance

proc getClassName*(self: Object): StringName =
  discard interfaceObjectGetClassName(self.engineInstance, environment.library, addr result)
