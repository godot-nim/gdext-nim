{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

const ResourceImporter_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ResourceImporter]): Table[string, string] = ResourceImporter_vmap