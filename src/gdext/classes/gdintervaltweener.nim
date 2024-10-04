{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdtweener; export gdtweener

const IntervalTweener_vmap =
  Tweener.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[IntervalTweener]): Table[string, string] = IntervalTweener_vmap