{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorexportplatformpc; export gdeditorexportplatformpc

const EditorExportPlatformWindows_vmap =
  EditorExportPlatformPc.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorExportPlatformWindows]): Table[string, string] = EditorExportPlatformWindows_vmap