{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresourceimporter; export gdresourceimporter

const ResourceImporterBmFont_vmap =
  ResourceImporter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ResourceImporterBmFont]): Table[string, string] = ResourceImporterBmFont_vmap