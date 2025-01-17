{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtweener; export gdtweener

proc `from`*(self: PropertyTweener; value: Variant): gdref PropertyTweener =
  expandMethodBind(className PropertyTweener, "from", 4190193059)
  var ret: encoded gdref PropertyTweener
  methodbind.ptrcall(self, [getPtr value], addr ret)
  (addr ret).decode_result(gdref PropertyTweener)

proc fromCurrent*(self: PropertyTweener): gdref PropertyTweener =
  expandMethodBind(className PropertyTweener, "from_current", 4279177709)
  var ret: encoded gdref PropertyTweener
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref PropertyTweener)

proc asRelative*(self: PropertyTweener): gdref PropertyTweener =
  expandMethodBind(className PropertyTweener, "as_relative", 4279177709)
  var ret: encoded gdref PropertyTweener
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref PropertyTweener)

proc setTrans*(self: PropertyTweener; trans: Tween_TransitionType): gdref PropertyTweener =
  expandMethodBind(className PropertyTweener, "set_trans", 1899107404)
  var ret: encoded gdref PropertyTweener
  methodbind.ptrcall(self, [getPtr trans], addr ret)
  (addr ret).decode_result(gdref PropertyTweener)

proc setEase*(self: PropertyTweener; ease: Tween_EaseType): gdref PropertyTweener =
  expandMethodBind(className PropertyTweener, "set_ease", 1080455622)
  var ret: encoded gdref PropertyTweener
  methodbind.ptrcall(self, [getPtr ease], addr ret)
  (addr ret).decode_result(gdref PropertyTweener)

proc setCustomInterpolator*(self: PropertyTweener; interpolatorMethod: Callable): gdref PropertyTweener =
  expandMethodBind(className PropertyTweener, "set_custom_interpolator", 3174170268)
  var ret: encoded gdref PropertyTweener
  methodbind.ptrcall(self, [getPtr interpolatorMethod], addr ret)
  (addr ret).decode_result(gdref PropertyTweener)

proc setDelay*(self: PropertyTweener; delay: float64): gdref PropertyTweener =
  expandMethodBind(className PropertyTweener, "set_delay", 2171559331)
  var ret: encoded gdref PropertyTweener
  methodbind.ptrcall(self, [getPtr delay], addr ret)
  (addr ret).decode_result(gdref PropertyTweener)

const PropertyTweener_vmap =
  Tweener.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PropertyTweener]): Table[string, string] = PropertyTweener_vmap