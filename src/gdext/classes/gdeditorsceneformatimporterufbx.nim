{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorsceneformatimporter; export gdeditorsceneformatimporter

const EditorSceneFormatImporterUfbx_vmap =
  EditorSceneFormatImporter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorSceneFormatImporterUfbx]): Table[string, string] = EditorSceneFormatImporterUfbx_vmap