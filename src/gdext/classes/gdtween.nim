{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc tweenProperty*(self: Tween; `object`: Object; property: NodePath; finalVal: Variant; duration: float64): gdref PropertyTweener =
  expandMethodBind(className Tween, "tween_property", 4049770449)
  var ret: encoded gdref PropertyTweener
  methodbind.ptrcall(self, [getPtr `object`, getPtr property, getPtr finalVal, getPtr duration], addr ret)
  (addr ret).decode_result(gdref PropertyTweener)

proc tweenInterval*(self: Tween; time: float64): gdref IntervalTweener =
  expandMethodBind(className Tween, "tween_interval", 413360199)
  var ret: encoded gdref IntervalTweener
  methodbind.ptrcall(self, [getPtr time], addr ret)
  (addr ret).decode_result(gdref IntervalTweener)

proc tweenCallback*(self: Tween; callback: Callable): gdref CallbackTweener =
  expandMethodBind(className Tween, "tween_callback", 1540176488)
  var ret: encoded gdref CallbackTweener
  methodbind.ptrcall(self, [getPtr callback], addr ret)
  (addr ret).decode_result(gdref CallbackTweener)

proc tweenMethod*(self: Tween; `method`: Callable; `from`: Variant; to: Variant; duration: float64): gdref MethodTweener =
  expandMethodBind(className Tween, "tween_method", 2337877153)
  var ret: encoded gdref MethodTweener
  methodbind.ptrcall(self, [getPtr `method`, getPtr `from`, getPtr to, getPtr duration], addr ret)
  (addr ret).decode_result(gdref MethodTweener)

proc customStep*(self: Tween; delta: float64): bool =
  expandMethodBind(className Tween, "custom_step", 330693286)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr delta], addr ret)
  (addr ret).decode_result(bool)

proc stop*(self: Tween): void =
  expandMethodBind(className Tween, "stop", 3218959716)
  methodbind.ptrcall(self, [])

proc pause*(self: Tween): void =
  expandMethodBind(className Tween, "pause", 3218959716)
  methodbind.ptrcall(self, [])

proc play*(self: Tween): void =
  expandMethodBind(className Tween, "play", 3218959716)
  methodbind.ptrcall(self, [])

proc kill*(self: Tween): void =
  expandMethodBind(className Tween, "kill", 3218959716)
  methodbind.ptrcall(self, [])

proc getTotalElapsedTime*(self: Tween): float64 =
  expandMethodBind(className Tween, "get_total_elapsed_time", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc isRunning*(self: Tween): bool =
  expandMethodBind(className Tween, "is_running", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isValid*(self: Tween): bool =
  expandMethodBind(className Tween, "is_valid", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc bindNode*(self: Tween; node: Node): gdref Tween =
  expandMethodBind(className Tween, "bind_node", 2946786331)
  var ret: encoded gdref Tween
  methodbind.ptrcall(self, [getPtr node], addr ret)
  (addr ret).decode_result(gdref Tween)

proc setProcessMode*(self: Tween; mode: Tween_TweenProcessMode): gdref Tween =
  expandMethodBind(className Tween, "set_process_mode", 855258840)
  var ret: encoded gdref Tween
  methodbind.ptrcall(self, [getPtr mode], addr ret)
  (addr ret).decode_result(gdref Tween)

proc setPauseMode*(self: Tween; mode: Tween_TweenPauseMode): gdref Tween =
  expandMethodBind(className Tween, "set_pause_mode", 3363368837)
  var ret: encoded gdref Tween
  methodbind.ptrcall(self, [getPtr mode], addr ret)
  (addr ret).decode_result(gdref Tween)

proc setParallel*(self: Tween; parallel: bool = true): gdref Tween =
  expandMethodBind(className Tween, "set_parallel", 1942052223)
  var ret: encoded gdref Tween
  methodbind.ptrcall(self, [getPtr parallel], addr ret)
  (addr ret).decode_result(gdref Tween)

proc setLoops*(self: Tween; loops: int32 = 0): gdref Tween =
  expandMethodBind(className Tween, "set_loops", 2670836414)
  var ret: encoded gdref Tween
  methodbind.ptrcall(self, [getPtr loops], addr ret)
  (addr ret).decode_result(gdref Tween)

proc getLoopsLeft*(self: Tween): int32 =
  expandMethodBind(className Tween, "get_loops_left", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setSpeedScale*(self: Tween; speed: Float): gdref Tween =
  expandMethodBind(className Tween, "set_speed_scale", 3961971106)
  var ret: encoded gdref Tween
  methodbind.ptrcall(self, [getPtr speed], addr ret)
  (addr ret).decode_result(gdref Tween)

proc setTrans*(self: Tween; trans: Tween_TransitionType): gdref Tween =
  expandMethodBind(className Tween, "set_trans", 3965963875)
  var ret: encoded gdref Tween
  methodbind.ptrcall(self, [getPtr trans], addr ret)
  (addr ret).decode_result(gdref Tween)

proc setEase*(self: Tween; ease: Tween_EaseType): gdref Tween =
  expandMethodBind(className Tween, "set_ease", 1208117252)
  var ret: encoded gdref Tween
  methodbind.ptrcall(self, [getPtr ease], addr ret)
  (addr ret).decode_result(gdref Tween)

proc parallel*(self: Tween): gdref Tween =
  expandMethodBind(className Tween, "parallel", 3426978995)
  var ret: encoded gdref Tween
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Tween)

proc chain*(self: Tween): gdref Tween =
  expandMethodBind(className Tween, "chain", 3426978995)
  var ret: encoded gdref Tween
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Tween)

proc interpolateValue*(_: typedesc[Tween]; initialValue: Variant; deltaValue: Variant; elapsedTime: float64; duration: float64; transType: Tween_TransitionType; easeType: Tween_EaseType): Variant =
  expandMethodBind(className Tween, "interpolate_value", 3452526450)
  var ret: encoded Variant
  methodbind.ptrcall([getPtr initialValue, getPtr deltaValue, getPtr elapsedTime, getPtr duration, getPtr transType, getPtr easeType], addr ret)
  (addr ret).decode_result(Variant)

const Tween_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Tween]): Table[string, string] = Tween_vmap

proc stepFinished*(self: Tween; idx: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("step_finished")
  let args = [idx]
  self.emitSignal(signalname, args)

proc loopFinished*(self: Tween; loopCount: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("loop_finished")
  let args = [loopCount]
  self.emitSignal(signalname, args)

proc finished*(self: Tween): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("finished")
  self.emitSignal(signalname)