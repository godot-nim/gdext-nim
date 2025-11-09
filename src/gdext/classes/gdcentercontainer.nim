{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

expandOnClassImported(CenterContainer, Container)

proc setUseTopLeft*(self: CenterContainer; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CenterContainer, "set_use_top_left", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingTopLeft*(self: CenterContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CenterContainer, "is_using_top_left", 36873697)
  methodbind.ptrcall(self, [], bool)

template useTopLeft*(self: CenterContainer): untyped = self.isUsingTopLeft()
template `useTopLeft=`*(self: CenterContainer; value) = self.setUseTopLeft(value)
