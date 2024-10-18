{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorexportplatform; export gdeditorexportplatform

const EditorExportPlatformAndroid_vmap =
  EditorExportPlatform.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorExportPlatformAndroid]): Table[string, string] = EditorExportPlatformAndroid_vmap