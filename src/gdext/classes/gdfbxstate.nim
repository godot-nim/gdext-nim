{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdgltfstate; export gdgltfstate

proc getAllowGeometryHelperNodes*(self: FbxState): bool =
  expandMethodBind(className FbxState, "get_allow_geometry_helper_nodes", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAllowGeometryHelperNodes*(self: FbxState; allow: bool): void =
  expandMethodBind(className FbxState, "set_allow_geometry_helper_nodes", 2586408642)
  var `?param` = [getPtr allow]
  methodbind.ptrcall(self, addr `?param`[0])

template allowGeometryHelperNodes*(self: FbxState): untyped = self.getAllowGeometryHelperNodes()
template `allowGeometryHelperNodes=`*(self: FbxState; value) = self.setAllowGeometryHelperNodes(value)

const FbxState_vmap =
  GltfState.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[FbxState]): Table[string, string] = FbxState_vmap