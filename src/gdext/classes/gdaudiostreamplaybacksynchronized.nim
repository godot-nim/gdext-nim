{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdaudiostreamplayback; export gdaudiostreamplayback

const AudioStreamPlaybackSynchronized_vmap =
  AudioStreamPlayback.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamPlaybackSynchronized]): Table[string, string] = AudioStreamPlaybackSynchronized_vmap