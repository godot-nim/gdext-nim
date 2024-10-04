import cloths

import submodules/wordropes
import submodules/semanticstrings

import ../functions
import ../arguments
import ../classindex
import types/json

import std/options
import std/sequtils
import std/strutils
import std/strformat

proc convert*(raw: JsonSignalArgument): RenderableArgument =
  new result
  preconvert(result, some raw.`type`)
  result.variableSym = raw.name.replace("result", "retval").scan.convert(VariableSym)

proc weave_signals*(class: Class): Cloth =
  proc argjoin(strs: seq[string]): string = strs.join(", ")
  proc add_variant(sym: VariableSym): string = "variant " & $sym
  proc strlit(sym: string): string = "\"" & $sym & "\""
  weave margin:
    for signal in class.json.signals.get(@[]):
      let typedkey = ProcKey(
        kind: pkTemplate,
        name: signal.name.scan.convert(ProcSym),
        self: RenderableSelfArgument(typesym: class.typesym),
        args: signal.arguments.get(@[]).mapIt(it.convert),
        result: RenderableResult(typesym: TypeSym"Error"),
      )
      let untypedkey = ProcKey(
        kind: pkProc,
        name: typedkey.name,
        self: typedkey.self,
        args: typedkey.args.mapIt(RenderableArgument(
          info: it.info,
          typeSym: TypeSym.Variant,
          variableSym: it.variableSym,
        )),
        result: typedkey.result,
      )
      weave multiline:
        weave untypedkey
        &"  var signalname {{.global.}} : Variant"
        &"  once:"
        &"    signalname = variant stringname({strlit signal.name})"
        if untypedkey.args.len != 0:
          &"  let args = [{untypedkey.args.mapit($it.name).argjoin}]"
          &"  self.emitSignal(signalname, args)"
          if typedkey.args.filterIt($it.typesym != "Variant").len == 0:
            weave typedkey
            &"  self.{untypedkey.name}({typedkey.args.mapit(it.variableSym.add_variant).argjoin})"
        else:
          &"  self.emitSignal(signalname)"