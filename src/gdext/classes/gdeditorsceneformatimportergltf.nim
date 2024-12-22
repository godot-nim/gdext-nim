{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorsceneformatimporter; export gdeditorsceneformatimporter

const EditorSceneFormatImporterGLTF_vmap =
  EditorSceneFormatImporter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorSceneFormatImporterGLTF]): Table[string, string] = EditorSceneFormatImporterGLTF_vmap