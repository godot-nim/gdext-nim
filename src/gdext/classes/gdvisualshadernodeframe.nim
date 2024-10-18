{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernoderesizablebase; export gdvisualshadernoderesizablebase

proc setTitle*(self: VisualShaderNodeFrame; title: String): void =
  expandMethodBind(className VisualShaderNodeFrame, "set_title", 83702148)
  var `?param` = [getPtr title]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTitle*(self: VisualShaderNodeFrame): String =
  expandMethodBind(className VisualShaderNodeFrame, "get_title", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setTintColorEnabled*(self: VisualShaderNodeFrame; enable: bool): void =
  expandMethodBind(className VisualShaderNodeFrame, "set_tint_color_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isTintColorEnabled*(self: VisualShaderNodeFrame): bool =
  expandMethodBind(className VisualShaderNodeFrame, "is_tint_color_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setTintColor*(self: VisualShaderNodeFrame; color: Color): void =
  expandMethodBind(className VisualShaderNodeFrame, "set_tint_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTintColor*(self: VisualShaderNodeFrame): Color =
  expandMethodBind(className VisualShaderNodeFrame, "get_tint_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setAutoshrinkEnabled*(self: VisualShaderNodeFrame; enable: bool): void =
  expandMethodBind(className VisualShaderNodeFrame, "set_autoshrink_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAutoshrinkEnabled*(self: VisualShaderNodeFrame): bool =
  expandMethodBind(className VisualShaderNodeFrame, "is_autoshrink_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc addAttachedNode*(self: VisualShaderNodeFrame; node: int32): void =
  expandMethodBind(className VisualShaderNodeFrame, "add_attached_node", 1286410249)
  var `?param` = [getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeAttachedNode*(self: VisualShaderNodeFrame; node: int32): void =
  expandMethodBind(className VisualShaderNodeFrame, "remove_attached_node", 1286410249)
  var `?param` = [getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAttachedNodes*(self: VisualShaderNodeFrame; attachedNodes: PackedInt32Array): void =
  expandMethodBind(className VisualShaderNodeFrame, "set_attached_nodes", 3614634198)
  var `?param` = [getPtr attachedNodes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAttachedNodes*(self: VisualShaderNodeFrame): PackedInt32Array =
  expandMethodBind(className VisualShaderNodeFrame, "get_attached_nodes", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

template title*(self: VisualShaderNodeFrame): untyped = self.getTitle()
template `title=`*(self: VisualShaderNodeFrame; value) = self.setTitle(value)

template tintColorEnabled*(self: VisualShaderNodeFrame): untyped = self.isTintColorEnabled()
template `tintColorEnabled=`*(self: VisualShaderNodeFrame; value) = self.setTintColorEnabled(value)

template tintColor*(self: VisualShaderNodeFrame): untyped = self.getTintColor()
template `tintColor=`*(self: VisualShaderNodeFrame; value) = self.setTintColor(value)

template autoshrink*(self: VisualShaderNodeFrame): untyped = self.isAutoshrinkEnabled()
template `autoshrink=`*(self: VisualShaderNodeFrame; value) = self.setAutoshrinkEnabled(value)

template attachedNodes*(self: VisualShaderNodeFrame): untyped = self.getAttachedNodes()
template `attachedNodes=`*(self: VisualShaderNodeFrame; value) = self.setAttachedNodes(value)

const VisualShaderNodeFrame_vmap =
  VisualShaderNodeResizableBase.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeFrame]): Table[string, string] = VisualShaderNodeFrame_vmap