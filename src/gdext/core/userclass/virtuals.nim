import std/[sequtils, sets, tables, genasts]

import gdext/gdinterface/[objects, extracommands, exceptions]

import gdext/utils/macros
import gdext/core/gdclass
import gdext/core/typeshift

import contracts
import methodinfo

proc emitterdef(middle: MiddleExp; procdef: NimNode): NimNode =
  let body = ident"body"
  let namesym = ident"methodName"
  result = newProc(procType = nnkTemplateDef,
    name =  ident($middle.name & "_emit").postFix("*"),
    params = concat(@[bindsym"untyped"], procdef.params[1..^1], @[newIdentDefs(body, newEmptyNode())])
  )

  let call = genAst(
        self = procdef.params[1][0],
        args = newBracket middle.args.mapIt(ident"variant".newCall it.namesym),
        namesym,
      ):
    self.callScriptMethod(namesym, args)

  let sentence =
    if middle.hasResult:
      genast(call, resT = middle.result_T):
        return call.get(resT)
    else:
      genast(call):
        discard call
        return

  result.body = genAst(namesym, namelit = middle.name.toStrLit, sentence, body):
    try:
      let namesym {.global.} = stringName namelit
      if self.hasScriptMethod(namesym):
        sentence
      else:
        body
    except:
      reportErr getCurrentException()
      return

proc callwithEmitter*(procdef: NimNode): NimNode =

  let emitter = ident($procdef.name & "_emit")
  let call = emitter.newCall(procdef.params[1..^1].mapIt(it[0])).add(procdef.body)
  let errormsg = newlit "The " & $procdef.name & " method of the parent class cannot be called. Verify that the method exists, that the name is correct, and that the class module declaring the method is imported."
  let error = bindSym"lineerror".newCall(errormsg, procdef.name)
  quote do:
    when compiles(`call`):
      `call`
    else:
      `error`

proc sync_virtualDef*(procdef: NimNode): NimNode =
  var middle = parseMiddle procdef

  procdef.body = procdef.callWithEmitter()

  result = quote"@" do:
    @(middle.emitterdef(procdef))
    @procdef
    proc register_virtualMethod {.execon: Contract[@(middle.self_T)].virtual_base.} =
      let info = @(middle.virtualMethodInfo)
      interface_classdb_register_extension_class_virtual_method(
        environment.library, addr className @(middle.self_T), addr info)
