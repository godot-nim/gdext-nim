{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(AudioListener3D, Node3D)

proc makeCurrent*(self: AudioListener3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioListener3D, "make_current", 3218959716)
  methodbind.ptrcall(self, [], void)

proc clearCurrent*(self: AudioListener3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioListener3D, "clear_current", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isCurrent*(self: AudioListener3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioListener3D, "is_current", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getListenerTransform*(self: AudioListener3D): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioListener3D, "get_listener_transform", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

proc setDopplerTracking*(self: AudioListener3D; mode: AudioListener3D_DopplerTracking): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioListener3D, "set_doppler_tracking", 2365921740)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getDopplerTracking*(self: AudioListener3D): AudioListener3D_DopplerTracking =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioListener3D, "get_doppler_tracking", 550229039)
  methodbind.ptrcall(self, [], AudioListener3D_DopplerTracking)

template dopplerTracking*(self: AudioListener3D): untyped = self.getDopplerTracking()
template `dopplerTracking=`*(self: AudioListener3D; value) = self.setDopplerTracking(value)
