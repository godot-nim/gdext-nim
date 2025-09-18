{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(ResourceImporter, RefCounted)

method getBuildDependencies*(self: ResourceImporter; path: String): PackedStringArray {.base.} = (discard)
proc registerVirtual_getBuildDependencies*[T: ResourceImporter](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_build_dependencies"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ResourceImporter](p_instance).getBuildDependencies(p_args[0].decode(String)).encode(r_ret)
