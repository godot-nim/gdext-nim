{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(AnimationNodeStateMachineTransition, Resource)

proc setSwitchMode*(self: AnimationNodeStateMachineTransition; mode: AnimationNodeStateMachineTransition_SwitchMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "set_switch_mode", 2074906633)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getSwitchMode*(self: AnimationNodeStateMachineTransition): AnimationNodeStateMachineTransition_SwitchMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "get_switch_mode", 2138562085)
  methodbind.ptrcall(self, [], AnimationNodeStateMachineTransition_SwitchMode)

proc setAdvanceMode*(self: AnimationNodeStateMachineTransition; mode: AnimationNodeStateMachineTransition_AdvanceMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "set_advance_mode", 1210869868)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getAdvanceMode*(self: AnimationNodeStateMachineTransition): AnimationNodeStateMachineTransition_AdvanceMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "get_advance_mode", 61101689)
  methodbind.ptrcall(self, [], AnimationNodeStateMachineTransition_AdvanceMode)

proc setAdvanceCondition*(self: AnimationNodeStateMachineTransition; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "set_advance_condition", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc getAdvanceCondition*(self: AnimationNodeStateMachineTransition): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "get_advance_condition", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setXfadeTime*(self: AnimationNodeStateMachineTransition; secs: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "set_xfade_time", 373806689)
  methodbind.ptrcall(self, [getPtr secs], void)

proc getXfadeTime*(self: AnimationNodeStateMachineTransition): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "get_xfade_time", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setXfadeCurve*(self: AnimationNodeStateMachineTransition; curve: gdref Curve): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "set_xfade_curve", 270443179)
  methodbind.ptrcall(self, [getPtr curve], void)

proc getXfadeCurve*(self: AnimationNodeStateMachineTransition): gdref Curve =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "get_xfade_curve", 2460114913)
  methodbind.ptrcall(self, [], gdref Curve)

proc setBreakLoopAtEnd*(self: AnimationNodeStateMachineTransition; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "set_break_loop_at_end", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isLoopBrokenAtEnd*(self: AnimationNodeStateMachineTransition): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "is_loop_broken_at_end", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setReset*(self: AnimationNodeStateMachineTransition; reset: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "set_reset", 2586408642)
  methodbind.ptrcall(self, [getPtr reset], void)

proc isReset*(self: AnimationNodeStateMachineTransition): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "is_reset", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPriority*(self: AnimationNodeStateMachineTransition; priority: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "set_priority", 1286410249)
  methodbind.ptrcall(self, [getPtr priority], void)

proc getPriority*(self: AnimationNodeStateMachineTransition): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "get_priority", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setAdvanceExpression*(self: AnimationNodeStateMachineTransition; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "set_advance_expression", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc getAdvanceExpression*(self: AnimationNodeStateMachineTransition): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachineTransition, "get_advance_expression", 201670096)
  methodbind.ptrcall(self, [], String)

template xfadeTime*(self: AnimationNodeStateMachineTransition): untyped = self.getXfadeTime()
template `xfadeTime=`*(self: AnimationNodeStateMachineTransition; value) = self.setXfadeTime(value)

template xfadeCurve*(self: AnimationNodeStateMachineTransition): untyped = self.getXfadeCurve()
template `xfadeCurve=`*(self: AnimationNodeStateMachineTransition; value) = self.setXfadeCurve(value)

template breakLoopAtEnd*(self: AnimationNodeStateMachineTransition): untyped = self.isLoopBrokenAtEnd()
template `breakLoopAtEnd=`*(self: AnimationNodeStateMachineTransition; value) = self.setBreakLoopAtEnd(value)

template reset*(self: AnimationNodeStateMachineTransition): untyped = self.isReset()
template `reset=`*(self: AnimationNodeStateMachineTransition; value) = self.setReset(value)

template priority*(self: AnimationNodeStateMachineTransition): untyped = self.getPriority()
template `priority=`*(self: AnimationNodeStateMachineTransition; value) = self.setPriority(value)

template switchMode*(self: AnimationNodeStateMachineTransition): untyped = self.getSwitchMode()
template `switchMode=`*(self: AnimationNodeStateMachineTransition; value) = self.setSwitchMode(value)

template advanceMode*(self: AnimationNodeStateMachineTransition): untyped = self.getAdvanceMode()
template `advanceMode=`*(self: AnimationNodeStateMachineTransition; value) = self.setAdvanceMode(value)

template advanceCondition*(self: AnimationNodeStateMachineTransition): untyped = self.getAdvanceCondition()
template `advanceCondition=`*(self: AnimationNodeStateMachineTransition; value) = self.setAdvanceCondition(value)

template advanceExpression*(self: AnimationNodeStateMachineTransition): untyped = self.getAdvanceExpression()
template `advanceExpression=`*(self: AnimationNodeStateMachineTransition; value) = self.setAdvanceExpression(value)
