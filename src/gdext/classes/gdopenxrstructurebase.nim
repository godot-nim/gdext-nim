{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(OpenXRStructureBase, RefCounted)

method getHeader*(self: OpenXRStructureBase; next: uint64): uint64 {.base.} = (discard)
proc registerVirtual_getHeader*[T: OpenXRStructureBase](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_header"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRStructureBase](p_instance).getHeader(p_args[0].decode(uint64)).encode(r_ret)

proc getStructureType*(self: OpenXRStructureBase): uint64 =
  expandMethodBind(className OpenXRStructureBase, "get_structure_type", 2455072627)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc setNext*(self: OpenXRStructureBase; entity: gdref OpenXRStructureBase): void =
  expandMethodBind(className OpenXRStructureBase, "set_next", 334698771)
  methodbind.ptrcall(self, [getPtr entity])

proc getNext*(self: OpenXRStructureBase): gdref OpenXRStructureBase =
  expandMethodBind(className OpenXRStructureBase, "get_next", 2798796760)
  var ret: encoded gdref OpenXRStructureBase
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref OpenXRStructureBase)

template next*(self: OpenXRStructureBase): untyped = self.getNext()
template `next=`*(self: OpenXRStructureBase; value) = self.setNext(value)
