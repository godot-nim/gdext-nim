{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresourceimporter; export gdresourceimporter

expandOnClassImported(ResourceImporterOggVorbis, ResourceImporter)

proc loadFromBuffer*(_: typedesc[ResourceImporterOggVorbis]; streamData: PackedByteArray): gdref AudioStreamOggVorbis =
  expandMethodBind(className ResourceImporterOggVorbis, "load_from_buffer", 354904730)
  var ret: encoded gdref AudioStreamOggVorbis
  methodbind.ptrcall([getPtr streamData], addr ret)
  (addr ret).decode_result(gdref AudioStreamOggVorbis)

proc loadFromFile*(_: typedesc[ResourceImporterOggVorbis]; path: String): gdref AudioStreamOggVorbis =
  expandMethodBind(className ResourceImporterOggVorbis, "load_from_file", 797568536)
  var ret: encoded gdref AudioStreamOggVorbis
  methodbind.ptrcall([getPtr path], addr ret)
  (addr ret).decode_result(gdref AudioStreamOggVorbis)
