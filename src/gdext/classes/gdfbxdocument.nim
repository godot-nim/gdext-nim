{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgltfdocument; export gdgltfdocument

const FBXDocument_vmap =
  GLTFDocument.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[FBXDocument]): Table[string, string] = FBXDocument_vmap