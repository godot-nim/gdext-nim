import gdext/utils/macros
import std/[sequtils, sets]

import gdext/utils/staticevents

import gdext/core/commandindex
import gdext/core/gdclass

import contracts
import methodinfo
import propertyinfo
import checkform

macro registerProc*(procdef): untyped =
  let procdef =
    if procdef.kind == nnkProcDef: procdef
    else: procdef.getImpl
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

  quote do:
    process(contract(typedesc `arg0T`).procedure, `gdname`):
      let glue = `methodinfoDef`
      interface_ClassDB_registerExtensionClassMethod(environment.library, addr className(typedesc `arg0_T`), addr glue.info)

proc makeNimMainProc(procdef: NimNode): NimNode =
  newProc(
    name = ident $procdef.name,
    params = concat(
      @[procdef.params[0]],
      @[newIdentDefs(ident"_", bindsym"typeof".newcall(ident"extmain"))],
      procdef.params[1..^1]),
    pragmas = procdef.pragma,
    body = procdef.name.newCall(procdef.params[1..^1].mapIt(it[0])),
    procType = procdef.kind,
  )

proc sync_procDef*(procdef: NimNode): NimNode =
  let procNimMain = makeNimMainProc procdef
  if procdef.params.len <= 1:
    return quote do:
      `procdef`
      `procNimMain`
      registerProc `procNimMain`

  let arg0T = procdef.params[1][1]

  let arg0Tsym =
    if arg0T.kind == nnkBracketExpr: arg0T[1]
    else: arg0T

  if arg0Tsym.repr in invoked:
    error "Registration is not reflected. Define it before calling proc register " & arg0Tsym.repr & ".", procdef

  result = newNimNode nnkWhenStmt

  for i, (name, typ, default) in procdef.params.breakArgs:
    let argT =
      if typ.kind == nnkEmpty: ident"typeof".newCall(default)
      else: typ
    result.add nnkElifBranch.newTree(
      (quote do: `argT` isnot SomeProperty),
      bindsym"lineerror".newcall(newlit "invalid form; the type `" & argT.repr & "` is not supported for argument.", name)
    )

  result.add nnkElifBranch.newTree(
    quote do:
      `arg0T` is GodotClass,
    quote do:
      `procdef`
      registerProc `procdef`
  )


  result.add nnkElse.newTree(
    quote do:
      `procdef`
      `procNimMain`
      registerProc `procNimMain`
  )

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