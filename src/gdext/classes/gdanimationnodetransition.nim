{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationnodesync; export gdanimationnodesync

expandOnClassImported(AnimationNodeTransition, AnimationNodeSync)

proc setInputCount*(self: AnimationNodeTransition; inputCount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeTransition, "set_input_count", 1286410249)
  methodbind.ptrcall(self, [getPtr inputCount], void)

proc setInputAsAutoAdvance*(self: AnimationNodeTransition; input: int32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeTransition, "set_input_as_auto_advance", 300928843)
  methodbind.ptrcall(self, [getPtr input, getPtr enable], void)

proc isInputSetAsAutoAdvance*(self: AnimationNodeTransition; input: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeTransition, "is_input_set_as_auto_advance", 1116898809)
  methodbind.ptrcall(self, [getPtr input], bool)

proc setInputBreakLoopAtEnd*(self: AnimationNodeTransition; input: int32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeTransition, "set_input_break_loop_at_end", 300928843)
  methodbind.ptrcall(self, [getPtr input, getPtr enable], void)

proc isInputLoopBrokenAtEnd*(self: AnimationNodeTransition; input: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeTransition, "is_input_loop_broken_at_end", 1116898809)
  methodbind.ptrcall(self, [getPtr input], bool)

proc setInputReset*(self: AnimationNodeTransition; input: int32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeTransition, "set_input_reset", 300928843)
  methodbind.ptrcall(self, [getPtr input, getPtr enable], void)

proc isInputReset*(self: AnimationNodeTransition; input: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeTransition, "is_input_reset", 1116898809)
  methodbind.ptrcall(self, [getPtr input], bool)

proc setXfadeTime*(self: AnimationNodeTransition; time: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeTransition, "set_xfade_time", 373806689)
  methodbind.ptrcall(self, [getPtr time], void)

proc getXfadeTime*(self: AnimationNodeTransition): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeTransition, "get_xfade_time", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setXfadeCurve*(self: AnimationNodeTransition; curve: gdref Curve): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeTransition, "set_xfade_curve", 270443179)
  methodbind.ptrcall(self, [getPtr curve], void)

proc getXfadeCurve*(self: AnimationNodeTransition): gdref Curve =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeTransition, "get_xfade_curve", 2460114913)
  methodbind.ptrcall(self, [], gdref Curve)

proc setAllowTransitionToSelf*(self: AnimationNodeTransition; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeTransition, "set_allow_transition_to_self", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isAllowTransitionToSelf*(self: AnimationNodeTransition): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeTransition, "is_allow_transition_to_self", 36873697)
  methodbind.ptrcall(self, [], bool)

template xfadeTime*(self: AnimationNodeTransition): untyped = self.getXfadeTime()
template `xfadeTime=`*(self: AnimationNodeTransition; value) = self.setXfadeTime(value)

template xfadeCurve*(self: AnimationNodeTransition): untyped = self.getXfadeCurve()
template `xfadeCurve=`*(self: AnimationNodeTransition; value) = self.setXfadeCurve(value)

template allowTransitionToSelf*(self: AnimationNodeTransition): untyped = self.isAllowTransitionToSelf()
template `allowTransitionToSelf=`*(self: AnimationNodeTransition; value) = self.setAllowTransitionToSelf(value)

template inputCount*(self: AnimationNodeTransition): untyped = self.getInputCount()
template `inputCount=`*(self: AnimationNodeTransition; value) = self.setInputCount(value)
