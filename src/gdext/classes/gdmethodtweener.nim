{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtweener; export gdtweener

proc setDelay*(self: MethodTweener; delay: float64): gdref MethodTweener =
  expandMethodBind(className MethodTweener, "set_delay", 266477812)
  var ret: encoded gdref MethodTweener
  methodbind.ptrcall(self, [getPtr delay], addr ret)
  (addr ret).decode_result(gdref MethodTweener)

proc setTrans*(self: MethodTweener; trans: Tween_TransitionType): gdref MethodTweener =
  expandMethodBind(className MethodTweener, "set_trans", 3740975367)
  var ret: encoded gdref MethodTweener
  methodbind.ptrcall(self, [getPtr trans], addr ret)
  (addr ret).decode_result(gdref MethodTweener)

proc setEase*(self: MethodTweener; ease: Tween_EaseType): gdref MethodTweener =
  expandMethodBind(className MethodTweener, "set_ease", 315540545)
  var ret: encoded gdref MethodTweener
  methodbind.ptrcall(self, [getPtr ease], addr ret)
  (addr ret).decode_result(gdref MethodTweener)

const MethodTweener_vmap =
  Tweener.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MethodTweener]): Table[string, string] = MethodTweener_vmap