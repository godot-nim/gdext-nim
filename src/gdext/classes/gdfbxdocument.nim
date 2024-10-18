{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgltfdocument; export gdgltfdocument

const FbxDocument_vmap =
  GltfDocument.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[FbxDocument]): Table[string, string] = FbxDocument_vmap