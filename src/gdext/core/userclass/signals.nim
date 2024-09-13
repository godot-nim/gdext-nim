import std/[tables, sets]

import gdext/utils/[macros, staticevents]
import gdext/dirty/gdextensioninterface
import gdext/core/gdclass
import gdext/core/builtinindex
import gdext/core/commandindex
import gdext/core/typeshift

import gdextgen/classes/gdobject

import contracts
import propertyinfo
import checkform

proc isSignal*(procdef: NimNode): bool =
  for expr in procdef.pragma:
    case expr.kind
    of nnkIdent:
      if expr.eqIdent "signal":
        return true
    else:
      discard

proc makebody (params, gdname, self: NimNode): NimNode =
  let variantArrDef = newNimNode nnkBracket

  for i, (name, typ, _) in params.breakArgs:
    if i == 0: continue
    variantArrDef.add bindSym"variant".newCall(name)

  if variantArrDef.len == 0:
    variantArrDef.add nnkObjConstr.newTree(bindSym"Variant")

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
      let p_name = stringName `namelit`
      propertyInfo(typedesc `typ`, addr p_name)

  quote do: @`arguments`

macro registerSignal (params; gdname: string): untyped =
  let arg0_T = params[1][1]
  let procsym = ident $gdname

  quote do:
    proc `procsym` {.execon: Contract[`arg0_T`].signal.} =
      let
        name = stringName `gdname`
        params: seq[PropertyInfo] = parseParams(`params`)
        size = params.len
        head = (if size == 0: nil else: addr params[0])

      interface_ClassDB_registerExtensionClassSignal(
        environment.library, addr className(`arg0_T`), addr name, head, size)

proc sync_signal*(procDef: NimNode): NimNode =
  const errmsgSignalResultTypeMismatch = "invalid form; to define signal, result must be type Error."
  if procdef.hasNoReturn:
    error errmsgSignalResultTypeMismatch, procdef

  let params = procdef.params
  let procdef_global = copy procdef

  var gdname = procDef.name.toStrLit
  for expr in procDef.pragma:
    case expr.kind
    of nnkCall, nnkExprColonExpr:
      case $expr[0]
      of "name":
        gdname = expr[1]
    else:
      discard

  let params_global = nnkFormalParams.newTree(
    params[0],
    newIdentDefs(ident"_", bindsym"typeof".newcall(ident"extmain")))
  if params.len > 1:
    params_global.add(params[1..^1])
  procdef_global.body = params_global.makebody(gdname, ident"extmain")

  if params.len <= 1:
    return quote do:
      `procdef_global`
      registerSignal(`params_global`, `gdname`)


  let arg0T = params[1][1]

  if $arg0_T in invoked:
    error "Registration is not reflected. Define it before calling proc register " & $arg0T & ".", procdef



  result = newNimNode nnkWhenStmt

  for i, arg in procdef.params:
    if i == 0:
      result.add nnkElifBranch.newTree(
        (quote do: `arg` isnot Error),
        bindsym"lineerror".newcall(newlit errmsgSignalResultTypeMismatch, procdef.name)
      )
    else:
      let argT = arg[1]
      result.add nnkElifBranch.newTree(
        (quote do: `argT` isnot SomeProperty),
        bindsym"lineerror".newcall(newlit "invalid form; the type `" & argT.repr & "` is not supported for argument.", arg)
      )

  procdef.body = params.makebody(gdname, procdef.params[1][0])
  result.add nnkElifBranch.newTree(
    quote do:
      `arg0T` is GodotClass,
    quote do:
      `procdef`
      registerSignal(`params`, `gdname`)
  )


  result.add nnkElse.newTree(
    quote do:
      `procdef_global`
      registerSignal(`params_global`, `gdname`)
  )