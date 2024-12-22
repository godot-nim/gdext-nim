{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setInteractionProfilePath*(self: OpenXRInteractionProfile; interactionProfilePath: String): void =
  expandMethodBind(className OpenXRInteractionProfile, "set_interaction_profile_path", 83702148)
  var `?param` = [getPtr interactionProfilePath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInteractionProfilePath*(self: OpenXRInteractionProfile): String =
  expandMethodBind(className OpenXRInteractionProfile, "get_interaction_profile_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getBindingCount*(self: OpenXRInteractionProfile): int32 =
  expandMethodBind(className OpenXRInteractionProfile, "get_binding_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getBinding*(self: OpenXRInteractionProfile; index: int32): gdref OpenXRIPBinding =
  expandMethodBind(className OpenXRInteractionProfile, "get_binding", 3934429652)
  var `?param` = [getPtr index]
  var ret: encoded gdref OpenXRIPBinding
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref OpenXRIPBinding)

proc setBindings*(self: OpenXRInteractionProfile; bindings: Array): void =
  expandMethodBind(className OpenXRInteractionProfile, "set_bindings", 381264803)
  var `?param` = [getPtr bindings]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBindings*(self: OpenXRInteractionProfile): Array =
  expandMethodBind(className OpenXRInteractionProfile, "get_bindings", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

template interactionProfilePath*(self: OpenXRInteractionProfile): untyped = self.getInteractionProfilePath()
template `interactionProfilePath=`*(self: OpenXRInteractionProfile; value) = self.setInteractionProfilePath(value)

template bindings*(self: OpenXRInteractionProfile): untyped = self.getBindings()
template `bindings=`*(self: OpenXRInteractionProfile; value) = self.setBindings(value)

const OpenXRInteractionProfile_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRInteractionProfile]): Table[string, string] = OpenXRInteractionProfile_vmap