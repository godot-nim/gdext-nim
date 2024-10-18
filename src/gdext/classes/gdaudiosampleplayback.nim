{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

const AudioSamplePlayback_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioSamplePlayback]): Table[string, string] = AudioSamplePlayback_vmap