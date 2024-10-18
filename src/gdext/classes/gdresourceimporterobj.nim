{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresourceimporter; export gdresourceimporter

const ResourceImporterObj_vmap =
  ResourceImporter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ResourceImporterObj]): Table[string, string] = ResourceImporterObj_vmap