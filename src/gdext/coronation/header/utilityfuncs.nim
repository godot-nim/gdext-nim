import gdext/dirty/[ gdextensioninterface ]
export                   gdextensioninterface

import gdext/core/[ builtinindex, commandindex, extracommands, methodtools]
export             builtinindex, commandindex, extracommands, methodtools

import gdext/core/[ gdclass ]
export              gdclass

proc load*(proc_name: string; hash: int): PtrUtilityFunction =
  let name = stringName proc_name
  interface_Variant_getPtrUtilityFunction(addr name, hash)