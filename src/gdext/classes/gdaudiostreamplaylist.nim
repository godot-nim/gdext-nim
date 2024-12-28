{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

proc setStreamCount*(self: AudioStreamPlaylist; streamCount: int32): void =
  expandMethodBind(className AudioStreamPlaylist, "set_stream_count", 1286410249)
  methodbind.ptrcall(self, [getPtr streamCount])

proc getStreamCount*(self: AudioStreamPlaylist): int32 =
  expandMethodBind(className AudioStreamPlaylist, "get_stream_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getBpm*(self: AudioStreamPlaylist): float64 =
  expandMethodBind(className AudioStreamPlaylist, "get_bpm", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setListStream*(self: AudioStreamPlaylist; streamIndex: int32; audioStream: gdref AudioStream): void =
  expandMethodBind(className AudioStreamPlaylist, "set_list_stream", 111075094)
  methodbind.ptrcall(self, [getPtr streamIndex, getPtr audioStream])

proc getListStream*(self: AudioStreamPlaylist; streamIndex: int32): gdref AudioStream =
  expandMethodBind(className AudioStreamPlaylist, "get_list_stream", 2739380747)
  var ret: encoded gdref AudioStream
  methodbind.ptrcall(self, [getPtr streamIndex], addr ret)
  (addr ret).decode_result(gdref AudioStream)

proc setShuffle*(self: AudioStreamPlaylist; shuffle: bool): void =
  expandMethodBind(className AudioStreamPlaylist, "set_shuffle", 2586408642)
  methodbind.ptrcall(self, [getPtr shuffle])

proc getShuffle*(self: AudioStreamPlaylist): bool =
  expandMethodBind(className AudioStreamPlaylist, "get_shuffle", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setFadeTime*(self: AudioStreamPlaylist; dec: Float): void =
  expandMethodBind(className AudioStreamPlaylist, "set_fade_time", 373806689)
  methodbind.ptrcall(self, [getPtr dec])

proc getFadeTime*(self: AudioStreamPlaylist): Float =
  expandMethodBind(className AudioStreamPlaylist, "get_fade_time", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setLoop*(self: AudioStreamPlaylist; loop: bool): void =
  expandMethodBind(className AudioStreamPlaylist, "set_loop", 2586408642)
  methodbind.ptrcall(self, [getPtr loop])

proc hasLoop*(self: AudioStreamPlaylist): bool =
  expandMethodBind(className AudioStreamPlaylist, "has_loop", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template shuffle*(self: AudioStreamPlaylist): untyped = self.getShuffle()
template `shuffle=`*(self: AudioStreamPlaylist; value) = self.setShuffle(value)

template loop*(self: AudioStreamPlaylist): untyped = self.hasLoop()
template `loop=`*(self: AudioStreamPlaylist; value) = self.setLoop(value)

template fadeTime*(self: AudioStreamPlaylist): untyped = self.getFadeTime()
template `fadeTime=`*(self: AudioStreamPlaylist; value) = self.setFadeTime(value)

template streamCount*(self: AudioStreamPlaylist): untyped = self.getStreamCount()
template `streamCount=`*(self: AudioStreamPlaylist; value) = self.setStreamCount(value)

template stream0*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(0))
template `stream0=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(0), value)

template stream1*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(1))
template `stream1=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(1), value)

template stream2*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(2))
template `stream2=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(2), value)

template stream3*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(3))
template `stream3=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(3), value)

template stream4*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(4))
template `stream4=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(4), value)

template stream5*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(5))
template `stream5=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(5), value)

template stream6*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(6))
template `stream6=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(6), value)

template stream7*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(7))
template `stream7=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(7), value)

template stream8*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(8))
template `stream8=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(8), value)

template stream9*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(9))
template `stream9=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(9), value)

template stream10*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(10))
template `stream10=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(10), value)

template stream11*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(11))
template `stream11=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(11), value)

template stream12*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(12))
template `stream12=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(12), value)

template stream13*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(13))
template `stream13=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(13), value)

template stream14*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(14))
template `stream14=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(14), value)

template stream15*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(15))
template `stream15=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(15), value)

template stream16*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(16))
template `stream16=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(16), value)

template stream17*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(17))
template `stream17=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(17), value)

template stream18*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(18))
template `stream18=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(18), value)

template stream19*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(19))
template `stream19=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(19), value)

template stream20*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(20))
template `stream20=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(20), value)

template stream21*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(21))
template `stream21=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(21), value)

template stream22*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(22))
template `stream22=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(22), value)

template stream23*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(23))
template `stream23=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(23), value)

template stream24*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(24))
template `stream24=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(24), value)

template stream25*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(25))
template `stream25=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(25), value)

template stream26*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(26))
template `stream26=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(26), value)

template stream27*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(27))
template `stream27=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(27), value)

template stream28*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(28))
template `stream28=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(28), value)

template stream29*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(29))
template `stream29=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(29), value)

template stream30*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(30))
template `stream30=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(30), value)

template stream31*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(31))
template `stream31=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(31), value)

template stream32*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(32))
template `stream32=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(32), value)

template stream33*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(33))
template `stream33=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(33), value)

template stream34*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(34))
template `stream34=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(34), value)

template stream35*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(35))
template `stream35=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(35), value)

template stream36*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(36))
template `stream36=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(36), value)

template stream37*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(37))
template `stream37=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(37), value)

template stream38*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(38))
template `stream38=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(38), value)

template stream39*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(39))
template `stream39=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(39), value)

template stream40*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(40))
template `stream40=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(40), value)

template stream41*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(41))
template `stream41=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(41), value)

template stream42*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(42))
template `stream42=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(42), value)

template stream43*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(43))
template `stream43=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(43), value)

template stream44*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(44))
template `stream44=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(44), value)

template stream45*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(45))
template `stream45=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(45), value)

template stream46*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(46))
template `stream46=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(46), value)

template stream47*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(47))
template `stream47=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(47), value)

template stream48*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(48))
template `stream48=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(48), value)

template stream49*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(49))
template `stream49=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(49), value)

template stream50*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(50))
template `stream50=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(50), value)

template stream51*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(51))
template `stream51=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(51), value)

template stream52*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(52))
template `stream52=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(52), value)

template stream53*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(53))
template `stream53=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(53), value)

template stream54*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(54))
template `stream54=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(54), value)

template stream55*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(55))
template `stream55=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(55), value)

template stream56*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(56))
template `stream56=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(56), value)

template stream57*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(57))
template `stream57=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(57), value)

template stream58*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(58))
template `stream58=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(58), value)

template stream59*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(59))
template `stream59=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(59), value)

template stream60*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(60))
template `stream60=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(60), value)

template stream61*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(61))
template `stream61=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(61), value)

template stream62*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(62))
template `stream62=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(62), value)

template stream63*(self: AudioStreamPlaylist): untyped = self.getListStream(int32(63))
template `stream63=`*(self: AudioStreamPlaylist; value) = self.setListStream(int32(63), value)

const AudioStreamPlaylist_vmap =
  AudioStream.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamPlaylist]): Table[string, string] = AudioStreamPlaylist_vmap