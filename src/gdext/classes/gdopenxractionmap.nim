{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setActionSets*(self: OpenXrActionMap; actionSets: Array): void =
  expandMethodBind(className OpenXrActionMap, "set_action_sets", 381264803)
  var `?param` = [getPtr actionSets]
  methodbind.ptrcall(self, addr `?param`[0])

proc getActionSets*(self: OpenXrActionMap): Array =
  expandMethodBind(className OpenXrActionMap, "get_action_sets", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

proc getActionSetCount*(self: OpenXrActionMap): int32 =
  expandMethodBind(className OpenXrActionMap, "get_action_set_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc findActionSet*(self: OpenXrActionMap; name: String): gdref OpenXrActionSet =
  expandMethodBind(className OpenXrActionMap, "find_action_set", 1888809267)
  var `?param` = [getPtr name]
  var ret: encoded gdref OpenXrActionSet
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref OpenXrActionSet)

proc getActionSet*(self: OpenXrActionMap; idx: int32): gdref OpenXrActionSet =
  expandMethodBind(className OpenXrActionMap, "get_action_set", 1789580336)
  var `?param` = [getPtr idx]
  var ret: encoded gdref OpenXrActionSet
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref OpenXrActionSet)

proc addActionSet*(self: OpenXrActionMap; actionSet: gdref OpenXrActionSet): void =
  expandMethodBind(className OpenXrActionMap, "add_action_set", 2093310581)
  var `?param` = [getPtr actionSet]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeActionSet*(self: OpenXrActionMap; actionSet: gdref OpenXrActionSet): void =
  expandMethodBind(className OpenXrActionMap, "remove_action_set", 2093310581)
  var `?param` = [getPtr actionSet]
  methodbind.ptrcall(self, addr `?param`[0])

proc setInteractionProfiles*(self: OpenXrActionMap; interactionProfiles: Array): void =
  expandMethodBind(className OpenXrActionMap, "set_interaction_profiles", 381264803)
  var `?param` = [getPtr interactionProfiles]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInteractionProfiles*(self: OpenXrActionMap): Array =
  expandMethodBind(className OpenXrActionMap, "get_interaction_profiles", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

proc getInteractionProfileCount*(self: OpenXrActionMap): int32 =
  expandMethodBind(className OpenXrActionMap, "get_interaction_profile_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc findInteractionProfile*(self: OpenXrActionMap; name: String): gdref OpenXrInteractionProfile =
  expandMethodBind(className OpenXrActionMap, "find_interaction_profile", 3095875538)
  var `?param` = [getPtr name]
  var ret: encoded gdref OpenXrInteractionProfile
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref OpenXrInteractionProfile)

proc getInteractionProfile*(self: OpenXrActionMap; idx: int32): gdref OpenXrInteractionProfile =
  expandMethodBind(className OpenXrActionMap, "get_interaction_profile", 2546151210)
  var `?param` = [getPtr idx]
  var ret: encoded gdref OpenXrInteractionProfile
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref OpenXrInteractionProfile)

proc addInteractionProfile*(self: OpenXrActionMap; interactionProfile: gdref OpenXrInteractionProfile): void =
  expandMethodBind(className OpenXrActionMap, "add_interaction_profile", 2697953512)
  var `?param` = [getPtr interactionProfile]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeInteractionProfile*(self: OpenXrActionMap; interactionProfile: gdref OpenXrInteractionProfile): void =
  expandMethodBind(className OpenXrActionMap, "remove_interaction_profile", 2697953512)
  var `?param` = [getPtr interactionProfile]
  methodbind.ptrcall(self, addr `?param`[0])

proc createDefaultActionSets*(self: OpenXrActionMap): void =
  expandMethodBind(className OpenXrActionMap, "create_default_action_sets", 3218959716)
  methodbind.ptrcall(self, nil)

template actionSets*(self: OpenXrActionMap): untyped = self.getActionSets()
template `actionSets=`*(self: OpenXrActionMap; value) = self.setActionSets(value)

template interactionProfiles*(self: OpenXrActionMap): untyped = self.getInteractionProfiles()
template `interactionProfiles=`*(self: OpenXrActionMap; value) = self.setInteractionProfiles(value)

const OpenXrActionMap_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXrActionMap]): Table[string, string] = OpenXrActionMap_vmap