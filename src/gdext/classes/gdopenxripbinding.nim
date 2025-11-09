{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(OpenXRIPBinding, Resource)

proc setAction*(self: OpenXRIPBinding; action: gdref OpenXRAction): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRIPBinding, "set_action", 349361333)
  methodbind.ptrcall(self, [getPtr action], void)

proc getAction*(self: OpenXRIPBinding): gdref OpenXRAction =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRIPBinding, "get_action", 4072409085)
  methodbind.ptrcall(self, [], gdref OpenXRAction)

proc setBindingPath*(self: OpenXRIPBinding; bindingPath: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRIPBinding, "set_binding_path", 83702148)
  methodbind.ptrcall(self, [getPtr bindingPath], void)

proc getBindingPath*(self: OpenXRIPBinding): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRIPBinding, "get_binding_path", 201670096)
  methodbind.ptrcall(self, [], String)

proc getBindingModifierCount*(self: OpenXRIPBinding): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRIPBinding, "get_binding_modifier_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getBindingModifier*(self: OpenXRIPBinding; index: int32): gdref OpenXRActionBindingModifier =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRIPBinding, "get_binding_modifier", 3538296211)
  methodbind.ptrcall(self, [getPtr index], gdref OpenXRActionBindingModifier)

proc setBindingModifiers*(self: OpenXRIPBinding; bindingModifiers: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRIPBinding, "set_binding_modifiers", 381264803)
  methodbind.ptrcall(self, [getPtr bindingModifiers], void)

proc getBindingModifiers*(self: OpenXRIPBinding): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRIPBinding, "get_binding_modifiers", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc setPaths*(self: OpenXRIPBinding; paths: PackedStringArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRIPBinding, "set_paths", 4015028928)
  methodbind.ptrcall(self, [getPtr paths], void)

proc getPaths*(self: OpenXRIPBinding): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRIPBinding, "get_paths", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getPathCount*(self: OpenXRIPBinding): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRIPBinding, "get_path_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc hasPath*(self: OpenXRIPBinding; path: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRIPBinding, "has_path", 3927539163)
  methodbind.ptrcall(self, [getPtr path], bool)

proc addPath*(self: OpenXRIPBinding; path: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRIPBinding, "add_path", 83702148)
  methodbind.ptrcall(self, [getPtr path], void)

proc removePath*(self: OpenXRIPBinding; path: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRIPBinding, "remove_path", 83702148)
  methodbind.ptrcall(self, [getPtr path], void)

template action*(self: OpenXRIPBinding): untyped = self.getAction()
template `action=`*(self: OpenXRIPBinding; value) = self.setAction(value)

template bindingPath*(self: OpenXRIPBinding): untyped = self.getBindingPath()
template `bindingPath=`*(self: OpenXRIPBinding; value) = self.setBindingPath(value)

template bindingModifiers*(self: OpenXRIPBinding): untyped = self.getBindingModifiers()
template `bindingModifiers=`*(self: OpenXRIPBinding; value) = self.setBindingModifiers(value)

template paths*(self: OpenXRIPBinding): untyped = self.getPaths()
template `paths=`*(self: OpenXRIPBinding; value) = self.setPaths(value)
