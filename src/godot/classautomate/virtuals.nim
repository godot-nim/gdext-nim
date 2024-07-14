import godotcore/dirty/gdextension_interface
import godotcore/builtinindex
import godotcore/events
import godotcore/GodotClass

import contracts

import std/tables
import stdwrap/macros

proc get_virtual_bind*(p_userdata: pointer; p_name: ConstStringNamePtr): ClassCallVirtual {.gdcall.} =
  cast[GodotClassMeta](p_userdata).virtualMethods.getOrDefault(cast[ptr StringName](p_name)[], nil)

proc sync_methodDef*(body: Nimnode): NimNode =
  let methoddef = body
  # for sym in bindsym(methoddef[0], brForceOpen):
  #   hint repr sym.getImpl, body
  let selfT = methoddef[3][1][^2]
  let methodstr = $methoddef[0].basename
  let methodstrlit = newlit methodstr
  let methodname = ident methodstr & "_bind"

  quote do:
    `methoddef`
    process(contract(`selfT`).virtual, `methodstrlit`):
      vmethods(`selfT`)[stringName `selfT`.EngineClass.vmap[`methodstrlit`]] = `selfT`.`methodname`