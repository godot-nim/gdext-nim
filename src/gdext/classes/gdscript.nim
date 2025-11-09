{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Script, Resource)

proc canInstantiate*(self: Script): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "can_instantiate", 36873697)
  methodbind.ptrcall(self, [], bool)

proc instanceHas*(self: Script; baseObject: Object): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "instance_has", 397768994)
  methodbind.ptrcall(self, [getPtr baseObject], bool)

proc hasSourceCode*(self: Script): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "has_source_code", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getSourceCode*(self: Script): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "get_source_code", 201670096)
  methodbind.ptrcall(self, [], String)

proc setSourceCode*(self: Script; source: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "set_source_code", 83702148)
  methodbind.ptrcall(self, [getPtr source], void)

proc reload*(self: Script; keepState: bool = false): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "reload", 1633102583)
  methodbind.ptrcall(self, [getPtr keepState], Error)

proc getBaseScript*(self: Script): gdref Script =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "get_base_script", 278624046)
  methodbind.ptrcall(self, [], gdref Script)

proc getInstanceBaseType*(self: Script): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "get_instance_base_type", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc getGlobalName*(self: Script): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "get_global_name", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc hasScriptSignal*(self: Script; signalName: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "has_script_signal", 2619796661)
  methodbind.ptrcall(self, [getPtr signalName], bool)

proc getScriptPropertyList*(self: Script): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "get_script_property_list", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[Dictionary])

proc getScriptMethodList*(self: Script): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "get_script_method_list", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[Dictionary])

proc getScriptSignalList*(self: Script): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "get_script_signal_list", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[Dictionary])

proc getScriptConstantMap*(self: Script): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "get_script_constant_map", 2382534195)
  methodbind.ptrcall(self, [], Dictionary)

proc getPropertyDefaultValue*(self: Script; property: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "get_property_default_value", 2138907829)
  methodbind.ptrcall(self, [getPtr property], Variant)

proc isTool*(self: Script): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "is_tool", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isAbstract*(self: Script): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "is_abstract", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getRpcConfig*(self: Script): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Script, "get_rpc_config", 1214101251)
  methodbind.ptrcall(self, [], Variant)

template sourceCode*(self: Script): untyped = self.getSourceCode()
template `sourceCode=`*(self: Script; value) = self.setSourceCode(value)
