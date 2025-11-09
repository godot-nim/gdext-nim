{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpanelcontainer; export gdpanelcontainer

expandOnClassImported(OpenXRBindingModifierEditor, PanelContainer)

proc getBindingModifier*(self: OpenXRBindingModifierEditor): gdref OpenXRBindingModifier =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRBindingModifierEditor, "get_binding_modifier", 2930765082)
  methodbind.ptrcall(self, [], gdref OpenXRBindingModifier)

proc setup*(self: OpenXRBindingModifierEditor; actionMap: gdref OpenXRActionMap; bindingModifier: gdref OpenXRBindingModifier): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRBindingModifierEditor, "setup", 1284787389)
  methodbind.ptrcall(self, [getPtr actionMap, getPtr bindingModifier], void)
