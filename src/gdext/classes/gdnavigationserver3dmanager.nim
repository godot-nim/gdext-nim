{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(NavigationServer3DManager, Object)

proc registerServer*(self: NavigationServer3DManager; name: String; createCallback: Callable): void =
  expandMethodBind(className NavigationServer3DManager, "register_server", 2137474292)
  methodbind.ptrcall(self, [getPtr name, getPtr createCallback])

proc setDefaultServer*(self: NavigationServer3DManager; name: String; priority: int32): void =
  expandMethodBind(className NavigationServer3DManager, "set_default_server", 2956805083)
  methodbind.ptrcall(self, [getPtr name, getPtr priority])
