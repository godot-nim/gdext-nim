import gdext/gdinterface/native; export native
import gdext/gdinterface/methodtools; export methodtools
import gdext/gdinterface/extracommands
import gdext/utils/staticevents; export staticevents
import gdext/core/builtinindex; export builtinindex

from std/unicode import Rune; export Rune

proc load*(typ: VariantType; proc_name: string; hash: int): PtrBuiltinMethod =
  let name = stringName proc_name
  interface_Variant_getPtrBuiltinMethod(typ, addr name, hash)