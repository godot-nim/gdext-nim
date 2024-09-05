import std/tables

import gdextcore/utils/macros
import gdextcore/gdclass
import gdextcore/staticevents

import contracts
import checkform

proc sync_methodDef*(body: Nimnode): NimNode =
  let methoddef = body
  # for sym in bindsym(methoddef[0], brForceOpen):
  #   hint repr sym.getImpl, body
  let selfT = methoddef[3][1][^2]
  if $selfT in invoked:
    error "Registration is not reflected. Define it before calling proc register " & $selfT & ".", methoddef

  let methodstr = $methoddef[0].basename
  let methodstrlit = newlit methodstr
  let methodname = ident methodstr & "_bind"

  methoddef.withCorrectClassMethodForm quote do:
    `methoddef`
    process(contract(`selfT`).virtual, `methodstrlit`):
      vmethods(`selfT`)[stringName `selfT`.EngineClass.vmap[`methodstrlit`]] = `selfT`.`methodname`