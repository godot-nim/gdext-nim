{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

const AudioStreamMicrophone_vmap =
  AudioStream.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamMicrophone]): Table[string, string] = AudioStreamMicrophone_vmap