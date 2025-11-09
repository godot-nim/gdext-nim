{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(OpenXRActionMap, Resource)

proc setActionSets*(self: OpenXRActionMap; actionSets: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionMap, "set_action_sets", 381264803)
  methodbind.ptrcall(self, [getPtr actionSets], void)

proc getActionSets*(self: OpenXRActionMap): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionMap, "get_action_sets", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc getActionSetCount*(self: OpenXRActionMap): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionMap, "get_action_set_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc findActionSet*(self: OpenXRActionMap; name: String): gdref OpenXRActionSet =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionMap, "find_action_set", 1888809267)
  methodbind.ptrcall(self, [getPtr name], gdref OpenXRActionSet)

proc getActionSet*(self: OpenXRActionMap; idx: int32): gdref OpenXRActionSet =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionMap, "get_action_set", 1789580336)
  methodbind.ptrcall(self, [getPtr idx], gdref OpenXRActionSet)

proc addActionSet*(self: OpenXRActionMap; actionSet: gdref OpenXRActionSet): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionMap, "add_action_set", 2093310581)
  methodbind.ptrcall(self, [getPtr actionSet], void)

proc removeActionSet*(self: OpenXRActionMap; actionSet: gdref OpenXRActionSet): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionMap, "remove_action_set", 2093310581)
  methodbind.ptrcall(self, [getPtr actionSet], void)

proc setInteractionProfiles*(self: OpenXRActionMap; interactionProfiles: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionMap, "set_interaction_profiles", 381264803)
  methodbind.ptrcall(self, [getPtr interactionProfiles], void)

proc getInteractionProfiles*(self: OpenXRActionMap): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionMap, "get_interaction_profiles", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc getInteractionProfileCount*(self: OpenXRActionMap): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionMap, "get_interaction_profile_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc findInteractionProfile*(self: OpenXRActionMap; name: String): gdref OpenXRInteractionProfile =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionMap, "find_interaction_profile", 3095875538)
  methodbind.ptrcall(self, [getPtr name], gdref OpenXRInteractionProfile)

proc getInteractionProfile*(self: OpenXRActionMap; idx: int32): gdref OpenXRInteractionProfile =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionMap, "get_interaction_profile", 2546151210)
  methodbind.ptrcall(self, [getPtr idx], gdref OpenXRInteractionProfile)

proc addInteractionProfile*(self: OpenXRActionMap; interactionProfile: gdref OpenXRInteractionProfile): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionMap, "add_interaction_profile", 2697953512)
  methodbind.ptrcall(self, [getPtr interactionProfile], void)

proc removeInteractionProfile*(self: OpenXRActionMap; interactionProfile: gdref OpenXRInteractionProfile): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionMap, "remove_interaction_profile", 2697953512)
  methodbind.ptrcall(self, [getPtr interactionProfile], void)

proc createDefaultActionSets*(self: OpenXRActionMap): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionMap, "create_default_action_sets", 3218959716)
  methodbind.ptrcall(self, [], void)

template actionSets*(self: OpenXRActionMap): untyped = self.getActionSets()
template `actionSets=`*(self: OpenXRActionMap; value) = self.setActionSets(value)

template interactionProfiles*(self: OpenXRActionMap): untyped = self.getInteractionProfiles()
template `interactionProfiles=`*(self: OpenXRActionMap; value) = self.setInteractionProfiles(value)
