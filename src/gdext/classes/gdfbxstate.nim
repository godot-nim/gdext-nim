{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgltfstate; export gdgltfstate

expandOnClassImported(FBXState, GLTFState)

proc getAllowGeometryHelperNodes*(self: FBXState): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FBXState, "get_allow_geometry_helper_nodes", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setAllowGeometryHelperNodes*(self: FBXState; allow: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FBXState, "set_allow_geometry_helper_nodes", 2586408642)
  methodbind.ptrcall(self, [getPtr allow], void)

template allowGeometryHelperNodes*(self: FBXState): untyped = self.getAllowGeometryHelperNodes()
template `allowGeometryHelperNodes=`*(self: FBXState; value) = self.setAllowGeometryHelperNodes(value)
