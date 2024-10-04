{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdgltfdocument; export gdgltfdocument

const FbxDocument_vmap =
  GltfDocument.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[FbxDocument]): Table[string, string] = FbxDocument_vmap