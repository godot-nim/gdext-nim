{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisibleonscreennotifier3d; export gdvisibleonscreennotifier3d

proc setEnableMode*(self: VisibleOnScreenEnabler3D; mode: VisibleOnScreenEnabler3D_EnableMode): void =
  expandMethodBind(className VisibleOnScreenEnabler3D, "set_enable_mode", 320303646)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableMode*(self: VisibleOnScreenEnabler3D): VisibleOnScreenEnabler3D_EnableMode =
  expandMethodBind(className VisibleOnScreenEnabler3D, "get_enable_mode", 3352990031)
  var ret: encoded VisibleOnScreenEnabler3D_EnableMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisibleOnScreenEnabler3D_EnableMode)

proc setEnableNodePath*(self: VisibleOnScreenEnabler3D; path: NodePath): void =
  expandMethodBind(className VisibleOnScreenEnabler3D, "set_enable_node_path", 1348162250)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableNodePath*(self: VisibleOnScreenEnabler3D): NodePath =
  expandMethodBind(className VisibleOnScreenEnabler3D, "get_enable_node_path", 277076166)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

template enableMode*(self: VisibleOnScreenEnabler3D): untyped = self.getEnableMode()
template `enableMode=`*(self: VisibleOnScreenEnabler3D; value) = self.setEnableMode(value)

template enableNodePath*(self: VisibleOnScreenEnabler3D): untyped = self.getEnableNodePath()
template `enableNodePath=`*(self: VisibleOnScreenEnabler3D; value) = self.setEnableNodePath(value)

const VisibleOnScreenEnabler3D_vmap =
  VisibleOnScreenNotifier3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisibleOnScreenEnabler3D]): Table[string, string] = VisibleOnScreenEnabler3D_vmap