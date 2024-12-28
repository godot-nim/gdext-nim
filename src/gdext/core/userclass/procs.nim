import gdext/utils/macros
import std/[sequtils, strutils, sets, tables]

import gdext/gdinterface/classDB
import gdext/core/gdclass

import contracts
import methodinfo
import propertyinfo
import virtuals

const errmsgSelfTypeMismatch = "invalid form; In order to synchronize the function, the first argument must inherit from the class provided by gdext."

proc withCorrectClassMethodForm(node, stmt: NimNode): NimNode =
  let arg0T = node.params[1][1]
  result = newNimNode nnkWhenStmt

  if node.kind == nnkMethodDef:
    result.add newElifBranch(
      (quote do: `arg0T` isnot SomeClass),
      bindsym"lineerror".newcall(newlit errmsgSelfTypeMismatch, node.params[1])
    )

  for i, arg in node.params:
    if i == 0: continue
    let argT = arg[1]
    result.add newElifBranch(
      (quote do: `argT` isnot SomeProperty),
      bindsym"lineerror".newcall(newlit "invalid form; the type `" & argT.repr & "` is not supported for argument.", arg)
    )

  result.add newElse(stmt)

macro registerProc*(procdef): untyped =
  let procdef =
    if procdef.kind == nnkProcDef: procdef
    else: procdef.getImpl
  let arg0_T = procdef.params[1][1]

  let gdname = procdef.getPragmaVal("name") or newLit $procdef.name

  let methodinfoDef = procdef.classMethodInfo(gdname)

  quote do:
    proc `gdname` {.execon: Contract[typedesc[`arg0T`]].procedure.} =
      let info = `methodinfoDef`
      classDB.registerMethod(className(typedesc `arg0_T`), addr info)

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

  var varargsFound: bool
  for i, (name, typ, default) in procdef.params.breakArgs:
    if varargsFound:
      error "invalid form; varargs must be placed at last.", typ
    var argT =
      if typ.kind == nnkEmpty: ident"typeof".newCall(default)
      else: typ
    if argT.isVarargs:
      varargsFound = true
      argT = argT[1]
    result.add newElifBranch(
      (quote do: `argT` isnot SomeProperty),
      bindsym"lineerror".newcall(newlit "invalid form; the type `" & argT.repr & "` is not supported for argument.", name)
    )

  result.add newElifBranch(
    quote do:
      `arg0T` is SomeClass,
    quote do:
      `procdef`
      registerProc `procdef`
  )


  result.add newElse(
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

  let methodstr = methoddef[0].basename.repr.replace("`", "")
  let methodstrlit = newlit methodstr.nimIdentNormalize
  let methodname = ident methodstr & "_bind"
  let procsym = ident methodstr

  let methoddefWithEmit = methoddef.copy
  methoddefWithEmit.body = methoddef.callWithEmitter

  result = methoddef.withCorrectClassMethodForm quote do:
    when `selfT`.vmap.hasKey(`methodStrlit`):
      `methoddef`
      proc `procsym` {.execon: Contract[`selfT`].virtual.} =
        vmethods(`selfT`)[stringName `selfT`.vmap[`methodstrlit`]] = `selfT`.`methodname`
    else:
      `methoddefWithEmit`
