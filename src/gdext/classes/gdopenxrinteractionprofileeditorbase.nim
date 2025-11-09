{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdhboxcontainer; export gdhboxcontainer

expandOnClassImported(OpenXRInteractionProfileEditorBase, HBoxContainer)

proc setup*(self: OpenXRInteractionProfileEditorBase; actionMap: gdref OpenXRActionMap; interactionProfile: gdref OpenXRInteractionProfile): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInteractionProfileEditorBase, "setup", 421962938)
  methodbind.ptrcall(self, [getPtr actionMap, getPtr interactionProfile], void)
