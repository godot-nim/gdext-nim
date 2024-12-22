{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgltfdocumentextension; export gdgltfdocumentextension

const GLTFDocumentExtensionConvertImporterMesh_vmap =
  GLTFDocumentExtension.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GLTFDocumentExtensionConvertImporterMesh]): Table[string, string] = GLTFDocumentExtensionConvertImporterMesh_vmap