{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostreamplayback; export gdaudiostreamplayback

const AudioStreamPlaybackSynchronized_vmap =
  AudioStreamPlayback.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamPlaybackSynchronized]): Table[string, string] = AudioStreamPlaybackSynchronized_vmap