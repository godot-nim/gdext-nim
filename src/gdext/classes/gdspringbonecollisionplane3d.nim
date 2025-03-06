{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdspringbonecollision3d; export gdspringbonecollision3d

const SpringBoneCollisionPlane3D_vmap =
  SpringBoneCollision3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SpringBoneCollisionPlane3D]): Table[string, string] = SpringBoneCollisionPlane3D_vmap