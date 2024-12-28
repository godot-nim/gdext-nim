{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc setPredelayMsec*(self: AudioEffectReverb; msec: Float): void =
  expandMethodBind(className AudioEffectReverb, "set_predelay_msec", 373806689)
  methodbind.ptrcall(self, [getPtr msec])

proc getPredelayMsec*(self: AudioEffectReverb): Float =
  expandMethodBind(className AudioEffectReverb, "get_predelay_msec", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPredelayFeedback*(self: AudioEffectReverb; feedback: Float): void =
  expandMethodBind(className AudioEffectReverb, "set_predelay_feedback", 373806689)
  methodbind.ptrcall(self, [getPtr feedback])

proc getPredelayFeedback*(self: AudioEffectReverb): Float =
  expandMethodBind(className AudioEffectReverb, "get_predelay_feedback", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setRoomSize*(self: AudioEffectReverb; size: Float): void =
  expandMethodBind(className AudioEffectReverb, "set_room_size", 373806689)
  methodbind.ptrcall(self, [getPtr size])

proc getRoomSize*(self: AudioEffectReverb): Float =
  expandMethodBind(className AudioEffectReverb, "get_room_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDamping*(self: AudioEffectReverb; amount: Float): void =
  expandMethodBind(className AudioEffectReverb, "set_damping", 373806689)
  methodbind.ptrcall(self, [getPtr amount])

proc getDamping*(self: AudioEffectReverb): Float =
  expandMethodBind(className AudioEffectReverb, "get_damping", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSpread*(self: AudioEffectReverb; amount: Float): void =
  expandMethodBind(className AudioEffectReverb, "set_spread", 373806689)
  methodbind.ptrcall(self, [getPtr amount])

proc getSpread*(self: AudioEffectReverb): Float =
  expandMethodBind(className AudioEffectReverb, "get_spread", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDry*(self: AudioEffectReverb; amount: Float): void =
  expandMethodBind(className AudioEffectReverb, "set_dry", 373806689)
  methodbind.ptrcall(self, [getPtr amount])

proc getDry*(self: AudioEffectReverb): Float =
  expandMethodBind(className AudioEffectReverb, "get_dry", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setWet*(self: AudioEffectReverb; amount: Float): void =
  expandMethodBind(className AudioEffectReverb, "set_wet", 373806689)
  methodbind.ptrcall(self, [getPtr amount])

proc getWet*(self: AudioEffectReverb): Float =
  expandMethodBind(className AudioEffectReverb, "get_wet", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setHpf*(self: AudioEffectReverb; amount: Float): void =
  expandMethodBind(className AudioEffectReverb, "set_hpf", 373806689)
  methodbind.ptrcall(self, [getPtr amount])

proc getHpf*(self: AudioEffectReverb): Float =
  expandMethodBind(className AudioEffectReverb, "get_hpf", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

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

const AudioEffectReverb_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectReverb]): Table[string, string] = AudioEffectReverb_vmap