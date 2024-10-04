{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

method initialize*(self: MainLoop): void {.base.} = (discard)
proc initialize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MainLoop](p_instance).initialize()
template initialize_bind*(_: typedesc[MainLoop]): ClassCallVirtual = initialize

method physicsProcess*(self: MainLoop; delta: float64): bool {.base.} = (discard)
proc physicsProcess(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MainLoop](p_instance).physicsProcess(p_args[0].decode(float64)).encode(r_ret)
template physicsProcess_bind*(_: typedesc[MainLoop]): ClassCallVirtual = physicsProcess

method process*(self: MainLoop; delta: float64): bool {.base.} = (discard)
proc process(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MainLoop](p_instance).process(p_args[0].decode(float64)).encode(r_ret)
template process_bind*(_: typedesc[MainLoop]): ClassCallVirtual = process

method finalize*(self: MainLoop): void {.base.} = (discard)
proc finalize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MainLoop](p_instance).finalize()
template finalize_bind*(_: typedesc[MainLoop]): ClassCallVirtual = finalize

const MainLoop_vmap =
  Object.vmap.concat toTable {
    "initialize" : "_initialize",
    "physicsprocess" : "_physics_process",
    "process" : "_process",
    "finalize" : "_finalize",
    }
template vmap*(_: typedesc[MainLoop]): Table[string, string] = MainLoop_vmap

proc onRequestPermissionsResult*(self: MainLoop; permission: Variant; granted: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("on_request_permissions_result")
  let args = [permission, granted]
  self.emitSignal(signalname, args)