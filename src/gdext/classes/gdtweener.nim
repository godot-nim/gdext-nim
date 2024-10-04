{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
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