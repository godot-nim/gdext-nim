{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdhboxcontainer; export gdhboxcontainer
export EditorToaster

proc pushToast*(self: EditorToaster; message: String; severity: EditorToaster_Severity = severityInfo; tooltip: String = newGdString()): void =
  expandMethodBind(className EditorToaster, "push_toast", 1813923476)
  methodbind.ptrcall(self, [getPtr message, getPtr severity, getPtr tooltip])
