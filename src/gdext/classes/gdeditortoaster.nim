{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdhboxcontainer; export gdhboxcontainer

proc pushToast*(self: EditorToaster; message: String; severity: EditorToaster_Severity = severityInfo; tooltip: String = gdstring""): void =
  expandMethodBind(className EditorToaster, "push_toast", 1813923476)
  methodbind.ptrcall(self, [getPtr message, getPtr severity, getPtr tooltip])

const EditorToaster_vmap =
  HBoxContainer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorToaster]): Table[string, string] = EditorToaster_vmap