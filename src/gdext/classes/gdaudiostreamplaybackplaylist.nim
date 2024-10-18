{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostreamplayback; export gdaudiostreamplayback

const AudioStreamPlaybackPlaylist_vmap =
  AudioStreamPlayback.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamPlaybackPlaylist]): Table[string, string] = AudioStreamPlaybackPlaylist_vmap