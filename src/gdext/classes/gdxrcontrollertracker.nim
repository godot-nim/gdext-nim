{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrpositionaltracker; export gdxrpositionaltracker

const XRControllerTracker_vmap =
  XRPositionalTracker.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XRControllerTracker]): Table[string, string] = XRControllerTracker_vmap