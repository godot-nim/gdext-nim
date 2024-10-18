{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc registerProfileRename*(self: OpenXrInteractionProfileMetadata; oldName: String; newName: String): void =
  expandMethodBind(className OpenXrInteractionProfileMetadata, "register_profile_rename", 3186203200)
  var `?param` = [getPtr oldName, getPtr newName]
  methodbind.ptrcall(self, addr `?param`[0])

proc registerTopLevelPath*(self: OpenXrInteractionProfileMetadata; displayName: String; openxrPath: String; openxrExtensionName: String): void =
  expandMethodBind(className OpenXrInteractionProfileMetadata, "register_top_level_path", 254767734)
  var `?param` = [getPtr displayName, getPtr openxrPath, getPtr openxrExtensionName]
  methodbind.ptrcall(self, addr `?param`[0])

proc registerInteractionProfile*(self: OpenXrInteractionProfileMetadata; displayName: String; openxrPath: String; openxrExtensionName: String): void =
  expandMethodBind(className OpenXrInteractionProfileMetadata, "register_interaction_profile", 254767734)
  var `?param` = [getPtr displayName, getPtr openxrPath, getPtr openxrExtensionName]
  methodbind.ptrcall(self, addr `?param`[0])

proc registerIoPath*(self: OpenXrInteractionProfileMetadata; interactionProfile: String; displayName: String; toplevelPath: String; openxrPath: String; openxrExtensionName: String; actionType: OpenXrAction_ActionType): void =
  expandMethodBind(className OpenXrInteractionProfileMetadata, "register_io_path", 3443511926)
  var `?param` = [getPtr interactionProfile, getPtr displayName, getPtr toplevelPath, getPtr openxrPath, getPtr openxrExtensionName, getPtr actionType]
  methodbind.ptrcall(self, addr `?param`[0])

const OpenXrInteractionProfileMetadata_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXrInteractionProfileMetadata]): Table[string, string] = OpenXrInteractionProfileMetadata_vmap