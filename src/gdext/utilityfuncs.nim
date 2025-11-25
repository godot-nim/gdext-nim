import gdext/private/gdinterface
import gdext/builtinindex

proc load(proc_name: string; hash: int64): PtrUtilityFunction =
  let name = newStringNameInternal proc_name
  interface_Variant_getPtrUtilityFunction(addr name, hash)

include gdext/gen/utilityfuncs
