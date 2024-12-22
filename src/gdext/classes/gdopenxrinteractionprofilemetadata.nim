{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc registerProfileRename*(self: OpenXRInteractionProfileMetadata; oldName: String; newName: String): void =
  expandMethodBind(className OpenXRInteractionProfileMetadata, "register_profile_rename", 3186203200)
  var `?param` = [getPtr oldName, getPtr newName]
  methodbind.ptrcall(self, addr `?param`[0])

proc registerTopLevelPath*(self: OpenXRInteractionProfileMetadata; displayName: String; openxrPath: String; openxrExtensionName: String): void =
  expandMethodBind(className OpenXRInteractionProfileMetadata, "register_top_level_path", 254767734)
  var `?param` = [getPtr displayName, getPtr openxrPath, getPtr openxrExtensionName]
  methodbind.ptrcall(self, addr `?param`[0])

proc registerInteractionProfile*(self: OpenXRInteractionProfileMetadata; displayName: String; openxrPath: String; openxrExtensionName: String): void =
  expandMethodBind(className OpenXRInteractionProfileMetadata, "register_interaction_profile", 254767734)
  var `?param` = [getPtr displayName, getPtr openxrPath, getPtr openxrExtensionName]
  methodbind.ptrcall(self, addr `?param`[0])

proc registerIoPath*(self: OpenXRInteractionProfileMetadata; interactionProfile: String; displayName: String; toplevelPath: String; openxrPath: String; openxrExtensionName: String; actionType: OpenXRAction_ActionType): void =
  expandMethodBind(className OpenXRInteractionProfileMetadata, "register_io_path", 3443511926)
  var `?param` = [getPtr interactionProfile, getPtr displayName, getPtr toplevelPath, getPtr openxrPath, getPtr openxrExtensionName, getPtr actionType]
  methodbind.ptrcall(self, addr `?param`[0])

const OpenXRInteractionProfileMetadata_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRInteractionProfileMetadata]): Table[string, string] = OpenXRInteractionProfileMetadata_vmap