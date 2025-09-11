{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationnode; export gdanimationnode

expandOnClassImported(AnimationNodeSync, AnimationNode)

proc setUseSync*(self: AnimationNodeSync; enable: bool): void =
  expandMethodBind(className AnimationNodeSync, "set_use_sync", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isUsingSync*(self: AnimationNodeSync): bool =
  expandMethodBind(className AnimationNodeSync, "is_using_sync", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template sync*(self: AnimationNodeSync): untyped = self.isUsingSync()
template `sync=`*(self: AnimationNodeSync; value) = self.setUseSync(value)
