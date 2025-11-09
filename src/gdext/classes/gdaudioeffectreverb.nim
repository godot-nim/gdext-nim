{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

expandOnClassImported(AudioEffectReverb, AudioEffect)

proc setPredelayMsec*(self: AudioEffectReverb; msec: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectReverb, "set_predelay_msec", 373806689)
  methodbind.ptrcall(self, [getPtr msec], void)

proc getPredelayMsec*(self: AudioEffectReverb): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectReverb, "get_predelay_msec", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPredelayFeedback*(self: AudioEffectReverb; feedback: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectReverb, "set_predelay_feedback", 373806689)
  methodbind.ptrcall(self, [getPtr feedback], void)

proc getPredelayFeedback*(self: AudioEffectReverb): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectReverb, "get_predelay_feedback", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRoomSize*(self: AudioEffectReverb; size: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectReverb, "set_room_size", 373806689)
  methodbind.ptrcall(self, [getPtr size], void)

proc getRoomSize*(self: AudioEffectReverb): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectReverb, "get_room_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDamping*(self: AudioEffectReverb; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectReverb, "set_damping", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getDamping*(self: AudioEffectReverb): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectReverb, "get_damping", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSpread*(self: AudioEffectReverb; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectReverb, "set_spread", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getSpread*(self: AudioEffectReverb): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectReverb, "get_spread", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDry*(self: AudioEffectReverb; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectReverb, "set_dry", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getDry*(self: AudioEffectReverb): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectReverb, "get_dry", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setWet*(self: AudioEffectReverb; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectReverb, "set_wet", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getWet*(self: AudioEffectReverb): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectReverb, "get_wet", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHpf*(self: AudioEffectReverb; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectReverb, "set_hpf", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getHpf*(self: AudioEffectReverb): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectReverb, "get_hpf", 1740695150)
  methodbind.ptrcall(self, [], Float)

template predelayMsec*(self: AudioEffectReverb): untyped = self.getPredelayMsec()
template `predelayMsec=`*(self: AudioEffectReverb; value) = self.setPredelayMsec(value)

template predelayFeedback*(self: AudioEffectReverb): untyped = self.getPredelayFeedback()
template `predelayFeedback=`*(self: AudioEffectReverb; value) = self.setPredelayFeedback(value)

template roomSize*(self: AudioEffectReverb): untyped = self.getRoomSize()
template `roomSize=`*(self: AudioEffectReverb; value) = self.setRoomSize(value)

template damping*(self: AudioEffectReverb): untyped = self.getDamping()
template `damping=`*(self: AudioEffectReverb; value) = self.setDamping(value)

template spread*(self: AudioEffectReverb): untyped = self.getSpread()
template `spread=`*(self: AudioEffectReverb; value) = self.setSpread(value)

template hipass*(self: AudioEffectReverb): untyped = self.getHpf()
template `hipass=`*(self: AudioEffectReverb; value) = self.setHpf(value)

template dry*(self: AudioEffectReverb): untyped = self.getDry()
template `dry=`*(self: AudioEffectReverb; value) = self.setDry(value)

template wet*(self: AudioEffectReverb): untyped = self.getWet()
template `wet=`*(self: AudioEffectReverb; value) = self.setWet(value)
