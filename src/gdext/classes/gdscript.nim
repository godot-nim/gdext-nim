{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc canInstantiate*(self: Script): bool =
  expandMethodBind(className Script, "can_instantiate", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc instanceHas*(self: Script; baseObject: Object): bool =
  expandMethodBind(className Script, "instance_has", 397768994)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr baseObject], addr ret)
  (addr ret).decode_result(bool)

proc hasSourceCode*(self: Script): bool =
  expandMethodBind(className Script, "has_source_code", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getSourceCode*(self: Script): String =
  expandMethodBind(className Script, "get_source_code", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setSourceCode*(self: Script; source: String): void =
  expandMethodBind(className Script, "set_source_code", 83702148)
  methodbind.ptrcall(self, [getPtr source])

proc reload*(self: Script; keepState: bool = false): Error =
  expandMethodBind(className Script, "reload", 1633102583)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr keepState], addr ret)
  (addr ret).decode_result(Error)

proc getBaseScript*(self: Script): gdref Script =
  expandMethodBind(className Script, "get_base_script", 278624046)
  var ret: encoded gdref Script
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Script)

proc getInstanceBaseType*(self: Script): StringName =
  expandMethodBind(className Script, "get_instance_base_type", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc getGlobalName*(self: Script): StringName =
  expandMethodBind(className Script, "get_global_name", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc hasScriptSignal*(self: Script; signalName: StringName): bool =
  expandMethodBind(className Script, "has_script_signal", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr signalName], addr ret)
  (addr ret).decode_result(bool)

proc getScriptPropertyList*(self: Script): TypedArray[Dictionary] =
  expandMethodBind(className Script, "get_script_property_list", 2915620761)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc getScriptMethodList*(self: Script): TypedArray[Dictionary] =
  expandMethodBind(className Script, "get_script_method_list", 2915620761)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc getScriptSignalList*(self: Script): TypedArray[Dictionary] =
  expandMethodBind(className Script, "get_script_signal_list", 2915620761)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc getScriptConstantMap*(self: Script): Dictionary =
  expandMethodBind(className Script, "get_script_constant_map", 2382534195)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary)

proc getPropertyDefaultValue*(self: Script; property: StringName): Variant =
  expandMethodBind(className Script, "get_property_default_value", 2138907829)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr property], addr ret)
  (addr ret).decode_result(Variant)

proc isTool*(self: Script): bool =
  expandMethodBind(className Script, "is_tool", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isAbstract*(self: Script): bool =
  expandMethodBind(className Script, "is_abstract", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template sourceCode*(self: Script): untyped = self.getSourceCode()
template `sourceCode=`*(self: Script; value) = self.setSourceCode(value)

const Script_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Script]): Table[string, string] = Script_vmap