{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdbutton; export gdbutton

const CheckButton_vmap =
  Button.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CheckButton]): Table[string, string] = CheckButton_vmap