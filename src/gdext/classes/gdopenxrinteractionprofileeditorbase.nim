{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdhboxcontainer; export gdhboxcontainer
export OpenXRInteractionProfileEditorBase

proc setup*(self: OpenXRInteractionProfileEditorBase; actionMap: gdref OpenXRActionMap; interactionProfile: gdref OpenXRInteractionProfile): void =
  expandMethodBind(className OpenXRInteractionProfileEditorBase, "setup", 421962938)
  methodbind.ptrcall(self, [getPtr actionMap, getPtr interactionProfile])
