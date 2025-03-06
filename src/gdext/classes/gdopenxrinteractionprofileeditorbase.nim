{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdhboxcontainer; export gdhboxcontainer

proc setup*(self: OpenXRInteractionProfileEditorBase; actionMap: gdref OpenXRActionMap; interactionProfile: gdref OpenXRInteractionProfile): void =
  expandMethodBind(className OpenXRInteractionProfileEditorBase, "setup", 421962938)
  methodbind.ptrcall(self, [getPtr actionMap, getPtr interactionProfile])

const OpenXRInteractionProfileEditorBase_vmap =
  HBoxContainer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRInteractionProfileEditorBase]): Table[string, string] = OpenXRInteractionProfileEditorBase_vmap