{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationnode; export gdanimationnode

expandOnClassImported(AnimationNodeTimeSeek, AnimationNode)

proc setExplicitElapse*(self: AnimationNodeTimeSeek; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeTimeSeek, "set_explicit_elapse", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isExplicitElapse*(self: AnimationNodeTimeSeek): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeTimeSeek, "is_explicit_elapse", 36873697)
  methodbind.ptrcall(self, [], bool)

template explicitElapse*(self: AnimationNodeTimeSeek): untyped = self.isExplicitElapse()
template `explicitElapse=`*(self: AnimationNodeTimeSeek; value) = self.setExplicitElapse(value)
