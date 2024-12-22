{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgltfstate; export gdgltfstate

proc getAllowGeometryHelperNodes*(self: FBXState): bool =
  expandMethodBind(className FBXState, "get_allow_geometry_helper_nodes", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAllowGeometryHelperNodes*(self: FBXState; allow: bool): void =
  expandMethodBind(className FBXState, "set_allow_geometry_helper_nodes", 2586408642)
  var `?param` = [getPtr allow]
  methodbind.ptrcall(self, addr `?param`[0])

template allowGeometryHelperNodes*(self: FBXState): untyped = self.getAllowGeometryHelperNodes()
template `allowGeometryHelperNodes=`*(self: FBXState; value) = self.setAllowGeometryHelperNodes(value)

const FBXState_vmap =
  GLTFState.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[FBXState]): Table[string, string] = FBXState_vmap