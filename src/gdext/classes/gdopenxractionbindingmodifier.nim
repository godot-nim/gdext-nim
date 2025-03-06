{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrbindingmodifier; export gdopenxrbindingmodifier

const OpenXRActionBindingModifier_vmap =
  OpenXRBindingModifier.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRActionBindingModifier]): Table[string, string] = OpenXRActionBindingModifier_vmap