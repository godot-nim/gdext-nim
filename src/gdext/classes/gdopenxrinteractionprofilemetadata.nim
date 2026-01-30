{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(OpenXRInteractionProfileMetadata, Object)

proc registerProfileRename*(self: OpenXRInteractionProfileMetadata; oldName: String; newName: String): void =
  expandMethodBind(className OpenXRInteractionProfileMetadata, "register_profile_rename", 3186203200)
  methodbind.ptrcall(self, [getPtr oldName, getPtr newName])

proc registerPathRename*(self: OpenXRInteractionProfileMetadata; oldName: String; newName: String): void =
  expandMethodBind(className OpenXRInteractionProfileMetadata, "register_path_rename", 3186203200)
  methodbind.ptrcall(self, [getPtr oldName, getPtr newName])

proc registerTopLevelPath*(self: OpenXRInteractionProfileMetadata; displayName: String; openxrPath: String; openxrExtensionNames: String): void =
  expandMethodBind(className OpenXRInteractionProfileMetadata, "register_top_level_path", 254767734)
  methodbind.ptrcall(self, [getPtr displayName, getPtr openxrPath, getPtr openxrExtensionNames])

proc registerInteractionProfile*(self: OpenXRInteractionProfileMetadata; displayName: String; openxrPath: String; openxrExtensionNames: String): void =
  expandMethodBind(className OpenXRInteractionProfileMetadata, "register_interaction_profile", 254767734)
  methodbind.ptrcall(self, [getPtr displayName, getPtr openxrPath, getPtr openxrExtensionNames])

proc registerIoPath*(self: OpenXRInteractionProfileMetadata; interactionProfile: String; displayName: String; toplevelPath: String; openxrPath: String; openxrExtensionNames: String; actionType: OpenXRAction_ActionType): void =
  expandMethodBind(className OpenXRInteractionProfileMetadata, "register_io_path", 3443511926)
  methodbind.ptrcall(self, [getPtr interactionProfile, getPtr displayName, getPtr toplevelPath, getPtr openxrPath, getPtr openxrExtensionNames, getPtr actionType])
