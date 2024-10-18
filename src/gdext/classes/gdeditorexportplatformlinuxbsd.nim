{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorexportplatformpc; export gdeditorexportplatformpc

const EditorExportPlatformLinuxBsd_vmap =
  EditorExportPlatformPc.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorExportPlatformLinuxBsd]): Table[string, string] = EditorExportPlatformLinuxBsd_vmap