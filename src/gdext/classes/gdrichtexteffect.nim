{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(RichTextEffect, Resource)

method processCustomFx*(self: RichTextEffect; charFx: gdref CharFXTransform): bool {.base.} = (discard)
proc registerVirtual_processCustomFx*[T: RichTextEffect](Self: typedesc[T]) =
  Self.vmethods[newStringName"_process_custom_fx"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[RichTextEffect](p_instance).processCustomFx(p_args[0].decode(gdref CharFXTransform)).encode(r_ret)
