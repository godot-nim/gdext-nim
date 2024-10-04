import cloths

import ../arguments
import ../functions

import types/json

import submodules/wordropes
import submodules/semanticstrings
import config

import std/options
import std/strformat
import std/strutils
import std/sequtils
import std/sets

type
  BuiltinClassMethodEntry* = ref object of GodotProc
    containerKey: ContainerKey

proc extract_result(self: JsonBuiltinClassMethod): RenderableResult =
  convertToResult self.return_type

proc extract_args(self: JsonBuiltinClassMethod): seq[RenderableArgument] =
  result = self.arguments.get(@[])
    .mapIt(convert it)
  if self.is_vararg:
    result.add RenderableArgument(
      variableSym: VariableSym"args",
      info: ParamInfo(isVarargs: true),
      typeSym: TypeSym.Variant,
      default_value: none string)

proc convert*(json: JsonBuiltinClassMethod; self_type: RenderableSelfArgument): BuiltinClassMethodEntry =
  result = BuiltinClassMethodEntry(
    kind: pkProc,
    name: json.name.scan.convert(ProcSym),
    self: self_type,
    args: json.extract_args(),
    result: json.extract_result(),

    native_name: json.name,
    hash: some json.hash,
  )
  result.containerKey = gen_containerKey result
  # TODO: Support varargs
  if json.is_vararg:
    result.pragmas.list.add "error"

proc weave_container*(entry: BuiltinClassMethodEntry): Cloth =
  &"var {entry.containerKey}: PtrBuiltinMethod"

proc weave_loadstmt*(entry: BuiltinClassMethodEntry): Cloth =
  &"{entry.containerKey} = load({variantType entry.self.typesym}, \"{entry.native_name}\", {get entry.hash})"

proc weave_procdef*(entry: BuiltinClassMethodEntry): Cloth =
  if "error" in entry.pragmas.list:
    return

  let p_self = case entry.self.isStatic
  of false: &"addr {entry.self.name}"
  of true: "nil"
  let p_args =
    if entry.args.len == 0: "nil"
    else: "addr argArr[0]"
  let p_result =
    if entry.result.typeSym == TypeSym.Void: "nil"
    else: "addr result"

  weave multiline:
    weave ProcKey entry
    weave cloths.indent:
      if entry.args.len != 0:
        &"let argArr = [" & entry.args.mapIt(&"getPtr {it.name}").join(", ") & "]"
      &"{entry.containerKey}({p_self}, {p_args}, {p_result}, {entry.args.len})"

proc weave_methods*(json: JsonBuiltinClass): Cloth =
  let typesym = json.name.scan.convert(TypeSym)

  proc extract_self(it: JsonBuiltinClassMethod): RenderableSelfArgument =
    RenderableSelfArgument(
      typeSym: typeSym,
      info: ParamInfo(
        ismutable: not it.is_const,
      ),
      isStatic: it.isStatic,
    )

  let methods = json.methods.get(@[])
    .mapIt(it.convert(extract_self it))
  let requires = methods
    .filterIt(it.containerKey notin manualImplemented.functions)

  weave margin:
    if methods.len != 0:
      weave multiline:
        for entry in methods:
          if entry.containerKey in manualImplemented.functions:
            "# " & $entry.containerKey
          else:
            weave_container entry

      weave multiline:
        for entry in requires:
          weave_procdef entry

      weave multiline:
        &"proc load_{typesym}_methods {{.execon: staticevents.init_engine.on_load_builtinclassMethod.}} ="
        weave cloths.indent:
          for entry in requires:
            weave_loadstmt entry