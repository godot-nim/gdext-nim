import cloths

import submodules/[ wordropes, semanticstrings ]

import functions, arguments, config

import types/json

import std/[ options, sequtils, strutils, strformat, sets ]

proc extract_result(self: JsonUtilityFunction): RenderableResult =
  convertToResult self.return_type

proc extract_args(self: JsonUtilityFunction): seq[RenderableArgument] =
  result = self.arguments.get(@[])
    .mapIt(convert it)
  if self.is_vararg:
    result.add RenderableArgument(
      variableSym: VariableSym"args",
      info: ParamInfo(isVarargs: true),
      typeSym: TypeSym.Variant,
      default_value: none string)

proc mergeVarargs(s: var seq[RenderableArgument]): bool =
  if s.len == 2 and s[0].typeSym == TypeSym.Variant and s[1].info.isVarargs:
    s = s[1..1]
    true
  else:
    false

type UtilityFunction* = object
  key: ProcKey
  container: ContainerKey
  json: JsonUtilityFunction
  isImplemented: bool
  isVarargsMerged: bool

proc convert*(json: JsonUtilityFunction): UtilityFunction =
  result.key = ProcKey(
    kind: pkProc,
    name: json.name.scan.convert(ProcSym),
    args: json.extract_args(),
    result: json.extract_result(),
  )
  result.container = gen_containerKey result.key
  result.json = json
  result.isImplemented = result.container in manualImplemented.functions
  result.isVarargsMerged = result.key.args.mergeVarargs()

proc weave_container*(utilfunc: UtilityFunction): Cloth =
  if utilfunc.isImplemented:
    &"# {utilfunc.container}"
  else:
    &"var {utilfunc.container}: PtrUtilityFunction"

proc weave_loadstmt*(utilfunc: UtilityFunction): Cloth =
  if utilfunc.isImplemented: return
  &"{utilfunc.container} = load(\"{utilfunc.json.name}\", {utilfunc.json.hash})"

proc weave_procdef*(utilfunc: UtilityFunction): Cloth =
  if utilfunc.isImplemented: return
  let nonvarargs =
    if utilfunc.json.is_vararg: utilfunc.key.args[0..^2]
    else: utilfunc.key.args
  let argsaddr =
    if utilfunc.key.args.len == 0: "nil"
    else: "addr ptrargs[0]"
  let resaddr =
    if utilfunc.key.result.typeSym == TypeSym.Void: "nil"
    else: "getPtr result"

  weave multiline:
    weave utilfunc.key
    weave cloths.indent:
      if utilfunc.key.args.len != 0:
        let args = nonvarargs.mapIt("getPtr " & $it.name).join(", ")
        if utilfunc.json.is_vararg:
          let vararg = utilfunc.key.args[^1]
          if nonvarargs.len == 0:
            if utilfunc.isVarargsMerged:
              &"if unlikely({vararg.name}.len < 1): return"
            &"var ptrargs = newSeqOfCap[pointer]({vararg.name}.len)"
          else:
            &"let argslen = cint({nonvarargs.len} + {vararg.name}.len)"
            &"var ptrargs = newSeqOfCap[pointer](argslen)"
            &"ptrargs.add [{args}]"
          &"for arg in {utilfunc.key.args[^1].name}:"
          &"  ptrargs.add getPtr arg"
        else:
          &"const argslen = cint {utilfunc.key.args.len}"
          &"let ptrargs = [{args}]"
      else:
        "const argslen = cint 0"
      &"{utilfunc.container}({resaddr}, {argsaddr}, argslen)"