{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdeditorexportplatformpc; export gdeditorexportplatformpc

const EditorExportPlatformWindows_vmap =
  EditorExportPlatformPc.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorExportPlatformWindows]): Table[string, string] = EditorExportPlatformWindows_vmap