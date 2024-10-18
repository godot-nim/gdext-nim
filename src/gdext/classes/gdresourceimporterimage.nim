{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresourceimporter; export gdresourceimporter

const ResourceImporterImage_vmap =
  ResourceImporter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ResourceImporterImage]): Table[string, string] = ResourceImporterImage_vmap