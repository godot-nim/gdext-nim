{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorsceneformatimporter; export gdeditorsceneformatimporter

const EditorSceneFormatImporterFbx2Gltf_vmap =
  EditorSceneFormatImporter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorSceneFormatImporterFbx2Gltf]): Table[string, string] = EditorSceneFormatImporterFbx2Gltf_vmap