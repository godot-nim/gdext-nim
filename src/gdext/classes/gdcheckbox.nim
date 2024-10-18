{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdbutton; export gdbutton

const CheckBox_vmap =
  Button.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CheckBox]): Table[string, string] = CheckBox_vmap