import cloths
import cloths/styles/exception

import submodules/semanticstrings

import types/json

import ../arguments
import ../functions

import std/sequtils
import std/options
import std/strformat
import std/tables
import std/sets

import config

type
  BuiltinClassOperator* = ref object
    key: ProcKey
    opkey: string
    vt_first, vt_second: VariantType
    addr_first, addr_second: string

    containerKey: ContainerKey

func operator(basename: string): ProcSym =
  ProcSym:
    case basename
    of "unary+": "`+`"
    of "unary-": "`-`"
    of "//": "`div`"
    of "<<": "`shl`"
    of ">>": "`shr`"
    of "&": "`and`"
    of "|": "`or`"
    of "^": "`xor`"
    of "~": "`not`"
    else: "`" & basename & "`"
const EscapeSign = toTable {
  "==": "Equal",
  "!=": "NotEqual",
  "<": "Less",
  "<=": "LessEqual", ">": "Greater",
  ">=": "GreaterEqual",
  "+": "Add",
  "-": "Subtract",
  "*": "Multiply",
  "/": "Divide",
  "**": "Power",
  "unary-": "Negate",
  "unary+": "Positive",
  "%": "Module",
  "<<": "ShiftLeft",
  ">>": "ShiftRight",
  "&": "BitAnd",
  "|": "BitOr",
  "^": "BitXor",
  "~": "BitNegate",
  "and": "And",
  "or": "Or",
  "xor": "Xor",
  "not": "Not",
  "and": "And",
  "in": "In" }

func variantOPKey(sign: string): string =
  "op" & EscapeSign[sign]

proc convert*(operator: JsonOperator; caller: TypeSym): BuiltinClassOperator =
  new result
  new result.key
  result.key.name = operator operator.name
  result.key.kind = pkFunc
  result.key.args.add RenderableArgument(
    variableSym: VariableSym"left",
    typeSym: caller)

  if operator.right_type.isSome:
    result.key.args.add RenderableArgument(
      variableSym: VariableSym"right",
      typeSym: operator.right_type.get.convert(TypeSym))
  result.key.result = convertToResult some operator.return_type

  result.opkey = variantOpKey operator.name

  result.vt_first = variantType result.key.args[0].typeSym
  result.vt_second = variantType:
    if result.key.args.len == 1: TypeSym.Void
    else: result.key.args[1].typeSym

  result.containerKey = gen_containerKey result.key

  result.addr_first = &"getPtr {result.key.args[0].name}"
  result.addr_second =
    if result.key.args.len == 1: "nil"
    else: &"getPtr {result.key.args[1].name}"

proc weave_container(operator: BuiltinClassOperator): Cloth =
  &"var {operator.containerkey}: PtrOperatorEvaluator"

proc weave_procdef(operator: BuiltinClassOperator): Cloth =
  &"{weave operator.key} {{.noSideEffect.}}: {operator.containerkey}({operator.addr_first}, {operator.addr_second}, addr result)"

proc weave_loadstmt(operator: BuiltinClassOperator): Cloth =
  &"{operator.containerkey} = load({operator.opkey}, {operator.vt_first}, {operator.vt_second})"

proc shouldGenerate(operator: BuiltinClassOperator): bool =
  `and`(
    operator.key.name notin manualImplemented.functionNames,
    operator.containerkey notin manualImplemented.functions)

proc weave_operators*(json: JsonBuiltinClass): Cloth =
  let typesym = json.name.convert(TypeSym)

  let operators = json.operators.get(@[])
    .mapIt(it.convert(typesym))
  let requires = operators.filter(shouldGenerate)

  if operators.len == 0: return

  weave multiline:
    weave multiline:
      for op in operators:
        if op.shouldGenerate:
          weave_container op
        else:
          "# " & $op.containerkey
    weave multiline:
      for op in requires:
        weave_procdef op

    weave transact:
      &"proc load_{typesym}_operators {{.execon: staticevents.init_engine.on_load_builtinclassOperator.}} ="
      weave Proof(elements: 1) & cloths.indent:
        for op in requires:
          weave_loadstmt op