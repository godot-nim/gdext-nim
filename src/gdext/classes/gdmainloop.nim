{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

method initialize*(self: MainLoop): void {.base.} = (discard)
proc registerVirtual_initialize*[T: MainLoop](Self: typedesc[T]) =
  Self.vmethods[stringName"_initialize"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MainLoop](p_instance).initialize()

method physicsProcess*(self: MainLoop; delta: float64): bool {.base.} = (discard)
proc registerVirtual_physicsProcess*[T: MainLoop](Self: typedesc[T]) =
  Self.vmethods[stringName"_physics_process"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MainLoop](p_instance).physicsProcess(p_args[0].decode(float64)).encode(r_ret)

method process*(self: MainLoop; delta: float64): bool {.base.} = (discard)
proc registerVirtual_process*[T: MainLoop](Self: typedesc[T]) =
  Self.vmethods[stringName"_process"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MainLoop](p_instance).process(p_args[0].decode(float64)).encode(r_ret)

method finalize*(self: MainLoop): void {.base.} = (discard)
proc registerVirtual_finalize*[T: MainLoop](Self: typedesc[T]) =
  Self.vmethods[stringName"_finalize"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MainLoop](p_instance).finalize()

proc call_onRequestPermissionsResult*(self: MainLoop; permission: Variant; granted: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("on_request_permissions_result")
  let args = [permission, granted]
  self.emitSignal(signalname, args)