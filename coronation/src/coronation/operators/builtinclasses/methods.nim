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

const NilUnsafe = [
  TypeSym"Array",
  TypeSym"Dictionary",
]

type
  BuiltinClassMethodEntry* = ref object of GodotProc
    containerKey: ContainerKey
    isVarargs: bool

proc extract_result(self: JsonBuiltinClassMethod): RenderableResult =
  if self.name == "hash":
    convertToResult some "Hash"
  else:
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
    isVarargs: json.is_vararg,
  )
  result.containerKey = gen_containerKey result

proc weave_container*(entry: BuiltinClassMethodEntry): Cloth =
  &"var {entry.containerKey}: PtrBuiltinMethod"

proc weave_loadstmt*(entry: BuiltinClassMethodEntry): Cloth =
  &"{entry.containerKey} = load({variantType entry.self.typesym}, \"{entry.native_name}\", {get entry.hash})"

proc weave_procdef*(entry: BuiltinClassMethodEntry): Cloth =
  let p_self = case entry.self.isStatic
  of false: &"addr {entry.self.name}"
  of true: "nil"
  let p_result =
    if entry.result.typeSym == TypeSym.Void: "nil"
    else: "addr result"

  let nonvarargs=
    if entry.isVarargs: entry.args[0..^2]
    else: entry.args
  let argarr = "[" & nonvarargs.mapIt(&"getPtr {it.name}").join(", ") & "]"

  weave multiline:
    weave ProcKey entry
    weave cloths.indent:
      if entry.self.typeSym in NilUnsafe:
        &"nilCheck {entry.self.name}"
      if entry.isVarargs:
        let vararg = entry.args[^1]
        if nonvarargs.len == 0:
          &"if {vararg.name}.len == 0:"
          &"  {entry.containerKey}({p_self}, nil, {p_result}, 0)"
          "else:"
          &"  let argArr = getptr {vararg.name}"
          &"  {entry.containerKey}({p_self}, addr argArr[0], {p_result}, cint {vararg.name}.len)"
        else:
          &"if {vararg.name}.len == 0:"
          &"  let argArr = {argarr}"
          &"  {entry.containerKey}({p_self}, addr argArr[0], {p_result}, {nonvarargs.len})"
          "else:"
          &"  var argArr = @{argarr}"
          &"  argArr.add {vararg.name}.getptr"
          &"  {entry.containerKey}({p_self}, addr argArr[0], {p_result}, cint argArr.len)"
      else:
        if nonvarargs.len == 0:
          &"{entry.containerKey}({p_self}, nil, {p_result}, {entry.args.len})"
        else:
          &"let argArr = {argarr}"
          &"{entry.containerKey}({p_self}, addr argArr[0], {p_result}, {nonvarargs.len})"

proc weave_methods*(json: JsonBuiltinClass): Cloth =
  let typesym = json.name.convert(TypeSym)
  let nilUnsafe = typesym in NilUnsafe

  proc extract_self(it: JsonBuiltinClassMethod): RenderableSelfArgument =
    RenderableSelfArgument(
      typeSym: typeSym,
      info: ParamInfo(
        isMutable: not it.is_const,
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
          if nilUnsafe and not entry.self.info.isMutable:
            entry.self.info.isMutable = true
            weave_procdef entry
            entry.self.info.isMutable = false
          weave_procdef entry

      weave multiline:
        &"proc load_{typesym}_methods {{.execon: staticevents.init_engine.on_load_builtinclassMethod.}} ="
        weave cloths.indent:
          for entry in requires:
            weave_loadstmt entry