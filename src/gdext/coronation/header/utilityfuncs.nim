import gdext/gdinterface/[ native, extracommands, methodtools ]
export                     native, extracommands, methodtools

import gdext/core/[ builtinindex, gdclass ]
export              builtinindex, gdclass

proc load*(proc_name: string; hash: int): PtrUtilityFunction =
  let name = stringName proc_name
  interface_Variant_getPtrUtilityFunction(addr name, hash)