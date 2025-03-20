import gdext/gdinterface/[ extracommands, methodtools ]
export                     extracommands, methodtools

import gdext/core/[ builtinindex]
export              builtinindex

import gdext/private/native
export native

proc load*(proc_name: string; hash: int): PtrUtilityFunction =
  let name = stringName proc_name
  interface_Variant_getPtrUtilityFunction(addr name, hash)