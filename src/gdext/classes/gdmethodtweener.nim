{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtweener; export gdtweener

expandOnClassImported(MethodTweener, Tweener)

proc setDelay*(self: MethodTweener; delay: float64): gdref MethodTweener =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MethodTweener, "set_delay", 266477812)
  methodbind.ptrcall(self, [getPtr delay], gdref MethodTweener)

proc setTrans*(self: MethodTweener; trans: Tween_TransitionType): gdref MethodTweener =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MethodTweener, "set_trans", 3740975367)
  methodbind.ptrcall(self, [getPtr trans], gdref MethodTweener)

proc setEase*(self: MethodTweener; ease: Tween_EaseType): gdref MethodTweener =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MethodTweener, "set_ease", 315540545)
  methodbind.ptrcall(self, [getPtr ease], gdref MethodTweener)
