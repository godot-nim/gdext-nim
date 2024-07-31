import gdextcore/dirty/gdextensioninterface
import gdextcore/builtinindex
import gdextcore/events
import gdextcore/gdclass

import contracts
import checkform

import std/tables
import gdextcore/utils/macros

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

  methoddef.withCorrectClassMethodForm quote do:
    `methoddef`
    process(contract(`selfT`).virtual, `methodstrlit`):
      vmethods(`selfT`)[stringName `selfT`.EngineClass.vmap[`methodstrlit`]] = `selfT`.`methodname`