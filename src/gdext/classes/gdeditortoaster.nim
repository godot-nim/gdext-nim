{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdhboxcontainer; export gdhboxcontainer

expandOnClassImported(EditorToaster, HBoxContainer)

proc pushToast*(self: EditorToaster; message: String; severity: EditorToaster_Severity = severityInfo; tooltip: String = newGdString()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorToaster, "push_toast", 1813923476)
  methodbind.ptrcall(self, [getPtr message, getPtr severity, getPtr tooltip], void)
