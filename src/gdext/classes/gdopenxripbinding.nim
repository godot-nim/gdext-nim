{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setAction*(self: OpenXRIPBinding; action: gdref OpenXRAction): void =
  expandMethodBind(className OpenXRIPBinding, "set_action", 349361333)
  methodbind.ptrcall(self, [getPtr action])

proc getAction*(self: OpenXRIPBinding): gdref OpenXRAction =
  expandMethodBind(className OpenXRIPBinding, "get_action", 4072409085)
  var ret: encoded gdref OpenXRAction
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref OpenXRAction)

proc setBindingPath*(self: OpenXRIPBinding; bindingPath: String): void =
  expandMethodBind(className OpenXRIPBinding, "set_binding_path", 83702148)
  methodbind.ptrcall(self, [getPtr bindingPath])

proc getBindingPath*(self: OpenXRIPBinding): String =
  expandMethodBind(className OpenXRIPBinding, "get_binding_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getBindingModifierCount*(self: OpenXRIPBinding): int32 =
  expandMethodBind(className OpenXRIPBinding, "get_binding_modifier_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getBindingModifier*(self: OpenXRIPBinding; index: int32): gdref OpenXRActionBindingModifier =
  expandMethodBind(className OpenXRIPBinding, "get_binding_modifier", 3538296211)
  var ret: encoded gdref OpenXRActionBindingModifier
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(gdref OpenXRActionBindingModifier)

proc setBindingModifiers*(self: OpenXRIPBinding; bindingModifiers: Array): void =
  expandMethodBind(className OpenXRIPBinding, "set_binding_modifiers", 381264803)
  methodbind.ptrcall(self, [getPtr bindingModifiers])

proc getBindingModifiers*(self: OpenXRIPBinding): Array =
  expandMethodBind(className OpenXRIPBinding, "get_binding_modifiers", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array)

proc setPaths*(self: OpenXRIPBinding; paths: PackedStringArray): void =
  expandMethodBind(className OpenXRIPBinding, "set_paths", 4015028928)
  methodbind.ptrcall(self, [getPtr paths])

proc getPaths*(self: OpenXRIPBinding): PackedStringArray =
  expandMethodBind(className OpenXRIPBinding, "get_paths", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getPathCount*(self: OpenXRIPBinding): int32 =
  expandMethodBind(className OpenXRIPBinding, "get_path_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc hasPath*(self: OpenXRIPBinding; path: String): bool =
  expandMethodBind(className OpenXRIPBinding, "has_path", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(bool)

proc addPath*(self: OpenXRIPBinding; path: String): void =
  expandMethodBind(className OpenXRIPBinding, "add_path", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc removePath*(self: OpenXRIPBinding; path: String): void =
  expandMethodBind(className OpenXRIPBinding, "remove_path", 83702148)
  methodbind.ptrcall(self, [getPtr path])

template action*(self: OpenXRIPBinding): untyped = self.getAction()
template `action=`*(self: OpenXRIPBinding; value) = self.setAction(value)

template bindingPath*(self: OpenXRIPBinding): untyped = self.getBindingPath()
template `bindingPath=`*(self: OpenXRIPBinding; value) = self.setBindingPath(value)

template bindingModifiers*(self: OpenXRIPBinding): untyped = self.getBindingModifiers()
template `bindingModifiers=`*(self: OpenXRIPBinding; value) = self.setBindingModifiers(value)

template paths*(self: OpenXRIPBinding): untyped = self.getPaths()
template `paths=`*(self: OpenXRIPBinding; value) = self.setPaths(value)