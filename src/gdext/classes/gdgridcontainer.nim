{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

proc setColumns*(self: GridContainer; columns: int32): void =
  expandMethodBind(className GridContainer, "set_columns", 1286410249)
  var `?param` = [getPtr columns]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColumns*(self: GridContainer): int32 =
  expandMethodBind(className GridContainer, "get_columns", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template columns*(self: GridContainer): untyped = self.getColumns()
template `columns=`*(self: GridContainer; value) = self.setColumns(value)

const GridContainer_vmap =
  Container.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GridContainer]): Table[string, string] = GridContainer_vmap