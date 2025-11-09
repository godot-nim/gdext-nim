{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(AudioListener2D, Node2D)

proc makeCurrent*(self: AudioListener2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioListener2D, "make_current", 3218959716)
  methodbind.ptrcall(self, [], void)

proc clearCurrent*(self: AudioListener2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioListener2D, "clear_current", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isCurrent*(self: AudioListener2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioListener2D, "is_current", 36873697)
  methodbind.ptrcall(self, [], bool)
