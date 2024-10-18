{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorexportplatform; export gdeditorexportplatform

const EditorExportPlatformMacOs_vmap =
  EditorExportPlatform.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorExportPlatformMacOs]): Table[string, string] = EditorExportPlatformMacOs_vmap