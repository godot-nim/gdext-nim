{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc makeCurrent*(self: AudioListener3D): void =
  expandMethodBind(className AudioListener3D, "make_current", 3218959716)
  methodbind.ptrcall(self, nil)

proc clearCurrent*(self: AudioListener3D): void =
  expandMethodBind(className AudioListener3D, "clear_current", 3218959716)
  methodbind.ptrcall(self, nil)

proc isCurrent*(self: AudioListener3D): bool =
  expandMethodBind(className AudioListener3D, "is_current", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getListenerTransform*(self: AudioListener3D): Transform3D =
  expandMethodBind(className AudioListener3D, "get_listener_transform", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

const AudioListener3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioListener3D]): Table[string, string] = AudioListener3D_vmap