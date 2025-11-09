{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisibleonscreennotifier2d; export gdvisibleonscreennotifier2d

expandOnClassImported(VisibleOnScreenEnabler2D, VisibleOnScreenNotifier2D)

proc setEnableMode*(self: VisibleOnScreenEnabler2D; mode: VisibleOnScreenEnabler2D_EnableMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisibleOnScreenEnabler2D, "set_enable_mode", 2961788752)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getEnableMode*(self: VisibleOnScreenEnabler2D): VisibleOnScreenEnabler2D_EnableMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisibleOnScreenEnabler2D, "get_enable_mode", 2650445576)
  methodbind.ptrcall(self, [], VisibleOnScreenEnabler2D_EnableMode)

proc setEnableNodePath*(self: VisibleOnScreenEnabler2D; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisibleOnScreenEnabler2D, "set_enable_node_path", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getEnableNodePath*(self: VisibleOnScreenEnabler2D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisibleOnScreenEnabler2D, "get_enable_node_path", 277076166)
  methodbind.ptrcall(self, [], NodePath)

template enableMode*(self: VisibleOnScreenEnabler2D): untyped = self.getEnableMode()
template `enableMode=`*(self: VisibleOnScreenEnabler2D; value) = self.setEnableMode(value)

template enableNodePath*(self: VisibleOnScreenEnabler2D): untyped = self.getEnableNodePath()
template `enableNodePath=`*(self: VisibleOnScreenEnabler2D; value) = self.setEnableNodePath(value)
