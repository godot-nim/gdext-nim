{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrbindingmodifier; export gdopenxrbindingmodifier

const OpenXRIPBindingModifier_vmap =
  OpenXRBindingModifier.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRIPBindingModifier]): Table[string, string] = OpenXRIPBindingModifier_vmap