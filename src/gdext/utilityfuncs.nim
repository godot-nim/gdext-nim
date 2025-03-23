import gdext/private/gdinterface
import gdext/builtinindex
import gdext/stringtools

proc load(proc_name: string; hash: int): PtrUtilityFunction =
  let name = stringName proc_name
  interface_Variant_getPtrUtilityFunction(addr name, hash)

include gdext/gen/utilityfuncs

proc print*(args: varargs[Variant, variant]) =
  if unlikely(args.len == 0): return
  print(args[0], args[1..^1])

proc printRich*(args: varargs[Variant, variant]) =
  if unlikely(args.len == 0): return
  printRich(args[0], args[1..^1])

proc printerr*(args: varargs[Variant, variant]) =
  if unlikely(args.len == 0): return
  printerr(args[0], args[1..^1])