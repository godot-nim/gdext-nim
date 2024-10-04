{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdaudiostreamplaybackresampled; export gdaudiostreamplaybackresampled

const AudioStreamPlaybackOggVorbis_vmap =
  AudioStreamPlaybackResampled.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamPlaybackOggVorbis]): Table[string, string] = AudioStreamPlaybackOggVorbis_vmap