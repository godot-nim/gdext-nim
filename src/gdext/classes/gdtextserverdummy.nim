{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtextserverextension; export gdtextserverextension

const TextServerDummy_vmap =
  TextServerExtension.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TextServerDummy]): Table[string, string] = TextServerDummy_vmap