{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

const OpenXRVisibilityMask_vmap =
  VisualInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRVisibilityMask]): Table[string, string] = OpenXRVisibilityMask_vmap