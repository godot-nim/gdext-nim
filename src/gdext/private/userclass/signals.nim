import std/[tables, sets]

import gdext/private/buildsettings
import gdext/private/gdinterface
import gdext/private/staticevents
import gdext/private/typeshift
import gdext/private/propertyinfo
import gdext/private/classindex
import gdext/builtinindex

import gdext/classes/gdobject

import tools

import gdext/private/macros

when Assistance.genEditorHelp:
  import gdext/private/doctools

proc isSignal*(procdef: NimNode): bool = procdef.hasPragma("signal")

proc makebody (params, gdname, self: NimNode): NimNode =
  let variantArrDef = newNimNode nnkBracket

  for i, (name, typ, _) in params.breakArgs:
    if i == 0: continue
    variantArrDef.add bindSym"variant".newCall(name)

  quote do:
    var signalName {.global.}: StringName
    once:
      signalName = newStringName `gdname`
    `self`.emitSignal(signalName, `variantArrDef`)

macro parseParams (params): seq[PropertyInfo] =
  var arguments = newNimNode nnkBracket

  for i, (name, typ, _) in params.breakArgs:
    if i == 0: continue
    let namelit = name.toStrLit
    arguments.add quote do:
      propertyInfo(typedesc `typ`, newStringName `namelit`).unheap

  quote do: @`arguments`

macro contractSignal (params, procdef; gdname: string): untyped =
  let arg0_T = params[1][1]
  let procsym = ident gdname.repr

  result = quote do:
    proc `procsym` {.execon: Contract[`arg0_T`].signal.} =
      ClassDB.registerExtensionClassSignal(className(`arg0_T`), &`gdname`, parseParams(`params`))

  when Assistance.genEditorHelp:
    let desc = procdef.getEditorHelp
    result.body.add quote do:
      docClassDB[`arg0_T`].signals.add DocSignal(name: `gdname`, description: `desc`)

const errmsgSignalResultTypeMismatch = "invalid form; to define signal, result must be type Error."

macro syncSignalGlobal(procdef): untyped =
  let extmain = ident "extmain"

  if procdef.hasNoReturn:
    error errmsgSignalResultTypeMismatch, procdef

  let gdname = procdef.gdname

  let params = newFormalParams(
      procdef.params[0],
      newIdentDefs(ident"_", bindsym"typeof".newcall(extmain)))
    .add(procdef.params[1..^1])

  procdef.body = params.makebody(gdname, extmain)

  if Extension.name in invoked:
    error "Registration is already finished. Define it before `GDExtensionEntryPoint` appears.", procdef

  result = quote do:
    `procdef`
    contractSignal(`params`, `procdef`, `gdname`)

macro syncSignalLocal(procdef): untyped =
  const errmsgSignalResultTypeMismatch = "invalid form; to define signal, result must be type Error."
  if procdef.hasNoReturn:
    error errmsgSignalResultTypeMismatch, procdef

  let params = procdef.params

  let gdname = procdef.gdname

  let arg0T = params[1][1]

  if $arg0_T in invoked:
    error "Registration is already finished. Define it before `register " & $arg0T & "` appears.", procdef

  procdef.body = params.makebody(gdname, procdef.params[1][0])
  quote do:
    `procdef`
    contractSignal(`params`, `procdef`, `gdname`)

proc syncSignal*(procdef: NimNode): Nimnode =
  if procdef.hasNoReturn:
    error errmsgSignalResultTypeMismatch, procdef

  if procdef.params.len == 1:
    return bindSym"syncSignalGlobal".newCall(procdef)

  procdef.withCheckTypes(
    onSelfTypeFailed = bindSym"syncSignalGlobal".newCall(procdef),
    onDefault = bindSym"syncSignalLocal".newCall(procdef))
