{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

const JavaClass_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[JavaClass]): Table[string, string] = JavaClass_vmap