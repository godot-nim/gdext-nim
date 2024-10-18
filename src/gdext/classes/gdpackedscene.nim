{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc pack*(self: PackedScene; path: Node): Error =
  expandMethodBind(className PackedScene, "pack", 2584678054)
  var `?param` = [getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc instantiate*(self: PackedScene; editState: PackedScene_GenEditState = genEditStateDisabled): Node =
  expandMethodBind(className PackedScene, "instantiate", 2628778455)
  var `?param` = [getPtr editState]
  var ret: encoded Node
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Node)

proc canInstantiate*(self: PackedScene): bool =
  expandMethodBind(className PackedScene, "can_instantiate", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getState*(self: PackedScene): gdref SceneState =
  expandMethodBind(className PackedScene, "get_state", 3479783971)
  var ret: encoded gdref SceneState
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref SceneState)

const PackedScene_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PackedScene]): Table[string, string] = PackedScene_vmap