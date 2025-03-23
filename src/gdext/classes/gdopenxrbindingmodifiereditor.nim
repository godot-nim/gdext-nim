{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpanelcontainer; export gdpanelcontainer

proc getBindingModifier*(self: OpenXRBindingModifierEditor): gdref OpenXRBindingModifier =
  expandMethodBind(className OpenXRBindingModifierEditor, "get_binding_modifier", 2930765082)
  var ret: encoded gdref OpenXRBindingModifier
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref OpenXRBindingModifier)

proc setup*(self: OpenXRBindingModifierEditor; actionMap: gdref OpenXRActionMap; bindingModifier: gdref OpenXRBindingModifier): void =
  expandMethodBind(className OpenXRBindingModifierEditor, "setup", 1284787389)
  methodbind.ptrcall(self, [getPtr actionMap, getPtr bindingModifier])

proc call_bindingModifierRemoved*(self: OpenXRBindingModifierEditor; bindingModifierEditor: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("binding_modifier_removed")
  let args = [bindingModifierEditor]
  self.emitSignal(signalname, args)