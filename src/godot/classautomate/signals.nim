import std/tables
import godotcore/utils/macros

import contracts

import godotcore/dirty/gdextension_interface
import godotcore/GodotClass
import godotcore/Variant
import godotcore/builtinindex
import godotcore/commandindex

import godotgen/classes/gdObject

import godot/varianttraits


template signal* {.pragma.}

proc isSignal*(procdef: NimNode): bool =
  for expr in procdef.pragma:
    case expr.kind
    of nnkIdent:
      if expr.eqIdent "signal":
        return true
    else:
      discard

type ClassSignalInfo = ref object
  name*: StringName
  arguments*: seq[PropertyInfo]

template argumentHead(info: ClassSignalInfo): ptr PropertyInfo =
  if info.arguments.len == 0: nil
  else: addr info.arguments[0]
template argumentSize(info: ClassSignalInfo): Int =
  info.arguments.len

proc sync_signal*(procDef: NimNode): NimNode =
  let arg0 = procDef.params[1][0]
  let arg0_T = procDef.params[1][1]
  var gdname = procDef.name.toStrLit
  for expr in procDef.pragma:
    case expr.kind
    of nnkCall, nnkExprColonExpr:
      case $expr[0]
      of "name":
        gdname = expr[1]
    else:
      discard

  var arguments = newNimNode nnkBracket
  let variantArrDef = newNimNode nnkBracket

  for i, (name, typ, _) in procdef.params.breakArgs:
    if i == 0: continue
    let namelit = name.toStrLit
    variantArrDef.add bindSym"variant".newCall(name)
    arguments.add quote do:
      native propertyInfo(typedesc `typ`, `namelit`)[]

  if variantArrDef.len == 0:
    variantArrDef.add nnkObjConstr.newTree(bindSym"Variant")

  procdef.body = quote do:
    var signalName {.global.}: Variant
    once:
      signalName = variant stringName `gdname`
    let variantArr = `variantArrDef`
    `arg0`.emitSignal(signalName, variantArr)

  quote do:
    `procdef`
    process(`arg0_T`.contract.signal, `gdname`):
      let info = ClassSignalInfo(
          name: stringname `gdname`,
          arguments: @`arguments`,)
      interface_ClassDB_registerExtensionClassSignal(environment.library, addr className(typedesc `arg0_T`), addr info.name, info.argumentHead, info.argumentSize)