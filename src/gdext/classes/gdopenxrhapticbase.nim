{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

const OpenXRHapticBase_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRHapticBase]): Table[string, string] = OpenXRHapticBase_vmap