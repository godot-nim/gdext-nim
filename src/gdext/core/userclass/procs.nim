import std/[sequtils, strutils, sets, tables]

import gdext/buildconf
import gdext/utils/macros

import gdext/gdinterface/classDB
import gdext/core/gdclass

import tools
import contracts
import methodinfo
import virtuals

const errmsgSelfTypeMismatch = "invalid form; In order to synchronize the function, the first argument must inherit from the class provided by gdext."

macro registerProc*(procdef): untyped =
  let procdef =
    if procdef.kind == nnkProcDef: procdef
    else: procdef.getImpl
  let Self = procdef.params[1][1]

  let gdname = procdef.getPragmaVal("name") or newLit $procdef.name

  let methodinfoDef = procdef.classMethodInfo(gdname)

  quote do:
    proc `gdname` {.execon: Contract[typedesc[`Self`]].procedure.} =
      let info = `methodinfoDef`
      classDB.registerMethod(className(typedesc `Self`), addr info)

proc makeNimMainProc(procdef: NimNode): NimNode =
  newProc(
    name = ident $procdef.name,
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
  let methodstrlit = newlit methodstr.nimIdentNormalize
  let methodname = ident methodstr & "_bind"
  let procsym = ident methodstr

  let methoddefWithEmit = methoddef.copy
  methoddefWithEmit.body = methoddef.callWithEmitter

  result = methoddef.withCheckTypes(
    onSelfTypeFailed =
      lineerror.newcall(newlit errmsgSelfTypeMismatch, body),
    onDefault = (quote do:
      when `selfT`.vmap.hasKey(`methodStrlit`): # overriding built-in method
        `methoddef`
        proc `procsym` {.execon: Contract[`selfT`].virtual.} =
          vmethods(`selfT`)[stringName `selfT`.vmap[`methodstrlit`]] = `selfT`.`methodname`
      else: # overriding user-defined method
        `methoddefWithEmit`
    ))
