import gdext/core/commandindex
import gdext/core/builtinindex

proc stringify*(v: Variant): String =
  interface_Variant_stringify(addr v, addr result)

proc iter_init*(self: Variant; r_iter: var Variant; r_valid: var bool): bool =
  interface_Variant_iterInit(addr self, addr r_iter, addr r_valid)

proc iter_next*(self: Variant; r_iter: var Variant; r_valid: var bool): bool =
  interface_Variant_iterNext(addr self, addr r_iter, addr r_valid)

proc iter_get*(self: Variant; r_iter: var Variant; r_valid: var bool): Variant =
  interface_Variant_iterGet(addr self, addr r_iter, addr result, addr r_valid)

proc get_named*(self: Variant; name: StringName; r_isValid: var bool): Variant =
  interface_variant_get_named(addr self, addr name, addr result, addr r_isValid)
proc set_named*(self: Variant; name: StringName; value: Variant; r_isValid: var bool) =
  interface_variant_set_named(addr self, addr name, addr value, addr r_isValid)

proc get_indexed*(self: Variant; index: int; r_isValid, r_outOfBound: var bool): Variant =
  interface_variant_get_indexed(addr self, index, addr result, addr r_isValid, addr r_outOfBound)
proc set_indexed*(self: Variant; index: int; value: Variant; r_isValid, r_outOfBound: var bool) =
  interface_variant_set_indexed(addr self, index, addr value, addr r_isValid, addr r_outOfBound)

proc set_keyed*(self: Variant; key: Variant; value: Variant; r_isValid: var bool) =
  interface_variant_set_keyed(addr self, addr key, addr value, addr r_isValid)
proc get_keyed*(self: Variant; key: Variant; r_isValid: var bool): Variant =
  interface_variant_get_keyed(addr self, addr key, addr result, addr r_isValid)

proc get*(self: Variant; key: Variant; r_isValid: var bool): Variant =
  interface_variant_get(addr self, addr key, addr result, addr r_isValid)
proc set*(self: Variant; key: Variant; value: Variant; r_isValid: var bool) =
  interface_variant_set(addr self, addr key, addr value, addr r_isValid)