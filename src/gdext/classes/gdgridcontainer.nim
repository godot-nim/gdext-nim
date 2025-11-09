{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

expandOnClassImported(GridContainer, Container)

proc setColumns*(self: GridContainer; columns: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridContainer, "set_columns", 1286410249)
  methodbind.ptrcall(self, [getPtr columns], void)

proc getColumns*(self: GridContainer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridContainer, "get_columns", 3905245786)
  methodbind.ptrcall(self, [], int32)

template columns*(self: GridContainer): untyped = self.getColumns()
template `columns=`*(self: GridContainer; value) = self.setColumns(value)
