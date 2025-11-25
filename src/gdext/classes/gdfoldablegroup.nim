{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(FoldableGroup, Resource)

proc getExpandedContainer*(self: FoldableGroup): FoldableContainer =
  expandMethodBind(className FoldableGroup, "get_expanded_container", 1427441056)
  var ret: encoded FoldableContainer
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(FoldableContainer)

proc getContainers*(self: FoldableGroup): Array[FoldableContainer] =
  expandMethodBind(className FoldableGroup, "get_containers", 3995934104)
  var ret: encoded Array[FoldableContainer]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array[FoldableContainer])

proc setAllowFoldingAll*(self: FoldableGroup; enabled: bool): void =
  expandMethodBind(className FoldableGroup, "set_allow_folding_all", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isAllowFoldingAll*(self: FoldableGroup): bool =
  expandMethodBind(className FoldableGroup, "is_allow_folding_all", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template allowFoldingAll*(self: FoldableGroup): untyped = self.isAllowFoldingAll()
template `allowFoldingAll=`*(self: FoldableGroup; value) = self.setAllowFoldingAll(value)
