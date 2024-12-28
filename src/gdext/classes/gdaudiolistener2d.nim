{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc makeCurrent*(self: AudioListener2D): void =
  expandMethodBind(className AudioListener2D, "make_current", 3218959716)
  methodbind.ptrcall(self, [])

proc clearCurrent*(self: AudioListener2D): void =
  expandMethodBind(className AudioListener2D, "clear_current", 3218959716)
  methodbind.ptrcall(self, [])

proc isCurrent*(self: AudioListener2D): bool =
  expandMethodBind(className AudioListener2D, "is_current", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

const AudioListener2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioListener2D]): Table[string, string] = AudioListener2D_vmap