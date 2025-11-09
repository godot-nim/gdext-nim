{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(FoldableGroup, Resource)

proc getExpandedContainer*(self: FoldableGroup): FoldableContainer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableGroup, "get_expanded_container", 1427441056)
  methodbind.ptrcall(self, [], FoldableContainer)

proc getContainers*(self: FoldableGroup): TypedArray[FoldableContainer] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableGroup, "get_containers", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[FoldableContainer])

proc setAllowFoldingAll*(self: FoldableGroup; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableGroup, "set_allow_folding_all", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isAllowFoldingAll*(self: FoldableGroup): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableGroup, "is_allow_folding_all", 36873697)
  methodbind.ptrcall(self, [], bool)

template allowFoldingAll*(self: FoldableGroup): untyped = self.isAllowFoldingAll()
template `allowFoldingAll=`*(self: FoldableGroup; value) = self.setAllowFoldingAll(value)
