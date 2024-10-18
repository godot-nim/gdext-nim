{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvideostream; export gdvideostream

const VideoStreamTheora_vmap =
  VideoStream.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VideoStreamTheora]): Table[string, string] = VideoStreamTheora_vmap