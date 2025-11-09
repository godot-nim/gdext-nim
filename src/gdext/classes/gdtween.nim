{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(Tween, RefCounted)

proc tweenProperty*(self: Tween; `object`: Object; property: NodePath; finalVal: Variant; duration: float64): gdref PropertyTweener =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "tween_property", 4049770449)
  methodbind.ptrcall(self, [getPtr `object`, getPtr property, getPtr finalVal, getPtr duration], gdref PropertyTweener)

proc tweenInterval*(self: Tween; time: float64): gdref IntervalTweener =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "tween_interval", 413360199)
  methodbind.ptrcall(self, [getPtr time], gdref IntervalTweener)

proc tweenCallback*(self: Tween; callback: Callable): gdref CallbackTweener =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "tween_callback", 1540176488)
  methodbind.ptrcall(self, [getPtr callback], gdref CallbackTweener)

proc tweenMethod*(self: Tween; `method`: Callable; `from`: Variant; to: Variant; duration: float64): gdref MethodTweener =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "tween_method", 2337877153)
  methodbind.ptrcall(self, [getPtr `method`, getPtr `from`, getPtr to, getPtr duration], gdref MethodTweener)

proc tweenSubtween*(self: Tween; subtween: gdref Tween): gdref SubtweenTweener =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "tween_subtween", 1567358477)
  methodbind.ptrcall(self, [getPtr subtween], gdref SubtweenTweener)

proc customStep*(self: Tween; delta: float64): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "custom_step", 330693286)
  methodbind.ptrcall(self, [getPtr delta], bool)

proc stop*(self: Tween): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "stop", 3218959716)
  methodbind.ptrcall(self, [], void)

proc pause*(self: Tween): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "pause", 3218959716)
  methodbind.ptrcall(self, [], void)

proc play*(self: Tween): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "play", 3218959716)
  methodbind.ptrcall(self, [], void)

proc kill*(self: Tween): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "kill", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getTotalElapsedTime*(self: Tween): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "get_total_elapsed_time", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc isRunning*(self: Tween): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "is_running", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc isValid*(self: Tween): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "is_valid", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc bindNode*(self: Tween; node: Node): gdref Tween =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "bind_node", 2946786331)
  methodbind.ptrcall(self, [getPtr node], gdref Tween)

proc setProcessMode*(self: Tween; mode: Tween_TweenProcessMode): gdref Tween =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "set_process_mode", 855258840)
  methodbind.ptrcall(self, [getPtr mode], gdref Tween)

proc setPauseMode*(self: Tween; mode: Tween_TweenPauseMode): gdref Tween =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "set_pause_mode", 3363368837)
  methodbind.ptrcall(self, [getPtr mode], gdref Tween)

proc setIgnoreTimeScale*(self: Tween; ignore: bool = true): gdref Tween =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "set_ignore_time_scale", 1942052223)
  methodbind.ptrcall(self, [getPtr ignore], gdref Tween)

proc setParallel*(self: Tween; parallel: bool = true): gdref Tween =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "set_parallel", 1942052223)
  methodbind.ptrcall(self, [getPtr parallel], gdref Tween)

proc setLoops*(self: Tween; loops: int32 = 0): gdref Tween =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "set_loops", 2670836414)
  methodbind.ptrcall(self, [getPtr loops], gdref Tween)

proc getLoopsLeft*(self: Tween): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "get_loops_left", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSpeedScale*(self: Tween; speed: Float): gdref Tween =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "set_speed_scale", 3961971106)
  methodbind.ptrcall(self, [getPtr speed], gdref Tween)

proc setTrans*(self: Tween; trans: Tween_TransitionType): gdref Tween =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "set_trans", 3965963875)
  methodbind.ptrcall(self, [getPtr trans], gdref Tween)

proc setEase*(self: Tween; ease: Tween_EaseType): gdref Tween =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "set_ease", 1208117252)
  methodbind.ptrcall(self, [getPtr ease], gdref Tween)

proc parallel*(self: Tween): gdref Tween =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "parallel", 3426978995)
  methodbind.ptrcall(self, [], gdref Tween)

proc chain*(self: Tween): gdref Tween =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "chain", 3426978995)
  methodbind.ptrcall(self, [], gdref Tween)

proc interpolateValue*(_: typedesc[Tween]; initialValue: Variant; deltaValue: Variant; elapsedTime: float64; duration: float64; transType: Tween_TransitionType; easeType: Tween_EaseType): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tween, "interpolate_value", 3452526450)
  methodbind.ptrcall([getPtr initialValue, getPtr deltaValue, getPtr elapsedTime, getPtr duration, getPtr transType, getPtr easeType], Variant)
