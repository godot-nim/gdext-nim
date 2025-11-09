{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationnodesync; export gdanimationnodesync

expandOnClassImported(AnimationNodeOneShot, AnimationNodeSync)

proc setFadeinTime*(self: AnimationNodeOneShot; time: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "set_fadein_time", 373806689)
  methodbind.ptrcall(self, [getPtr time], void)

proc getFadeinTime*(self: AnimationNodeOneShot): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "get_fadein_time", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setFadeinCurve*(self: AnimationNodeOneShot; curve: gdref Curve): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "set_fadein_curve", 270443179)
  methodbind.ptrcall(self, [getPtr curve], void)

proc getFadeinCurve*(self: AnimationNodeOneShot): gdref Curve =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "get_fadein_curve", 2460114913)
  methodbind.ptrcall(self, [], gdref Curve)

proc setFadeoutTime*(self: AnimationNodeOneShot; time: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "set_fadeout_time", 373806689)
  methodbind.ptrcall(self, [getPtr time], void)

proc getFadeoutTime*(self: AnimationNodeOneShot): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "get_fadeout_time", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setFadeoutCurve*(self: AnimationNodeOneShot; curve: gdref Curve): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "set_fadeout_curve", 270443179)
  methodbind.ptrcall(self, [getPtr curve], void)

proc getFadeoutCurve*(self: AnimationNodeOneShot): gdref Curve =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "get_fadeout_curve", 2460114913)
  methodbind.ptrcall(self, [], gdref Curve)

proc setBreakLoopAtEnd*(self: AnimationNodeOneShot; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "set_break_loop_at_end", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isLoopBrokenAtEnd*(self: AnimationNodeOneShot): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "is_loop_broken_at_end", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAutorestart*(self: AnimationNodeOneShot; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "set_autorestart", 2586408642)
  methodbind.ptrcall(self, [getPtr active], void)

proc hasAutorestart*(self: AnimationNodeOneShot): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "has_autorestart", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAutorestartDelay*(self: AnimationNodeOneShot; time: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "set_autorestart_delay", 373806689)
  methodbind.ptrcall(self, [getPtr time], void)

proc getAutorestartDelay*(self: AnimationNodeOneShot): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "get_autorestart_delay", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setAutorestartRandomDelay*(self: AnimationNodeOneShot; time: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "set_autorestart_random_delay", 373806689)
  methodbind.ptrcall(self, [getPtr time], void)

proc getAutorestartRandomDelay*(self: AnimationNodeOneShot): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "get_autorestart_random_delay", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setMixMode*(self: AnimationNodeOneShot; mode: AnimationNodeOneShot_MixMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "set_mix_mode", 1018899799)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getMixMode*(self: AnimationNodeOneShot): AnimationNodeOneShot_MixMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeOneShot, "get_mix_mode", 3076550526)
  methodbind.ptrcall(self, [], AnimationNodeOneShot_MixMode)

template mixMode*(self: AnimationNodeOneShot): untyped = self.getMixMode()
template `mixMode=`*(self: AnimationNodeOneShot; value) = self.setMixMode(value)

template fadeinTime*(self: AnimationNodeOneShot): untyped = self.getFadeinTime()
template `fadeinTime=`*(self: AnimationNodeOneShot; value) = self.setFadeinTime(value)

template fadeinCurve*(self: AnimationNodeOneShot): untyped = self.getFadeinCurve()
template `fadeinCurve=`*(self: AnimationNodeOneShot; value) = self.setFadeinCurve(value)

template fadeoutTime*(self: AnimationNodeOneShot): untyped = self.getFadeoutTime()
template `fadeoutTime=`*(self: AnimationNodeOneShot; value) = self.setFadeoutTime(value)

template fadeoutCurve*(self: AnimationNodeOneShot): untyped = self.getFadeoutCurve()
template `fadeoutCurve=`*(self: AnimationNodeOneShot; value) = self.setFadeoutCurve(value)

template breakLoopAtEnd*(self: AnimationNodeOneShot): untyped = self.isLoopBrokenAtEnd()
template `breakLoopAtEnd=`*(self: AnimationNodeOneShot; value) = self.setBreakLoopAtEnd(value)

template autorestart*(self: AnimationNodeOneShot): untyped = self.hasAutorestart()
template `autorestart=`*(self: AnimationNodeOneShot; value) = self.setAutorestart(value)

template autorestartDelay*(self: AnimationNodeOneShot): untyped = self.getAutorestartDelay()
template `autorestartDelay=`*(self: AnimationNodeOneShot; value) = self.setAutorestartDelay(value)

template autorestartRandomDelay*(self: AnimationNodeOneShot): untyped = self.getAutorestartRandomDelay()
template `autorestartRandomDelay=`*(self: AnimationNodeOneShot; value) = self.setAutorestartRandomDelay(value)
