import gdext/private/gdinterface
import gdext/builtinindex
import gdext/stringtools

proc load(proc_name: string; hash: int64): PtrUtilityFunction =
  let name = newStringName proc_name
  interface_Variant_getPtrUtilityFunction(addr name, hash)

include gdext/gen/utilityfuncs
