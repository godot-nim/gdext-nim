{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

proc setPolyphony*(self: AudioStreamPolyphonic; voices: int32): void =
  expandMethodBind(className AudioStreamPolyphonic, "set_polyphony", 1286410249)
  var `?param` = [getPtr voices]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPolyphony*(self: AudioStreamPolyphonic): int32 =
  expandMethodBind(className AudioStreamPolyphonic, "get_polyphony", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template polyphony*(self: AudioStreamPolyphonic): untyped = self.getPolyphony()
template `polyphony=`*(self: AudioStreamPolyphonic; value) = self.setPolyphony(value)

const AudioStreamPolyphonic_vmap =
  AudioStream.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamPolyphonic]): Table[string, string] = AudioStreamPolyphonic_vmap