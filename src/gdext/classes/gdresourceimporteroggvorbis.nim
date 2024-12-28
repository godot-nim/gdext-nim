{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresourceimporter; export gdresourceimporter

proc loadFromBuffer*(_: typedesc[ResourceImporterOggVorbis]; buffer: PackedByteArray): gdref AudioStreamOggVorbis =
  expandMethodBind(className ResourceImporterOggVorbis, "load_from_buffer", 354904730)
  var ret: encoded gdref AudioStreamOggVorbis
  methodbind.ptrcall([getPtr buffer], addr ret)
  (addr ret).decode_result(gdref AudioStreamOggVorbis)

proc loadFromFile*(_: typedesc[ResourceImporterOggVorbis]; path: String): gdref AudioStreamOggVorbis =
  expandMethodBind(className ResourceImporterOggVorbis, "load_from_file", 797568536)
  var ret: encoded gdref AudioStreamOggVorbis
  methodbind.ptrcall([getPtr path], addr ret)
  (addr ret).decode_result(gdref AudioStreamOggVorbis)

const ResourceImporterOggVorbis_vmap =
  ResourceImporter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ResourceImporterOggVorbis]): Table[string, string] = ResourceImporterOggVorbis_vmap