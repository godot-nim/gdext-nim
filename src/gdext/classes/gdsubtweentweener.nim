{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtweener; export gdtweener

expandOnClassImported(SubtweenTweener, Tweener)

proc setDelay*(self: SubtweenTweener; delay: float64): gdref SubtweenTweener =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SubtweenTweener, "set_delay", 449181780)
  methodbind.ptrcall(self, [getPtr delay], gdref SubtweenTweener)
