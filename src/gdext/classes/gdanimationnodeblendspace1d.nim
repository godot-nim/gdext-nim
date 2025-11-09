{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationrootnode; export gdanimationrootnode

expandOnClassImported(AnimationNodeBlendSpace1D, AnimationRootNode)

proc addBlendPoint*(self: AnimationNodeBlendSpace1D; node: gdref AnimationRootNode; pos: Float; atIndex: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "add_blend_point", 285050433)
  methodbind.ptrcall(self, [getPtr node, getPtr pos, getPtr atIndex], void)

proc setBlendPointPosition*(self: AnimationNodeBlendSpace1D; point: int32; pos: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "set_blend_point_position", 1602489585)
  methodbind.ptrcall(self, [getPtr point, getPtr pos], void)

proc getBlendPointPosition*(self: AnimationNodeBlendSpace1D; point: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "get_blend_point_position", 2339986948)
  methodbind.ptrcall(self, [getPtr point], Float)

proc setBlendPointNode*(self: AnimationNodeBlendSpace1D; point: int32; node: gdref AnimationRootNode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "set_blend_point_node", 4240341528)
  methodbind.ptrcall(self, [getPtr point, getPtr node], void)

proc getBlendPointNode*(self: AnimationNodeBlendSpace1D; point: int32): gdref AnimationRootNode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "get_blend_point_node", 665599029)
  methodbind.ptrcall(self, [getPtr point], gdref AnimationRootNode)

proc removeBlendPoint*(self: AnimationNodeBlendSpace1D; point: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "remove_blend_point", 1286410249)
  methodbind.ptrcall(self, [getPtr point], void)

proc getBlendPointCount*(self: AnimationNodeBlendSpace1D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "get_blend_point_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMinSpace*(self: AnimationNodeBlendSpace1D; minSpace: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "set_min_space", 373806689)
  methodbind.ptrcall(self, [getPtr minSpace], void)

proc getMinSpace*(self: AnimationNodeBlendSpace1D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "get_min_space", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMaxSpace*(self: AnimationNodeBlendSpace1D; maxSpace: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "set_max_space", 373806689)
  methodbind.ptrcall(self, [getPtr maxSpace], void)

proc getMaxSpace*(self: AnimationNodeBlendSpace1D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "get_max_space", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSnap*(self: AnimationNodeBlendSpace1D; snap: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "set_snap", 373806689)
  methodbind.ptrcall(self, [getPtr snap], void)

proc getSnap*(self: AnimationNodeBlendSpace1D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "get_snap", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setValueLabel*(self: AnimationNodeBlendSpace1D; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "set_value_label", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc getValueLabel*(self: AnimationNodeBlendSpace1D): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "get_value_label", 201670096)
  methodbind.ptrcall(self, [], String)

proc setBlendMode*(self: AnimationNodeBlendSpace1D; mode: AnimationNodeBlendSpace1D_BlendMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "set_blend_mode", 2600869457)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getBlendMode*(self: AnimationNodeBlendSpace1D): AnimationNodeBlendSpace1D_BlendMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "get_blend_mode", 1547667849)
  methodbind.ptrcall(self, [], AnimationNodeBlendSpace1D_BlendMode)

proc setUseSync*(self: AnimationNodeBlendSpace1D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "set_use_sync", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingSync*(self: AnimationNodeBlendSpace1D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendSpace1D, "is_using_sync", 36873697)
  methodbind.ptrcall(self, [], bool)

template minSpace*(self: AnimationNodeBlendSpace1D): untyped = self.getMinSpace()
template `minSpace=`*(self: AnimationNodeBlendSpace1D; value) = self.setMinSpace(value)

template maxSpace*(self: AnimationNodeBlendSpace1D): untyped = self.getMaxSpace()
template `maxSpace=`*(self: AnimationNodeBlendSpace1D; value) = self.setMaxSpace(value)

template snap*(self: AnimationNodeBlendSpace1D): untyped = self.getSnap()
template `snap=`*(self: AnimationNodeBlendSpace1D; value) = self.setSnap(value)

template valueLabel*(self: AnimationNodeBlendSpace1D): untyped = self.getValueLabel()
template `valueLabel=`*(self: AnimationNodeBlendSpace1D; value) = self.setValueLabel(value)

template blendMode*(self: AnimationNodeBlendSpace1D): untyped = self.getBlendMode()
template `blendMode=`*(self: AnimationNodeBlendSpace1D; value) = self.setBlendMode(value)

template sync*(self: AnimationNodeBlendSpace1D): untyped = self.isUsingSync()
template `sync=`*(self: AnimationNodeBlendSpace1D; value) = self.setUseSync(value)
