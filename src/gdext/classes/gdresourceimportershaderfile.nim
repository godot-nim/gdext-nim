{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresourceimporter; export gdresourceimporter

const ResourceImporterShaderFile_vmap =
  ResourceImporter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ResourceImporterShaderFile]): Table[string, string] = ResourceImporterShaderFile_vmap