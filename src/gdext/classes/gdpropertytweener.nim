{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtweener; export gdtweener

expandOnClassImported(PropertyTweener, Tweener)

proc `from`*(self: PropertyTweener; value: Variant): gdref PropertyTweener =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PropertyTweener, "from", 4190193059)
  methodbind.ptrcall(self, [getPtr value], gdref PropertyTweener)

proc fromCurrent*(self: PropertyTweener): gdref PropertyTweener =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PropertyTweener, "from_current", 4279177709)
  methodbind.ptrcall(self, [], gdref PropertyTweener)

proc asRelative*(self: PropertyTweener): gdref PropertyTweener =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PropertyTweener, "as_relative", 4279177709)
  methodbind.ptrcall(self, [], gdref PropertyTweener)

proc setTrans*(self: PropertyTweener; trans: Tween_TransitionType): gdref PropertyTweener =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PropertyTweener, "set_trans", 1899107404)
  methodbind.ptrcall(self, [getPtr trans], gdref PropertyTweener)

proc setEase*(self: PropertyTweener; ease: Tween_EaseType): gdref PropertyTweener =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PropertyTweener, "set_ease", 1080455622)
  methodbind.ptrcall(self, [getPtr ease], gdref PropertyTweener)

proc setCustomInterpolator*(self: PropertyTweener; interpolatorMethod: Callable): gdref PropertyTweener =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PropertyTweener, "set_custom_interpolator", 3174170268)
  methodbind.ptrcall(self, [getPtr interpolatorMethod], gdref PropertyTweener)

proc setDelay*(self: PropertyTweener; delay: float64): gdref PropertyTweener =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PropertyTweener, "set_delay", 2171559331)
  methodbind.ptrcall(self, [getPtr delay], gdref PropertyTweener)
