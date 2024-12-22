{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorexportplatform; export gdeditorexportplatform

const EditorExportPlatformPC_vmap =
  EditorExportPlatform.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorExportPlatformPC]): Table[string, string] = EditorExportPlatformPC_vmap