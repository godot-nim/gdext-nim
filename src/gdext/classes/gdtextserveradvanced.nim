{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtextserverextension; export gdtextserverextension

const TextServerAdvanced_vmap =
  TextServerExtension.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TextServerAdvanced]): Table[string, string] = TextServerAdvanced_vmap