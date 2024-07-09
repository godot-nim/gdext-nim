import std/tables
import std/macros

import virtuals

import godotcore/dirty/gdextension_interface
import godotcore/GodotClass
import godotcore/GodotClassMeta
import godotcore/Variant
import godotcore/builtinindex
import godot/classtraits
import godot/varianttraits

const Auto* = ""

# Class
# -----

template register_class*(T: typedesc[SomeUserClass]) =
  let dataunit = get_registrationData(T)
  if dataunit.initTarget != initManager.currentLevel: return
  let info = T.creationInfo(false, false)
  interfaceClassdbRegisterExtensionClass(library, addr className(T), addr className(T.Super), addr info)
  T.EngineClass.bind_virtuals(T)
  start dataunit

# Signal
# ------

template signal* {.pragma.}

type ClassSignalInfo = ref object
  name: StringName
  arguments: seq[PropertyInfo]

proc classSignalInfo_fromdef*(procdef: NimNode; gdname: NimNode): NimNode =
  let params = procDef.params

  var arguments = newNimNode nnkBracket
  for i, (name, Type, default) in params.breakArgs:
    if i == 0: continue # [0: self/typedesc[self], 1: arg1, 2: arg2...]
    let name = toStrLit name
    arguments.add quote do:
      native propertyInfo(typedesc `Type`, `name`)[]

  result = quote do:
    ClassSignalInfo(
      name: `gdname`,
      arguments: @`arguments`,
    )
proc signalBody*(procdef: NimNode; gdname: NimNode): NimNode =
  var self: NimNode
  let variantArrDef = newNimNode nnkBracket
  for i, (name, Type, default) in procdef.params.breakArgs:
    if i == 0:
      self = name
    else:
      variantArrDef.add bindSym"variant".newCall(name)
  if variantArrDef.len == 0:
    variantArrDef.add nnkObjConstr.newTree(bindSym"Variant")

  quote do:
    var signalName {.global.}: Variant
    once:
      signalName = variant init_StringName `gdname`

    let variantArr = `variantArrDef`
    `self`.emitSignal(signalName, variantArr)

# Property
# --------

macro property*(Class: typedesc[SomeUserClass]; name: string; `type`: typedesc; body) =
  var getter, setter, hint, usage: NimNode
  let glue = genSym(nskLet, "glue")
  var set_hint = nnkDiscardStmt.newTree(newEmptyNode())
  var set_usage = nnkDiscardStmt.newTree(newEmptyNode())
  for tag in body:
    case tag.kind
    of nnkCall:
      case $tag[0]
      of "getter": getter = tag[1]
      of "setter": setter = tag[1]
      of "hint": hint = tag[1]
      of "usage": usage = tag[1]
    else:
      discard
  if hint != nil:
    set_hint = quote do:
      `glue`.hint = `hint`
  if usage != nil:
    set_usage = quote do:
      `glue`.usage = `usage`

  quote do:
    discard define Service:
      [Unit]
      Before = toHashSet [get_registrationData(typedesc `Class`).props]
      [Service]
      ExecStart = proc(userdata: pointer) =
        let `glue`: ref PropertyInfoGlue = propertyInfo(`type`, `name`)
        `set_hint`
        `set_usage`
        let setter: StringName = `setter`
        let getter: StringName = `getter`
        interface_ClassDB_registerExtensionClassProperty(library, addr className(`Class`), native `glue`, addr setter, addr getter)

# Method
# ------
