import std/[sequtils, strutils, sets, tables]

import gdext/private/buildsettings
import gdext/private/macros
import gdext/private/gdinterface
import gdext/private/staticevents
import gdext/private/methodinfo
import gdext/private/propertyinfo
import gdext/private/classindex

import gdext/dicttools

import tools
import virtuals

when Assistance.genEditorHelp:
  import gdext/private/doctools

const errmsgSelfTypeMismatch = "invalid form; In order to synchronize the function, the first argument must inherit from the class provided by gdext."


macro registerProc*(procdef): untyped =
  let procdef =
    if procdef.kind == nnkProcDef: procdef
    else: procdef.getImpl
  let Self = procdef.params[1][1]

  let middle = procdef.parseMiddle
  let methodinfoDef = middle.classMethodInfo()
  let gdname = middle.gdname
  let name = middle.name

  result = quote do:
    proc `gdname` {.execon: Contract[typedesc[`Self`]].procedure.} =
      let info = `methodinfoDef`
      ClassDB.registerExtensionClassMethod(className(typedesc `Self`), addr info)
      when `name`.hasCustomPragma(bridge.rpc):
        var dict = newDictionary()
        const (rpc_mode, call_local, transfer_mode, transfer_channel) = `name`.getCustomPragmaVal(bridge.rpc)
        dict[variant "rpc_mode"] = variant rpc_mode
        dict[variant "call_local"] = variant call_local
        dict[variant "transfer_mode"] = variant transfer_mode
        dict[variant "transfer_channel"] = variant transfer_channel
        Meta(`Self`).rpcConfigs[cast[ptr StringName](info.name)[]] = variant dict

  when Assistance.genEditorHelp:
    let desc = procdef.getEditorHelp
    result.body.add quote do:
      docClassDB[typedesc `Self`].methods.add DocMethod(name: `gdname`, description: `desc`)

proc makeNimMainProc(procdef: NimNode): NimNode =
  newProc(
    name = genSym(nskProc, $procdef.name),
    params = concat(
      @[procdef.params[0],
        newIdentDefs(ident"_", bindsym"typeof".newcall(ident"extmain"))],
      procdef.params[1..^1]),
    pragmas = procdef.pragma,
    body = procdef.name.newCall(procdef.params[1..^1].mapIt(it[0])),
    procType = procdef.kind,
  )

macro syncProcGlobal*(procdef): untyped =
  let procNimMain = makeNimMainProc procdef

  if Extension.name in invoked:
    error "Registration is already finished. Define it before `GDExtensionEntryPoint` appears.", procdef

  quote do:
    `procdef`
    `procNimMain`
    registerProc `procNimMain`

macro syncProcLocal*(procdef): untyped =
  let arg0T = procdef.params[1][1]

  let arg0Tsym =
    if arg0T.kind == nnkBracketExpr: arg0T[1]
    else: arg0T

  if arg0Tsym.repr in invoked:
    error "Registration is already finished. Define it before `register " & arg0Tsym.repr & "` appears.", procdef

  quote do:
    `procdef`
    registerProc `procdef`

proc sync_procDef*(procdef: NimNode): NimNode =
  if procdef.params.len <= 1:
    return bindSym"syncProcGlobal".newCall procdef

  procdef.withCheckTypes(
    onSelfTypeFailed = bindSym"syncProcGlobal".newCall procdef,
    onDefault = bindSym"syncProcLocal".newCall procdef)


proc sync_methodDef*(body: Nimnode): NimNode =
  let lineerror = bindSym "lineerror"
  let methoddef = body
  # for sym in bindsym(methoddef[0], brForceOpen):
  #   hint repr sym.getImpl, body
  let selfT = methoddef[3][1][^2]
  if $selfT in invoked:
    error "Registration is not reflected. Define it before calling proc register " & $selfT & ".", methoddef

  let methodstr = methoddef[0].basename.repr.replace("`", "")
  let registerMethod = ident "registerVirtual_" & methodstr
  let procsym = ident methodstr

  let methoddefWithEmit = methoddef.copy
  methoddefWithEmit.body = methoddef.callWithEmitter

  result = methoddef.withCheckTypes(
    onSelfTypeFailed =
      lineerror.newcall(newlit errmsgSelfTypeMismatch, body),
    onDefault = (quote do:
      when declared(`registerMethod`):
        `methoddef`
        proc `procsym` {.execon: Contract[`selfT`].virtual.} =
          `selfT`.`registerMethod`()
      else: # overriding user-defined method
        `methoddefWithEmit`
    ))
