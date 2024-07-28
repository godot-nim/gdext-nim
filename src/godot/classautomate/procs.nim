import std/macros

import contracts
import methodinfo
import checkform

import godotcore/commandindex
import godotcore/GodotClass

proc sync_procDef*(procdef: NimNode): NimNode =
  precheckIsCorrectClassMethod: procdef
  let name = procdef.name
  let arg0_T = procdef.params[1][1]

  let namelit = newLit $name
  var gdname = nameLit

  for pragma in procdef.pragma:
    case pragma.kind
    of nnkExprColonExpr, nnkCall:
      if pragma[0].eqIdent"name":
        gdname = pragma[1]
    else: discard

  let methodinfoDef = procdef.classMethodInfo(gdname)

  procdef.withCorrectClassMethodForm quote do:
    `procdef`
    process(contract(`arg0T`).procedure, `gdname`):
      let glue = `methodinfoDef`
      interface_ClassDB_registerExtensionClassMethod(environment.library, addr className(typedesc `arg0_T`), addr glue.info)
