{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(OpenXRInteractionProfile, Resource)

proc setInteractionProfilePath*(self: OpenXRInteractionProfile; interactionProfilePath: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInteractionProfile, "set_interaction_profile_path", 83702148)
  methodbind.ptrcall(self, [getPtr interactionProfilePath], void)

proc getInteractionProfilePath*(self: OpenXRInteractionProfile): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInteractionProfile, "get_interaction_profile_path", 201670096)
  methodbind.ptrcall(self, [], String)

proc getBindingCount*(self: OpenXRInteractionProfile): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInteractionProfile, "get_binding_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getBinding*(self: OpenXRInteractionProfile; index: int32): gdref OpenXRIPBinding =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInteractionProfile, "get_binding", 3934429652)
  methodbind.ptrcall(self, [getPtr index], gdref OpenXRIPBinding)

proc setBindings*(self: OpenXRInteractionProfile; bindings: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInteractionProfile, "set_bindings", 381264803)
  methodbind.ptrcall(self, [getPtr bindings], void)

proc getBindings*(self: OpenXRInteractionProfile): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInteractionProfile, "get_bindings", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc getBindingModifierCount*(self: OpenXRInteractionProfile): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInteractionProfile, "get_binding_modifier_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getBindingModifier*(self: OpenXRInteractionProfile; index: int32): gdref OpenXRIPBindingModifier =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInteractionProfile, "get_binding_modifier", 2419896583)
  methodbind.ptrcall(self, [getPtr index], gdref OpenXRIPBindingModifier)

proc setBindingModifiers*(self: OpenXRInteractionProfile; bindingModifiers: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInteractionProfile, "set_binding_modifiers", 381264803)
  methodbind.ptrcall(self, [getPtr bindingModifiers], void)

proc getBindingModifiers*(self: OpenXRInteractionProfile): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInteractionProfile, "get_binding_modifiers", 3995934104)
  methodbind.ptrcall(self, [], Array)

template interactionProfilePath*(self: OpenXRInteractionProfile): untyped = self.getInteractionProfilePath()
template `interactionProfilePath=`*(self: OpenXRInteractionProfile; value) = self.setInteractionProfilePath(value)

template bindings*(self: OpenXRInteractionProfile): untyped = self.getBindings()
template `bindings=`*(self: OpenXRInteractionProfile; value) = self.setBindings(value)

template bindingModifiers*(self: OpenXRInteractionProfile): untyped = self.getBindingModifiers()
template `bindingModifiers=`*(self: OpenXRInteractionProfile; value) = self.setBindingModifiers(value)
