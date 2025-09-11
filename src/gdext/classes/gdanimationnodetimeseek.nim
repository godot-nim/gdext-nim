{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationnode; export gdanimationnode

expandOnClassImported(AnimationNodeTimeSeek, AnimationNode)

proc setExplicitElapse*(self: AnimationNodeTimeSeek; enable: bool): void =
  expandMethodBind(className AnimationNodeTimeSeek, "set_explicit_elapse", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isExplicitElapse*(self: AnimationNodeTimeSeek): bool =
  expandMethodBind(className AnimationNodeTimeSeek, "is_explicit_elapse", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template explicitElapse*(self: AnimationNodeTimeSeek): untyped = self.isExplicitElapse()
template `explicitElapse=`*(self: AnimationNodeTimeSeek; value) = self.setExplicitElapse(value)
