{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrpositionaltracker; export gdxrpositionaltracker

const XrControllerTracker_vmap =
  XrPositionalTracker.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XrControllerTracker]): Table[string, string] = XrControllerTracker_vmap