{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

expandOnClassImported(AudioStreamPolyphonic, AudioStream)

proc setPolyphony*(self: AudioStreamPolyphonic; voices: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPolyphonic, "set_polyphony", 1286410249)
  methodbind.ptrcall(self, [getPtr voices], void)

proc getPolyphony*(self: AudioStreamPolyphonic): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPolyphonic, "get_polyphony", 3905245786)
  methodbind.ptrcall(self, [], int32)

template polyphony*(self: AudioStreamPolyphonic): untyped = self.getPolyphony()
template `polyphony=`*(self: AudioStreamPolyphonic; value) = self.setPolyphony(value)
