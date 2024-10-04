{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisibleonscreennotifier2d; export gdvisibleonscreennotifier2d

proc setEnableMode*(self: VisibleOnScreenEnabler2D; mode: VisibleOnScreenEnabler2D_EnableMode): void =
  expandMethodBind(className VisibleOnScreenEnabler2D, "set_enable_mode", 2961788752)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableMode*(self: VisibleOnScreenEnabler2D): VisibleOnScreenEnabler2D_EnableMode =
  expandMethodBind(className VisibleOnScreenEnabler2D, "get_enable_mode", 2650445576)
  var ret: encoded VisibleOnScreenEnabler2D_EnableMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisibleOnScreenEnabler2D_EnableMode)

proc setEnableNodePath*(self: VisibleOnScreenEnabler2D; path: NodePath): void =
  expandMethodBind(className VisibleOnScreenEnabler2D, "set_enable_node_path", 1348162250)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableNodePath*(self: VisibleOnScreenEnabler2D): NodePath =
  expandMethodBind(className VisibleOnScreenEnabler2D, "get_enable_node_path", 277076166)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

template enableMode*(self: VisibleOnScreenEnabler2D): untyped = self.getEnableMode()
template `enableMode=`*(self: VisibleOnScreenEnabler2D; value) = self.setEnableMode(value)

template enableNodePath*(self: VisibleOnScreenEnabler2D): untyped = self.getEnableNodePath()
template `enableNodePath=`*(self: VisibleOnScreenEnabler2D; value) = self.setEnableNodePath(value)

const VisibleOnScreenEnabler2D_vmap =
  VisibleOnScreenNotifier2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisibleOnScreenEnabler2D]): Table[string, string] = VisibleOnScreenEnabler2D_vmap