{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

proc setUseTopLeft*(self: CenterContainer; enable: bool): void =
  expandMethodBind(className CenterContainer, "set_use_top_left", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingTopLeft*(self: CenterContainer): bool =
  expandMethodBind(className CenterContainer, "is_using_top_left", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template useTopLeft*(self: CenterContainer): untyped = self.isUsingTopLeft()
template `useTopLeft=`*(self: CenterContainer; value) = self.setUseTopLeft(value)

const CenterContainer_vmap =
  Container.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CenterContainer]): Table[string, string] = CenterContainer_vmap