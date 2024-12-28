{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setActionSets*(self: OpenXRActionMap; actionSets: Array): void =
  expandMethodBind(className OpenXRActionMap, "set_action_sets", 381264803)
  methodbind.ptrcall(self, [getPtr actionSets])

proc getActionSets*(self: OpenXRActionMap): Array =
  expandMethodBind(className OpenXRActionMap, "get_action_sets", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array)

proc getActionSetCount*(self: OpenXRActionMap): int32 =
  expandMethodBind(className OpenXRActionMap, "get_action_set_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc findActionSet*(self: OpenXRActionMap; name: String): gdref OpenXRActionSet =
  expandMethodBind(className OpenXRActionMap, "find_action_set", 1888809267)
  var ret: encoded gdref OpenXRActionSet
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(gdref OpenXRActionSet)

proc getActionSet*(self: OpenXRActionMap; idx: int32): gdref OpenXRActionSet =
  expandMethodBind(className OpenXRActionMap, "get_action_set", 1789580336)
  var ret: encoded gdref OpenXRActionSet
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(gdref OpenXRActionSet)

proc addActionSet*(self: OpenXRActionMap; actionSet: gdref OpenXRActionSet): void =
  expandMethodBind(className OpenXRActionMap, "add_action_set", 2093310581)
  methodbind.ptrcall(self, [getPtr actionSet])

proc removeActionSet*(self: OpenXRActionMap; actionSet: gdref OpenXRActionSet): void =
  expandMethodBind(className OpenXRActionMap, "remove_action_set", 2093310581)
  methodbind.ptrcall(self, [getPtr actionSet])

proc setInteractionProfiles*(self: OpenXRActionMap; interactionProfiles: Array): void =
  expandMethodBind(className OpenXRActionMap, "set_interaction_profiles", 381264803)
  methodbind.ptrcall(self, [getPtr interactionProfiles])

proc getInteractionProfiles*(self: OpenXRActionMap): Array =
  expandMethodBind(className OpenXRActionMap, "get_interaction_profiles", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array)

proc getInteractionProfileCount*(self: OpenXRActionMap): int32 =
  expandMethodBind(className OpenXRActionMap, "get_interaction_profile_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc findInteractionProfile*(self: OpenXRActionMap; name: String): gdref OpenXRInteractionProfile =
  expandMethodBind(className OpenXRActionMap, "find_interaction_profile", 3095875538)
  var ret: encoded gdref OpenXRInteractionProfile
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(gdref OpenXRInteractionProfile)

proc getInteractionProfile*(self: OpenXRActionMap; idx: int32): gdref OpenXRInteractionProfile =
  expandMethodBind(className OpenXRActionMap, "get_interaction_profile", 2546151210)
  var ret: encoded gdref OpenXRInteractionProfile
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(gdref OpenXRInteractionProfile)

proc addInteractionProfile*(self: OpenXRActionMap; interactionProfile: gdref OpenXRInteractionProfile): void =
  expandMethodBind(className OpenXRActionMap, "add_interaction_profile", 2697953512)
  methodbind.ptrcall(self, [getPtr interactionProfile])

proc removeInteractionProfile*(self: OpenXRActionMap; interactionProfile: gdref OpenXRInteractionProfile): void =
  expandMethodBind(className OpenXRActionMap, "remove_interaction_profile", 2697953512)
  methodbind.ptrcall(self, [getPtr interactionProfile])

proc createDefaultActionSets*(self: OpenXRActionMap): void =
  expandMethodBind(className OpenXRActionMap, "create_default_action_sets", 3218959716)
  methodbind.ptrcall(self, [])

template actionSets*(self: OpenXRActionMap): untyped = self.getActionSets()
template `actionSets=`*(self: OpenXRActionMap; value) = self.setActionSets(value)

template interactionProfiles*(self: OpenXRActionMap): untyped = self.getInteractionProfiles()
template `interactionProfiles=`*(self: OpenXRActionMap; value) = self.setInteractionProfiles(value)

const OpenXRActionMap_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRActionMap]): Table[string, string] = OpenXRActionMap_vmap