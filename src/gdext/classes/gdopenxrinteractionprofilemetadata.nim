{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(OpenXRInteractionProfileMetadata, Object)

proc registerProfileRename*(self: OpenXRInteractionProfileMetadata; oldName: String; newName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInteractionProfileMetadata, "register_profile_rename", 3186203200)
  methodbind.ptrcall(self, [getPtr oldName, getPtr newName], void)

proc registerTopLevelPath*(self: OpenXRInteractionProfileMetadata; displayName: String; openxrPath: String; openxrExtensionName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInteractionProfileMetadata, "register_top_level_path", 254767734)
  methodbind.ptrcall(self, [getPtr displayName, getPtr openxrPath, getPtr openxrExtensionName], void)

proc registerInteractionProfile*(self: OpenXRInteractionProfileMetadata; displayName: String; openxrPath: String; openxrExtensionName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInteractionProfileMetadata, "register_interaction_profile", 254767734)
  methodbind.ptrcall(self, [getPtr displayName, getPtr openxrPath, getPtr openxrExtensionName], void)

proc registerIoPath*(self: OpenXRInteractionProfileMetadata; interactionProfile: String; displayName: String; toplevelPath: String; openxrPath: String; openxrExtensionName: String; actionType: OpenXRAction_ActionType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInteractionProfileMetadata, "register_io_path", 3443511926)
  methodbind.ptrcall(self, [getPtr interactionProfile, getPtr displayName, getPtr toplevelPath, getPtr openxrPath, getPtr openxrExtensionName, getPtr actionType], void)
