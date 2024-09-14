import gdext/dirty/gdextensioninterface; export gdextensioninterface
import gdext/utils/staticevents; export staticevents
import gdext/core/builtinindex; export builtinindex
import gdext/core/commandindex; export commandindex
import gdext/core/extracommands
import gdext/core/gdclass; export gdclass
import gdext/core/methodtools; export methodtools

from std/unicode import Rune; export Rune

proc load*(typ: VariantType; proc_name: string; hash: int): PtrBuiltinMethod =
  let name = stringName proc_name
  interface_Variant_getPtrBuiltinMethod(typ, addr name, hash)