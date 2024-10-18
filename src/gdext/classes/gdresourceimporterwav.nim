{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresourceimporter; export gdresourceimporter

const ResourceImporterWav_vmap =
  ResourceImporter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ResourceImporterWav]): Table[string, string] = ResourceImporterWav_vmap