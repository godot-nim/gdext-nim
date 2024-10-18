{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationnodesync; export gdanimationnodesync

proc setInputCount*(self: AnimationNodeTransition; inputCount: int32): void =
  expandMethodBind(className AnimationNodeTransition, "set_input_count", 1286410249)
  var `?param` = [getPtr inputCount]
  methodbind.ptrcall(self, addr `?param`[0])

proc setInputAsAutoAdvance*(self: AnimationNodeTransition; input: int32; enable: bool): void =
  expandMethodBind(className AnimationNodeTransition, "set_input_as_auto_advance", 300928843)
  var `?param` = [getPtr input, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isInputSetAsAutoAdvance*(self: AnimationNodeTransition; input: int32): bool =
  expandMethodBind(className AnimationNodeTransition, "is_input_set_as_auto_advance", 1116898809)
  var `?param` = [getPtr input]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setInputBreakLoopAtEnd*(self: AnimationNodeTransition; input: int32; enable: bool): void =
  expandMethodBind(className AnimationNodeTransition, "set_input_break_loop_at_end", 300928843)
  var `?param` = [getPtr input, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isInputLoopBrokenAtEnd*(self: AnimationNodeTransition; input: int32): bool =
  expandMethodBind(className AnimationNodeTransition, "is_input_loop_broken_at_end", 1116898809)
  var `?param` = [getPtr input]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setInputReset*(self: AnimationNodeTransition; input: int32; enable: bool): void =
  expandMethodBind(className AnimationNodeTransition, "set_input_reset", 300928843)
  var `?param` = [getPtr input, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isInputReset*(self: AnimationNodeTransition; input: int32): bool =
  expandMethodBind(className AnimationNodeTransition, "is_input_reset", 1116898809)
  var `?param` = [getPtr input]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setXfadeTime*(self: AnimationNodeTransition; time: float64): void =
  expandMethodBind(className AnimationNodeTransition, "set_xfade_time", 373806689)
  var `?param` = [getPtr time]
  methodbind.ptrcall(self, addr `?param`[0])

proc getXfadeTime*(self: AnimationNodeTransition): float64 =
  expandMethodBind(className AnimationNodeTransition, "get_xfade_time", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setXfadeCurve*(self: AnimationNodeTransition; curve: gdref Curve): void =
  expandMethodBind(className AnimationNodeTransition, "set_xfade_curve", 270443179)
  var `?param` = [getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getXfadeCurve*(self: AnimationNodeTransition): gdref Curve =
  expandMethodBind(className AnimationNodeTransition, "get_xfade_curve", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve)

proc setAllowTransitionToSelf*(self: AnimationNodeTransition; enable: bool): void =
  expandMethodBind(className AnimationNodeTransition, "set_allow_transition_to_self", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAllowTransitionToSelf*(self: AnimationNodeTransition): bool =
  expandMethodBind(className AnimationNodeTransition, "is_allow_transition_to_self", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template xfadeTime*(self: AnimationNodeTransition): untyped = self.getXfadeTime()
template `xfadeTime=`*(self: AnimationNodeTransition; value) = self.setXfadeTime(value)

template xfadeCurve*(self: AnimationNodeTransition): untyped = self.getXfadeCurve()
template `xfadeCurve=`*(self: AnimationNodeTransition; value) = self.setXfadeCurve(value)

template allowTransitionToSelf*(self: AnimationNodeTransition): untyped = self.isAllowTransitionToSelf()
template `allowTransitionToSelf=`*(self: AnimationNodeTransition; value) = self.setAllowTransitionToSelf(value)

template inputCount*(self: AnimationNodeTransition): untyped = self.getInputCount()
template `inputCount=`*(self: AnimationNodeTransition; value) = self.setInputCount(value)

const AnimationNodeTransition_vmap =
  AnimationNodeSync.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimationNodeTransition]): Table[string, string] = AnimationNodeTransition_vmap