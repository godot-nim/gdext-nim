{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdscript; export gdscript

proc new*(self: GdScript; args: varargs[Variant]): Variant =
  expandMethodBind(className GdScript, "new", 1545262638)
  var `?param` = newSeqOfCap[VariantPtr](0+args.len)
  `?param`.add []
  methodbind.call(self, `?param`, args).get(Variant)
template new*(self: GdScript; args: varargs[Variant]): Variant =
  new(self, args)

const GdScript_vmap =
  Script.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GdScript]): Table[string, string] = GdScript_vmap