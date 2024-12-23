import gdext/gdinterface/[native, extracommands]
import gdext/core/builtinindex

export native
export builtinindex

proc constructObject*(p_classname: StringName): ObjectPtr =
  interfaceClassdbConstructObject(addr p_classname)

proc getMethodBind*(p_classname: StringName; p_methodname: string; p_hash: Int): MethodBindPtr =
  let name = stringName p_methodname
  interfaceClassdbGetMethodBind(addr p_classname, addr name, p_hash)

proc getClassTag*(p_classname: StringName): pointer =
  interfaceClassdbGetClassTag(addr p_classname)

proc register*(p_class_name, p_parent_class_name: StringName; p_extension_funcs: ptr ClassCreationInfo3) =
  interfaceClassdbRegisterExtensionClass3(
    environment.library, addr p_class_name, addr p_parent_class_name, p_extension_funcs)

proc registerMethod*(p_class_name: StringName; p_method_info: ptr ClassMethodInfo) =
  interfaceClassdbRegisterExtensionClassMethod(
    environment.library, addr p_class_name, p_method_info)

proc registerIntegerConstant*(p_class_name, p_enum_name, p_constant_name: StringName; p_constant_value: Int; p_is_bitfield: Bool) =
  interfaceClassdbRegisterExtensionClassIntegerConstant(
    environment.library, addr p_class_name, addr p_enum_name, addr p_constant_name, p_constant_value, p_is_bitfield)

proc registerProperty*(p_class_name: StringName; p_info: ptr PropertyInfo; p_setter, p_getter: StringName) =
  interfaceClassdbRegisterExtensionClassProperty(
    environment.library, addr p_class_name, p_info, addr p_setter, addr p_getter)

proc registerPropertyGroup*(p_class_name: StringName; p_group_name, p_prefix: String) =
  interfaceClassdbRegisterExtensionClassPropertyGroup(
    environment.library, addr p_class_name, addr p_group_name, addr p_prefix)

proc registerPropertySubgroup*(p_class_name: StringName; p_subgroup_name, p_prefix: String) =
  interfaceClassdbRegisterExtensionClassPropertySubgroup(
    environment.library, addr p_class_name, addr p_subgroup_name, addr p_prefix)

proc registerSignal*(p_class_name: StringName; name: string; args: varargs[PropertyInfo]) =
  let name = stringName name
  if args.len == 0:
    interfaceClassdbRegisterExtensionClassSignal(
      environment.library, addr p_class_name, addr name, nil, 0)
  else:
    interfaceClassdbRegisterExtensionClassSignal(
      environment.library, addr p_class_name, addr name, addr args[0], args.len)

proc unregister*(p_class_name: StringName) =
  interfaceClassdbUnregisterExtensionClass(
    environment.library, addr p_class_name)
