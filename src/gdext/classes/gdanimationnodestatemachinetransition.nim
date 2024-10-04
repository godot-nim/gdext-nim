{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc setSwitchMode*(self: AnimationNodeStateMachineTransition; mode: AnimationNodeStateMachineTransition_SwitchMode): void =
  expandMethodBind(className AnimationNodeStateMachineTransition, "set_switch_mode", 2074906633)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSwitchMode*(self: AnimationNodeStateMachineTransition): AnimationNodeStateMachineTransition_SwitchMode =
  expandMethodBind(className AnimationNodeStateMachineTransition, "get_switch_mode", 2138562085)
  var ret: encoded AnimationNodeStateMachineTransition_SwitchMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AnimationNodeStateMachineTransition_SwitchMode)

proc setAdvanceMode*(self: AnimationNodeStateMachineTransition; mode: AnimationNodeStateMachineTransition_AdvanceMode): void =
  expandMethodBind(className AnimationNodeStateMachineTransition, "set_advance_mode", 1210869868)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAdvanceMode*(self: AnimationNodeStateMachineTransition): AnimationNodeStateMachineTransition_AdvanceMode =
  expandMethodBind(className AnimationNodeStateMachineTransition, "get_advance_mode", 61101689)
  var ret: encoded AnimationNodeStateMachineTransition_AdvanceMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AnimationNodeStateMachineTransition_AdvanceMode)

proc setAdvanceCondition*(self: AnimationNodeStateMachineTransition; name: StringName): void =
  expandMethodBind(className AnimationNodeStateMachineTransition, "set_advance_condition", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAdvanceCondition*(self: AnimationNodeStateMachineTransition): StringName =
  expandMethodBind(className AnimationNodeStateMachineTransition, "get_advance_condition", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setXfadeTime*(self: AnimationNodeStateMachineTransition; secs: Float): void =
  expandMethodBind(className AnimationNodeStateMachineTransition, "set_xfade_time", 373806689)
  var `?param` = [getPtr secs]
  methodbind.ptrcall(self, addr `?param`[0])

proc getXfadeTime*(self: AnimationNodeStateMachineTransition): Float =
  expandMethodBind(className AnimationNodeStateMachineTransition, "get_xfade_time", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setXfadeCurve*(self: AnimationNodeStateMachineTransition; curve: gdref Curve): void =
  expandMethodBind(className AnimationNodeStateMachineTransition, "set_xfade_curve", 270443179)
  var `?param` = [getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getXfadeCurve*(self: AnimationNodeStateMachineTransition): gdref Curve =
  expandMethodBind(className AnimationNodeStateMachineTransition, "get_xfade_curve", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve)

proc setBreakLoopAtEnd*(self: AnimationNodeStateMachineTransition; enable: bool): void =
  expandMethodBind(className AnimationNodeStateMachineTransition, "set_break_loop_at_end", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isLoopBrokenAtEnd*(self: AnimationNodeStateMachineTransition): bool =
  expandMethodBind(className AnimationNodeStateMachineTransition, "is_loop_broken_at_end", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setReset*(self: AnimationNodeStateMachineTransition; reset: bool): void =
  expandMethodBind(className AnimationNodeStateMachineTransition, "set_reset", 2586408642)
  var `?param` = [getPtr reset]
  methodbind.ptrcall(self, addr `?param`[0])

proc isReset*(self: AnimationNodeStateMachineTransition): bool =
  expandMethodBind(className AnimationNodeStateMachineTransition, "is_reset", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPriority*(self: AnimationNodeStateMachineTransition; priority: int32): void =
  expandMethodBind(className AnimationNodeStateMachineTransition, "set_priority", 1286410249)
  var `?param` = [getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPriority*(self: AnimationNodeStateMachineTransition): int32 =
  expandMethodBind(className AnimationNodeStateMachineTransition, "get_priority", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setAdvanceExpression*(self: AnimationNodeStateMachineTransition; text: String): void =
  expandMethodBind(className AnimationNodeStateMachineTransition, "set_advance_expression", 83702148)
  var `?param` = [getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAdvanceExpression*(self: AnimationNodeStateMachineTransition): String =
  expandMethodBind(className AnimationNodeStateMachineTransition, "get_advance_expression", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

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

const AnimationNodeStateMachineTransition_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimationNodeStateMachineTransition]): Table[string, string] = AnimationNodeStateMachineTransition_vmap

proc advanceConditionChanged*(self: AnimationNodeStateMachineTransition): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("advance_condition_changed")
  self.emitSignal(signalname)