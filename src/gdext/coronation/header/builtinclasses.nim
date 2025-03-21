import gdext/private/native; export native
import gdext/gdinterface/methodtools; export methodtools
import gdext/private/gdinterface
import gdext/private/staticevents; export staticevents
import gdext/builtinindex; export builtinindex

from std/unicode import Rune; export Rune

proc load*(typ: VariantType; proc_name: string; hash: int): PtrBuiltinMethod =
  let name = stringName proc_name
  interface_Variant_getPtrBuiltinMethod(typ, addr name, hash)

proc load*(op: Variant_Operator; left, right: VariantType): PtrOperatorEvaluator =
  interface_variantGetPtrOperatorEvaluator(cuint op.ord, left, right)