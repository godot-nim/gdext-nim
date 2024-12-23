{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

method processCustomFx*(self: RichTextEffect; charFx: gdref CharFXTransform): bool {.base.} = (discard)
proc processCustomFx(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[RichTextEffect](p_instance).processCustomFx(p_args[0].decode(gdref CharFXTransform)).encode(r_ret)
template processCustomFx_bind*(_: typedesc[RichTextEffect]): ClassCallVirtual = processCustomFx

const RichTextEffect_vmap =
  Resource.vmap.concat toTable {
    "processcustomfx" : "_process_custom_fx",
    }
template vmap*(_: typedesc[RichTextEffect]): Table[string, string] = RichTextEffect_vmap