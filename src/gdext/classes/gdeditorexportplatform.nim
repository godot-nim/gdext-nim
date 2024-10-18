{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getOsName*(self: EditorExportPlatform): String =
  expandMethodBind(className EditorExportPlatform, "get_os_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

const EditorExportPlatform_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorExportPlatform]): Table[string, string] = EditorExportPlatform_vmap