{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisibleonscreennotifier3d; export gdvisibleonscreennotifier3d

expandOnClassImported(VisibleOnScreenEnabler3D, VisibleOnScreenNotifier3D)

proc setEnableMode*(self: VisibleOnScreenEnabler3D; mode: VisibleOnScreenEnabler3D_EnableMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisibleOnScreenEnabler3D, "set_enable_mode", 320303646)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getEnableMode*(self: VisibleOnScreenEnabler3D): VisibleOnScreenEnabler3D_EnableMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisibleOnScreenEnabler3D, "get_enable_mode", 3352990031)
  methodbind.ptrcall(self, [], VisibleOnScreenEnabler3D_EnableMode)

proc setEnableNodePath*(self: VisibleOnScreenEnabler3D; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisibleOnScreenEnabler3D, "set_enable_node_path", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getEnableNodePath*(self: VisibleOnScreenEnabler3D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisibleOnScreenEnabler3D, "get_enable_node_path", 277076166)
  methodbind.ptrcall(self, [], NodePath)

template enableMode*(self: VisibleOnScreenEnabler3D): untyped = self.getEnableMode()
template `enableMode=`*(self: VisibleOnScreenEnabler3D; value) = self.setEnableMode(value)

template enableNodePath*(self: VisibleOnScreenEnabler3D): untyped = self.getEnableNodePath()
template `enableNodePath=`*(self: VisibleOnScreenEnabler3D; value) = self.setEnableNodePath(value)
