{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(AudioListener3D, Node3D)

proc makeCurrent*(self: AudioListener3D): void =
  expandMethodBind(className AudioListener3D, "make_current", 3218959716)
  methodbind.ptrcall(self, [])

proc clearCurrent*(self: AudioListener3D): void =
  expandMethodBind(className AudioListener3D, "clear_current", 3218959716)
  methodbind.ptrcall(self, [])

proc isCurrent*(self: AudioListener3D): bool =
  expandMethodBind(className AudioListener3D, "is_current", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getListenerTransform*(self: AudioListener3D): Transform3D =
  expandMethodBind(className AudioListener3D, "get_listener_transform", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Transform3D)

proc setDopplerTracking*(self: AudioListener3D; mode: AudioListener3D_DopplerTracking): void =
  expandMethodBind(className AudioListener3D, "set_doppler_tracking", 2365921740)
  methodbind.ptrcall(self, [getPtr mode])

proc getDopplerTracking*(self: AudioListener3D): AudioListener3D_DopplerTracking =
  expandMethodBind(className AudioListener3D, "get_doppler_tracking", 550229039)
  var ret: encoded AudioListener3D_DopplerTracking
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AudioListener3D_DopplerTracking)

template dopplerTracking*(self: AudioListener3D): untyped = self.getDopplerTracking()
template `dopplerTracking=`*(self: AudioListener3D; value) = self.setDopplerTracking(value)
