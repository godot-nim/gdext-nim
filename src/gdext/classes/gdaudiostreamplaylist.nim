{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

proc setStreamCount*(self: AudioStreamPlaylist; streamCount: int32): void =
  expandMethodBind(className AudioStreamPlaylist, "set_stream_count", 1286410249)
  var `?param` = [getPtr streamCount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStreamCount*(self: AudioStreamPlaylist): int32 =
  expandMethodBind(className AudioStreamPlaylist, "get_stream_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getBpm*(self: AudioStreamPlaylist): float64 =
  expandMethodBind(className AudioStreamPlaylist, "get_bpm", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setListStream*(self: AudioStreamPlaylist; streamIndex: int32; audioStream: gdref AudioStream): void =
  expandMethodBind(className AudioStreamPlaylist, "set_list_stream", 111075094)
  var `?param` = [getPtr streamIndex, getPtr audioStream]
  methodbind.ptrcall(self, addr `?param`[0])

proc getListStream*(self: AudioStreamPlaylist; streamIndex: int32): gdref AudioStream =
  expandMethodBind(className AudioStreamPlaylist, "get_list_stream", 2739380747)
  var `?param` = [getPtr streamIndex]
  var ret: encoded gdref AudioStream
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref AudioStream)

proc setShuffle*(self: AudioStreamPlaylist; shuffle: bool): void =
  expandMethodBind(className AudioStreamPlaylist, "set_shuffle", 2586408642)
  var `?param` = [getPtr shuffle]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShuffle*(self: AudioStreamPlaylist): bool =
  expandMethodBind(className AudioStreamPlaylist, "get_shuffle", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFadeTime*(self: AudioStreamPlaylist; dec: Float): void =
  expandMethodBind(className AudioStreamPlaylist, "set_fade_time", 373806689)
  var `?param` = [getPtr dec]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFadeTime*(self: AudioStreamPlaylist): Float =
  expandMethodBind(className AudioStreamPlaylist, "get_fade_time", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setLoop*(self: AudioStreamPlaylist; loop: bool): void =
  expandMethodBind(className AudioStreamPlaylist, "set_loop", 2586408642)
  var `?param` = [getPtr loop]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasLoop*(self: AudioStreamPlaylist): bool =
  expandMethodBind(className AudioStreamPlaylist, "has_loop", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template shuffle*(self: AudioStreamPlaylist): untyped = self.getShuffle()
template `shuffle=`*(self: AudioStreamPlaylist; value) = self.setShuffle(value)

template loop*(self: AudioStreamPlaylist): untyped = self.hasLoop()
template `loop=`*(self: AudioStreamPlaylist; value) = self.setLoop(value)

template fadeTime*(self: AudioStreamPlaylist): untyped = self.getFadeTime()
template `fadeTime=`*(self: AudioStreamPlaylist; value) = self.setFadeTime(value)

template streamCount*(self: AudioStreamPlaylist): untyped = self.getStreamCount()
template `streamCount=`*(self: AudioStreamPlaylist; value) = self.setStreamCount(value)

template stream0*(self: AudioStreamPlaylist): untyped = self.getListStream(0)
template `stream0=`*(self: AudioStreamPlaylist; value) = self.setListStream(0, value)

template stream1*(self: AudioStreamPlaylist): untyped = self.getListStream(1)
template `stream1=`*(self: AudioStreamPlaylist; value) = self.setListStream(1, value)

template stream2*(self: AudioStreamPlaylist): untyped = self.getListStream(2)
template `stream2=`*(self: AudioStreamPlaylist; value) = self.setListStream(2, value)

template stream3*(self: AudioStreamPlaylist): untyped = self.getListStream(3)
template `stream3=`*(self: AudioStreamPlaylist; value) = self.setListStream(3, value)

template stream4*(self: AudioStreamPlaylist): untyped = self.getListStream(4)
template `stream4=`*(self: AudioStreamPlaylist; value) = self.setListStream(4, value)

template stream5*(self: AudioStreamPlaylist): untyped = self.getListStream(5)
template `stream5=`*(self: AudioStreamPlaylist; value) = self.setListStream(5, value)

template stream6*(self: AudioStreamPlaylist): untyped = self.getListStream(6)
template `stream6=`*(self: AudioStreamPlaylist; value) = self.setListStream(6, value)

template stream7*(self: AudioStreamPlaylist): untyped = self.getListStream(7)
template `stream7=`*(self: AudioStreamPlaylist; value) = self.setListStream(7, value)

template stream8*(self: AudioStreamPlaylist): untyped = self.getListStream(8)
template `stream8=`*(self: AudioStreamPlaylist; value) = self.setListStream(8, value)

template stream9*(self: AudioStreamPlaylist): untyped = self.getListStream(9)
template `stream9=`*(self: AudioStreamPlaylist; value) = self.setListStream(9, value)

template stream10*(self: AudioStreamPlaylist): untyped = self.getListStream(10)
template `stream10=`*(self: AudioStreamPlaylist; value) = self.setListStream(10, value)

template stream11*(self: AudioStreamPlaylist): untyped = self.getListStream(11)
template `stream11=`*(self: AudioStreamPlaylist; value) = self.setListStream(11, value)

template stream12*(self: AudioStreamPlaylist): untyped = self.getListStream(12)
template `stream12=`*(self: AudioStreamPlaylist; value) = self.setListStream(12, value)

template stream13*(self: AudioStreamPlaylist): untyped = self.getListStream(13)
template `stream13=`*(self: AudioStreamPlaylist; value) = self.setListStream(13, value)

template stream14*(self: AudioStreamPlaylist): untyped = self.getListStream(14)
template `stream14=`*(self: AudioStreamPlaylist; value) = self.setListStream(14, value)

template stream15*(self: AudioStreamPlaylist): untyped = self.getListStream(15)
template `stream15=`*(self: AudioStreamPlaylist; value) = self.setListStream(15, value)

template stream16*(self: AudioStreamPlaylist): untyped = self.getListStream(16)
template `stream16=`*(self: AudioStreamPlaylist; value) = self.setListStream(16, value)

template stream17*(self: AudioStreamPlaylist): untyped = self.getListStream(17)
template `stream17=`*(self: AudioStreamPlaylist; value) = self.setListStream(17, value)

template stream18*(self: AudioStreamPlaylist): untyped = self.getListStream(18)
template `stream18=`*(self: AudioStreamPlaylist; value) = self.setListStream(18, value)

template stream19*(self: AudioStreamPlaylist): untyped = self.getListStream(19)
template `stream19=`*(self: AudioStreamPlaylist; value) = self.setListStream(19, value)

template stream20*(self: AudioStreamPlaylist): untyped = self.getListStream(20)
template `stream20=`*(self: AudioStreamPlaylist; value) = self.setListStream(20, value)

template stream21*(self: AudioStreamPlaylist): untyped = self.getListStream(21)
template `stream21=`*(self: AudioStreamPlaylist; value) = self.setListStream(21, value)

template stream22*(self: AudioStreamPlaylist): untyped = self.getListStream(22)
template `stream22=`*(self: AudioStreamPlaylist; value) = self.setListStream(22, value)

template stream23*(self: AudioStreamPlaylist): untyped = self.getListStream(23)
template `stream23=`*(self: AudioStreamPlaylist; value) = self.setListStream(23, value)

template stream24*(self: AudioStreamPlaylist): untyped = self.getListStream(24)
template `stream24=`*(self: AudioStreamPlaylist; value) = self.setListStream(24, value)

template stream25*(self: AudioStreamPlaylist): untyped = self.getListStream(25)
template `stream25=`*(self: AudioStreamPlaylist; value) = self.setListStream(25, value)

template stream26*(self: AudioStreamPlaylist): untyped = self.getListStream(26)
template `stream26=`*(self: AudioStreamPlaylist; value) = self.setListStream(26, value)

template stream27*(self: AudioStreamPlaylist): untyped = self.getListStream(27)
template `stream27=`*(self: AudioStreamPlaylist; value) = self.setListStream(27, value)

template stream28*(self: AudioStreamPlaylist): untyped = self.getListStream(28)
template `stream28=`*(self: AudioStreamPlaylist; value) = self.setListStream(28, value)

template stream29*(self: AudioStreamPlaylist): untyped = self.getListStream(29)
template `stream29=`*(self: AudioStreamPlaylist; value) = self.setListStream(29, value)

template stream30*(self: AudioStreamPlaylist): untyped = self.getListStream(30)
template `stream30=`*(self: AudioStreamPlaylist; value) = self.setListStream(30, value)

template stream31*(self: AudioStreamPlaylist): untyped = self.getListStream(31)
template `stream31=`*(self: AudioStreamPlaylist; value) = self.setListStream(31, value)

template stream32*(self: AudioStreamPlaylist): untyped = self.getListStream(32)
template `stream32=`*(self: AudioStreamPlaylist; value) = self.setListStream(32, value)

template stream33*(self: AudioStreamPlaylist): untyped = self.getListStream(33)
template `stream33=`*(self: AudioStreamPlaylist; value) = self.setListStream(33, value)

template stream34*(self: AudioStreamPlaylist): untyped = self.getListStream(34)
template `stream34=`*(self: AudioStreamPlaylist; value) = self.setListStream(34, value)

template stream35*(self: AudioStreamPlaylist): untyped = self.getListStream(35)
template `stream35=`*(self: AudioStreamPlaylist; value) = self.setListStream(35, value)

template stream36*(self: AudioStreamPlaylist): untyped = self.getListStream(36)
template `stream36=`*(self: AudioStreamPlaylist; value) = self.setListStream(36, value)

template stream37*(self: AudioStreamPlaylist): untyped = self.getListStream(37)
template `stream37=`*(self: AudioStreamPlaylist; value) = self.setListStream(37, value)

template stream38*(self: AudioStreamPlaylist): untyped = self.getListStream(38)
template `stream38=`*(self: AudioStreamPlaylist; value) = self.setListStream(38, value)

template stream39*(self: AudioStreamPlaylist): untyped = self.getListStream(39)
template `stream39=`*(self: AudioStreamPlaylist; value) = self.setListStream(39, value)

template stream40*(self: AudioStreamPlaylist): untyped = self.getListStream(40)
template `stream40=`*(self: AudioStreamPlaylist; value) = self.setListStream(40, value)

template stream41*(self: AudioStreamPlaylist): untyped = self.getListStream(41)
template `stream41=`*(self: AudioStreamPlaylist; value) = self.setListStream(41, value)

template stream42*(self: AudioStreamPlaylist): untyped = self.getListStream(42)
template `stream42=`*(self: AudioStreamPlaylist; value) = self.setListStream(42, value)

template stream43*(self: AudioStreamPlaylist): untyped = self.getListStream(43)
template `stream43=`*(self: AudioStreamPlaylist; value) = self.setListStream(43, value)

template stream44*(self: AudioStreamPlaylist): untyped = self.getListStream(44)
template `stream44=`*(self: AudioStreamPlaylist; value) = self.setListStream(44, value)

template stream45*(self: AudioStreamPlaylist): untyped = self.getListStream(45)
template `stream45=`*(self: AudioStreamPlaylist; value) = self.setListStream(45, value)

template stream46*(self: AudioStreamPlaylist): untyped = self.getListStream(46)
template `stream46=`*(self: AudioStreamPlaylist; value) = self.setListStream(46, value)

template stream47*(self: AudioStreamPlaylist): untyped = self.getListStream(47)
template `stream47=`*(self: AudioStreamPlaylist; value) = self.setListStream(47, value)

template stream48*(self: AudioStreamPlaylist): untyped = self.getListStream(48)
template `stream48=`*(self: AudioStreamPlaylist; value) = self.setListStream(48, value)

template stream49*(self: AudioStreamPlaylist): untyped = self.getListStream(49)
template `stream49=`*(self: AudioStreamPlaylist; value) = self.setListStream(49, value)

template stream50*(self: AudioStreamPlaylist): untyped = self.getListStream(50)
template `stream50=`*(self: AudioStreamPlaylist; value) = self.setListStream(50, value)

template stream51*(self: AudioStreamPlaylist): untyped = self.getListStream(51)
template `stream51=`*(self: AudioStreamPlaylist; value) = self.setListStream(51, value)

template stream52*(self: AudioStreamPlaylist): untyped = self.getListStream(52)
template `stream52=`*(self: AudioStreamPlaylist; value) = self.setListStream(52, value)

template stream53*(self: AudioStreamPlaylist): untyped = self.getListStream(53)
template `stream53=`*(self: AudioStreamPlaylist; value) = self.setListStream(53, value)

template stream54*(self: AudioStreamPlaylist): untyped = self.getListStream(54)
template `stream54=`*(self: AudioStreamPlaylist; value) = self.setListStream(54, value)

template stream55*(self: AudioStreamPlaylist): untyped = self.getListStream(55)
template `stream55=`*(self: AudioStreamPlaylist; value) = self.setListStream(55, value)

template stream56*(self: AudioStreamPlaylist): untyped = self.getListStream(56)
template `stream56=`*(self: AudioStreamPlaylist; value) = self.setListStream(56, value)

template stream57*(self: AudioStreamPlaylist): untyped = self.getListStream(57)
template `stream57=`*(self: AudioStreamPlaylist; value) = self.setListStream(57, value)

template stream58*(self: AudioStreamPlaylist): untyped = self.getListStream(58)
template `stream58=`*(self: AudioStreamPlaylist; value) = self.setListStream(58, value)

template stream59*(self: AudioStreamPlaylist): untyped = self.getListStream(59)
template `stream59=`*(self: AudioStreamPlaylist; value) = self.setListStream(59, value)

template stream60*(self: AudioStreamPlaylist): untyped = self.getListStream(60)
template `stream60=`*(self: AudioStreamPlaylist; value) = self.setListStream(60, value)

template stream61*(self: AudioStreamPlaylist): untyped = self.getListStream(61)
template `stream61=`*(self: AudioStreamPlaylist; value) = self.setListStream(61, value)

template stream62*(self: AudioStreamPlaylist): untyped = self.getListStream(62)
template `stream62=`*(self: AudioStreamPlaylist; value) = self.setListStream(62, value)

template stream63*(self: AudioStreamPlaylist): untyped = self.getListStream(63)
template `stream63=`*(self: AudioStreamPlaylist; value) = self.setListStream(63, value)

const AudioStreamPlaylist_vmap =
  AudioStream.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamPlaylist]): Table[string, string] = AudioStreamPlaylist_vmap