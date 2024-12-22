{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorsceneformatimporter; export gdeditorsceneformatimporter

const EditorSceneFormatImporterFBX2GLTF_vmap =
  EditorSceneFormatImporter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorSceneFormatImporterFBX2GLTF]): Table[string, string] = EditorSceneFormatImporterFBX2GLTF_vmap