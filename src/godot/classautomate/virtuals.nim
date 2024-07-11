import godotcore/dirty/gdextension_interface
import godotcore/builtinindex
import godotcore/GodotClassMeta

import contracts

import std/tables
import std/macros

proc get_virtual_bind*(p_userdata: pointer; p_name: ConstStringNamePtr): ClassCallVirtual {.gdcall.} =
  cast[GodotClassMeta](p_userdata).virtualMethods.getOrDefault(cast[ptr StringName](p_name)[], nil)

proc sync_methodDef*(body: Nimnode): NimNode =
  let methoddef = body
  # for sym in bindsym(methoddef[0], brForceOpen):
  #   hint repr sym.getImpl, body
  let selfT = methoddef[3][1][^2]
  let methodname = methoddef[0]
  let methodstr = newlit $methodname

  quote do:
    `methoddef`
    process(contract(`selfT`).virtual, `methodstr`):
      vmethods(`selfT`)[stringName `selfT`.EngineClass.vmap[`methodstr`]] = `methodname`