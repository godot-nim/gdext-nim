{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtweener; export gdtweener

expandOnClassImported(CallbackTweener, Tweener)

proc setDelay*(self: CallbackTweener; delay: float64): gdref CallbackTweener =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CallbackTweener, "set_delay", 3008182292)
  methodbind.ptrcall(self, [getPtr delay], gdref CallbackTweener)
