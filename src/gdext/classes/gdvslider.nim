{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdslider; export gdslider

const VSlider_vmap =
  Slider.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VSlider]): Table[string, string] = VSlider_vmap