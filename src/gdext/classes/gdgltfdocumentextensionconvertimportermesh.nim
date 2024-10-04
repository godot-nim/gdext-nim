{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdgltfdocumentextension; export gdgltfdocumentextension

const GltfDocumentExtensionConvertImporterMesh_vmap =
  GltfDocumentExtension.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GltfDocumentExtensionConvertImporterMesh]): Table[string, string] = GltfDocumentExtensionConvertImporterMesh_vmap