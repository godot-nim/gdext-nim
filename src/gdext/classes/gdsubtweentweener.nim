{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtweener; export gdtweener

proc setDelay*(self: SubtweenTweener; delay: float64): gdref SubtweenTweener =
  expandMethodBind(className SubtweenTweener, "set_delay", 449181780)
  var ret: encoded gdref SubtweenTweener
  methodbind.ptrcall(self, [getPtr delay], addr ret)
  (addr ret).decode_result(gdref SubtweenTweener)

const SubtweenTweener_vmap =
  Tweener.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SubtweenTweener]): Table[string, string] = SubtweenTweener_vmap