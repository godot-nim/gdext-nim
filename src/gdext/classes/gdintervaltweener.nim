{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtweener; export gdtweener

const IntervalTweener_vmap =
  Tweener.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[IntervalTweener]): Table[string, string] = IntervalTweener_vmap