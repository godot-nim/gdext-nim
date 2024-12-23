import std/[tables, sets]

import gdext/utils/[macros]
import gdext/gdinterface/classDB
import gdext/core/gdclass
import gdext/core/builtinindex
import gdext/core/typeshift

import gdext/classes/gdobject

import contracts
import propertyinfo

proc isSignal*(procdef: NimNode): bool = procdef.hasPragma("signal")

proc makebody (params, gdname, self: NimNode): NimNode =
  let variantArrDef = newNimNode nnkBracket

  for i, (name, typ, _) in params.breakArgs:
    if i == 0: continue
    variantArrDef.add bindSym"variant".newCall(name)

  if variantArrDef.len == 0:
    variantArrDef.add newObjConstr(bindSym"Variant")

  quote do:
    var signalName {.global.}: Variant
    once:
      signalName = variant stringName `gdname`
    let variantArr = `variantArrDef`
    `self`.emitSignal(signalName, variantArr)

macro parseParams (params): untyped =
  var arguments = newNimNode nnkBracket

  for i, (name, typ, _) in params.breakArgs:
    if i == 0: continue
    let namelit = name.toStrLit
    arguments.add quote do:
      propertyInfo(typedesc `typ`, stringName `namelit`)

  quote do: @`arguments`

macro contractSignal (params; gdname: string): untyped =
  let arg0_T = params[1][1]
  let procsym = ident $gdname

  quote do:
    proc `procsym` {.execon: Contract[`arg0_T`].signal.} =
      classDB.registerSignal(className(`arg0_T`), `gdname`, parseParams(`params`))

proc sync_signal*(procDef: NimNode): NimNode =
  const errmsgSignalResultTypeMismatch = "invalid form; to define signal, result must be type Error."
  if procdef.hasNoReturn:
    error errmsgSignalResultTypeMismatch, procdef

  let params = procdef.params
  let procdef_global = copy procdef

  let gdname = procDef.getPragmaVal("name") or procDef.name.toStrLit

  let params_global = newFormalParams(
    params[0],
    newIdentDefs(ident"_", bindsym"typeof".newcall(ident"extmain")))
  if params.len > 1:
    params_global.add(params[1..^1])
  procdef_global.body = params_global.makebody(gdname, ident"extmain")

  if params.len <= 1:
    return quote do:
      `procdef_global`
      contractSignal(`params_global`, `gdname`)


  let arg0T = params[1][1]

  if $arg0_T in invoked:
    error "Registration is not reflected. Define it before calling proc register " & $arg0T & ".", procdef



  result = newNimNode nnkWhenStmt

  for i, arg in procdef.params:
    if i == 0:
      result.add newElifBranch(
        (quote do: `arg` isnot Error),
        bindsym"lineerror".newcall(newlit errmsgSignalResultTypeMismatch, procdef.name)
      )
    else:
      let argT = arg[1]
      result.add newElifBranch(
        (quote do: `argT` isnot SomeProperty),
        bindsym"lineerror".newcall(newlit "invalid form; the type `" & argT.repr & "` is not supported for argument.", arg)
      )

  procdef.body = params.makebody(gdname, procdef.params[1][0])
  result.add newElifBranch(
    quote do:
      `arg0T` is SomeClass,
    quote do:
      `procdef`
      contractSignal(`params`, `gdname`)
  )


  result.add newElse(
    quote do:
      `procdef_global`
      contractSignal(`params_global`, `gdname`)
  )