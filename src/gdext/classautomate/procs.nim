import std/macros
import std/sequtils

import gdextcore/commandindex
import gdextcore/gdclass
import gdextcore/staticevents

import contracts
import methodinfo
import propertyinfo
import checkform

macro registerProc(procdef): untyped =
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
    process(contract(`arg0T`).procedure, `gdname`):
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
  let arg0T = procdef.params[1][1]

  let arg0Tsym =
    if arg0T.kind == nnkBracketExpr: arg0T[1]
    else: arg0T

  if arg0Tsym.repr in invoked:
    error "Registration is not reflected. Define it before calling proc register " & arg0Tsym.repr & ".", procdef

  result = newNimNode nnkWhenStmt

  for i, arg in procdef.params:
    if i == 0: continue
    let argT = arg[1]
    result.add nnkElifBranch.newTree(
      (quote do: `argT` isnot SomeProperty),
      bindsym"lineerror".newcall(newlit "invalid form; the type `" & argT.repr & "` is not supported for argument.", arg)
    )

  result.add nnkElifBranch.newTree(
    quote do:
      `arg0T` is GodotClass,
    quote do:
      `procdef`
      registerProc `procdef`
  )

  let procNimMain = makeNimMainProc procdef

  result.add nnkElse.newTree(
    quote do:
      `procdef`
      `procNimMain`
      registerProc `procNimMain`
  )
