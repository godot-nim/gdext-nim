{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcamera3d; export gdcamera3d

const XRCamera3D_vmap =
  Camera3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XRCamera3D]): Table[string, string] = XRCamera3D_vmap