{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(PackedScene, Resource)

proc pack*(self: PackedScene; path: Node): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PackedScene, "pack", 2584678054)
  methodbind.ptrcall(self, [getPtr path], Error)

proc instantiate*(self: PackedScene; editState: PackedScene_GenEditState = genEditStateDisabled): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PackedScene, "instantiate", 2628778455)
  methodbind.ptrcall(self, [getPtr editState], Node)

proc canInstantiate*(self: PackedScene): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PackedScene, "can_instantiate", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getState*(self: PackedScene): gdref SceneState =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PackedScene, "get_state", 3479783971)
  methodbind.ptrcall(self, [], gdref SceneState)
