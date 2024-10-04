{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc setRangeMinHz*(self: AudioEffectPhaser; hz: Float): void =
  expandMethodBind(className AudioEffectPhaser, "set_range_min_hz", 373806689)
  var `?param` = [getPtr hz]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRangeMinHz*(self: AudioEffectPhaser): Float =
  expandMethodBind(className AudioEffectPhaser, "get_range_min_hz", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRangeMaxHz*(self: AudioEffectPhaser; hz: Float): void =
  expandMethodBind(className AudioEffectPhaser, "set_range_max_hz", 373806689)
  var `?param` = [getPtr hz]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRangeMaxHz*(self: AudioEffectPhaser): Float =
  expandMethodBind(className AudioEffectPhaser, "get_range_max_hz", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRateHz*(self: AudioEffectPhaser; hz: Float): void =
  expandMethodBind(className AudioEffectPhaser, "set_rate_hz", 373806689)
  var `?param` = [getPtr hz]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRateHz*(self: AudioEffectPhaser): Float =
  expandMethodBind(className AudioEffectPhaser, "get_rate_hz", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFeedback*(self: AudioEffectPhaser; fbk: Float): void =
  expandMethodBind(className AudioEffectPhaser, "set_feedback", 373806689)
  var `?param` = [getPtr fbk]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFeedback*(self: AudioEffectPhaser): Float =
  expandMethodBind(className AudioEffectPhaser, "get_feedback", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDepth*(self: AudioEffectPhaser; depth: Float): void =
  expandMethodBind(className AudioEffectPhaser, "set_depth", 373806689)
  var `?param` = [getPtr depth]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDepth*(self: AudioEffectPhaser): Float =
  expandMethodBind(className AudioEffectPhaser, "get_depth", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template rangeMinHz*(self: AudioEffectPhaser): untyped = self.getRangeMinHz()
template `rangeMinHz=`*(self: AudioEffectPhaser; value) = self.setRangeMinHz(value)

template rangeMaxHz*(self: AudioEffectPhaser): untyped = self.getRangeMaxHz()
template `rangeMaxHz=`*(self: AudioEffectPhaser; value) = self.setRangeMaxHz(value)

template rateHz*(self: AudioEffectPhaser): untyped = self.getRateHz()
template `rateHz=`*(self: AudioEffectPhaser; value) = self.setRateHz(value)

template feedback*(self: AudioEffectPhaser): untyped = self.getFeedback()
template `feedback=`*(self: AudioEffectPhaser; value) = self.setFeedback(value)

template depth*(self: AudioEffectPhaser): untyped = self.getDepth()
template `depth=`*(self: AudioEffectPhaser; value) = self.setDepth(value)

const AudioEffectPhaser_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectPhaser]): Table[string, string] = AudioEffectPhaser_vmap