{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdslider; export gdslider

const HSlider_vmap =
  Slider.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HSlider]): Table[string, string] = HSlider_vmap