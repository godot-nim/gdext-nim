{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgltfstate; export gdgltfstate

expandOnClassImported(FBXState, GLTFState)

proc getAllowGeometryHelperNodes*(self: FBXState): bool =
  expandMethodBind(className FBXState, "get_allow_geometry_helper_nodes", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setAllowGeometryHelperNodes*(self: FBXState; allow: bool): void =
  expandMethodBind(className FBXState, "set_allow_geometry_helper_nodes", 2586408642)
  methodbind.ptrcall(self, [getPtr allow])

template allowGeometryHelperNodes*(self: FBXState): untyped = self.getAllowGeometryHelperNodes()
template `allowGeometryHelperNodes=`*(self: FBXState; value) = self.setAllowGeometryHelperNodes(value)
