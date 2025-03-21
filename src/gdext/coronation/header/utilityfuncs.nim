import gdext/gdinterface/[ methodtools ]
export                     methodtools

import gdext/private/gdinterface; export gdinterface
import gdext/builtinindex; export builtinindex

import gdext/private/native
export native

proc load*(proc_name: string; hash: int): PtrUtilityFunction =
  let name = stringName proc_name
  interface_Variant_getPtrUtilityFunction(addr name, hash)