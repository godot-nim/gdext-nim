{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

const AudioBusLayout_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioBusLayout]): Table[string, string] = AudioBusLayout_vmap