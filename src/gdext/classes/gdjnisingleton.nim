{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

const JNISingleton_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[JNISingleton]): Table[string, string] = JNISingleton_vmap