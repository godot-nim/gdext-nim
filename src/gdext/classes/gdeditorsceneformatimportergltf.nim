{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorsceneformatimporter; export gdeditorsceneformatimporter

const EditorSceneFormatImporterGltf_vmap =
  EditorSceneFormatImporter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorSceneFormatImporterGltf]): Table[string, string] = EditorSceneFormatImporterGltf_vmap