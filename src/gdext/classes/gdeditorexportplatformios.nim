{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorexportplatform; export gdeditorexportplatform

const EditorExportPlatformIos_vmap =
  EditorExportPlatform.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorExportPlatformIos]): Table[string, string] = EditorExportPlatformIos_vmap