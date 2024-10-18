{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

const Tweener_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Tweener]): Table[string, string] = Tweener_vmap

proc finished*(self: Tweener): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("finished")
  self.emitSignal(signalname)