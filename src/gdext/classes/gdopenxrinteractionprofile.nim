{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setInteractionProfilePath*(self: OpenXrInteractionProfile; interactionProfilePath: String): void =
  expandMethodBind(className OpenXrInteractionProfile, "set_interaction_profile_path", 83702148)
  var `?param` = [getPtr interactionProfilePath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInteractionProfilePath*(self: OpenXrInteractionProfile): String =
  expandMethodBind(className OpenXrInteractionProfile, "get_interaction_profile_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getBindingCount*(self: OpenXrInteractionProfile): int32 =
  expandMethodBind(className OpenXrInteractionProfile, "get_binding_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getBinding*(self: OpenXrInteractionProfile; index: int32): gdref OpenXripBinding =
  expandMethodBind(className OpenXrInteractionProfile, "get_binding", 3934429652)
  var `?param` = [getPtr index]
  var ret: encoded gdref OpenXripBinding
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref OpenXripBinding)

proc setBindings*(self: OpenXrInteractionProfile; bindings: Array): void =
  expandMethodBind(className OpenXrInteractionProfile, "set_bindings", 381264803)
  var `?param` = [getPtr bindings]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBindings*(self: OpenXrInteractionProfile): Array =
  expandMethodBind(className OpenXrInteractionProfile, "get_bindings", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

template interactionProfilePath*(self: OpenXrInteractionProfile): untyped = self.getInteractionProfilePath()
template `interactionProfilePath=`*(self: OpenXrInteractionProfile; value) = self.setInteractionProfilePath(value)

template bindings*(self: OpenXrInteractionProfile): untyped = self.getBindings()
template `bindings=`*(self: OpenXrInteractionProfile; value) = self.setBindings(value)

const OpenXrInteractionProfile_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXrInteractionProfile]): Table[string, string] = OpenXrInteractionProfile_vmap