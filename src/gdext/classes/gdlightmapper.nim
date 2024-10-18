{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

const Lightmapper_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Lightmapper]): Table[string, string] = Lightmapper_vmap