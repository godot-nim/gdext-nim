{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

const JavaScriptObject_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[JavaScriptObject]): Table[string, string] = JavaScriptObject_vmap