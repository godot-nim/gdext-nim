{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernoderesizablebase; export gdvisualshadernoderesizablebase

expandOnClassImported(VisualShaderNodeFrame, VisualShaderNodeResizableBase)

proc setTitle*(self: VisualShaderNodeFrame; title: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFrame, "set_title", 83702148)
  methodbind.ptrcall(self, [getPtr title], void)

proc getTitle*(self: VisualShaderNodeFrame): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFrame, "get_title", 201670096)
  methodbind.ptrcall(self, [], String)

proc setTintColorEnabled*(self: VisualShaderNodeFrame; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFrame, "set_tint_color_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isTintColorEnabled*(self: VisualShaderNodeFrame): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFrame, "is_tint_color_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTintColor*(self: VisualShaderNodeFrame; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFrame, "set_tint_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getTintColor*(self: VisualShaderNodeFrame): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFrame, "get_tint_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setAutoshrinkEnabled*(self: VisualShaderNodeFrame; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFrame, "set_autoshrink_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isAutoshrinkEnabled*(self: VisualShaderNodeFrame): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFrame, "is_autoshrink_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc addAttachedNode*(self: VisualShaderNodeFrame; node: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFrame, "add_attached_node", 1286410249)
  methodbind.ptrcall(self, [getPtr node], void)

proc removeAttachedNode*(self: VisualShaderNodeFrame; node: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFrame, "remove_attached_node", 1286410249)
  methodbind.ptrcall(self, [getPtr node], void)

proc setAttachedNodes*(self: VisualShaderNodeFrame; attachedNodes: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFrame, "set_attached_nodes", 3614634198)
  methodbind.ptrcall(self, [getPtr attachedNodes], void)

proc getAttachedNodes*(self: VisualShaderNodeFrame): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFrame, "get_attached_nodes", 1930428628)
  methodbind.ptrcall(self, [], PackedInt32Array)

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
