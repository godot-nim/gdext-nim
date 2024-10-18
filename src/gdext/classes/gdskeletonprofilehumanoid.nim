{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonprofile; export gdskeletonprofile

const SkeletonProfileHumanoid_vmap =
  SkeletonProfile.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SkeletonProfileHumanoid]): Table[string, string] = SkeletonProfileHumanoid_vmap