{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresourceimporter; export gdresourceimporter

expandOnClassImported(ResourceImporterOggVorbis, ResourceImporter)

proc loadFromBuffer*(_: typedesc[ResourceImporterOggVorbis]; streamData: PackedByteArray): gdref AudioStreamOggVorbis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceImporterOggVorbis, "load_from_buffer", 354904730)
  methodbind.ptrcall([getPtr streamData], gdref AudioStreamOggVorbis)

proc loadFromFile*(_: typedesc[ResourceImporterOggVorbis]; path: String): gdref AudioStreamOggVorbis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceImporterOggVorbis, "load_from_file", 797568536)
  methodbind.ptrcall([getPtr path], gdref AudioStreamOggVorbis)
