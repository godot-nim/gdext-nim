{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationnode; export gdanimationnode

expandOnClassImported(AnimationNodeSync, AnimationNode)

proc setUseSync*(self: AnimationNodeSync; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeSync, "set_use_sync", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingSync*(self: AnimationNodeSync): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeSync, "is_using_sync", 36873697)
  methodbind.ptrcall(self, [], bool)

template sync*(self: AnimationNodeSync): untyped = self.isUsingSync()
template `sync=`*(self: AnimationNodeSync; value) = self.setUseSync(value)
