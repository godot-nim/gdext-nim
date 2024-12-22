{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorexportplatformpc; export gdeditorexportplatformpc

const EditorExportPlatformLinuxBSD_vmap =
  EditorExportPlatformPC.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorExportPlatformLinuxBSD]): Table[string, string] = EditorExportPlatformLinuxBSD_vmap