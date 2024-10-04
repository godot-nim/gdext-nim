{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdmultiplayerpeer; export gdmultiplayerpeer

const OfflineMultiplayerPeer_vmap =
  MultiplayerPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OfflineMultiplayerPeer]): Table[string, string] = OfflineMultiplayerPeer_vmap