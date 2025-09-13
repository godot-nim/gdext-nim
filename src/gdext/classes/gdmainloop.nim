{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(MainLoop, Object)

const NotificationOsMemoryWarning* = 2009
const NotificationTranslationChanged* = 2010
const NotificationWmAbout* = 2011
const NotificationCrash* = 2012
const NotificationOsImeUpdate* = 2013
const NotificationApplicationResumed* = 2014
const NotificationApplicationPaused* = 2015
const NotificationApplicationFocusIn* = 2016
const NotificationApplicationFocusOut* = 2017
const NotificationTextServerChanged* = 2018

method initialize*(self: MainLoop): void {.base.} = (discard)
proc registerVirtual_initialize*[T: MainLoop](Self: typedesc[T]) =
  Self.vmethods[newStringName"_initialize"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MainLoop](p_instance).initialize()

method physicsProcess*(self: MainLoop; delta: float64): bool {.base.} = (discard)
proc registerVirtual_physicsProcess*[T: MainLoop](Self: typedesc[T]) =
  Self.vmethods[newStringName"_physics_process"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MainLoop](p_instance).physicsProcess(p_args[0].decode(float64)).encode(r_ret)

method process*(self: MainLoop; delta: float64): bool {.base.} = (discard)
proc registerVirtual_process*[T: MainLoop](Self: typedesc[T]) =
  Self.vmethods[newStringName"_process"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MainLoop](p_instance).process(p_args[0].decode(float64)).encode(r_ret)

method finalize*(self: MainLoop): void {.base.} = (discard)
proc registerVirtual_finalize*[T: MainLoop](Self: typedesc[T]) =
  Self.vmethods[newStringName"_finalize"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MainLoop](p_instance).finalize()
