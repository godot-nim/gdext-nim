import cloths

import submodules/wordropes
import submodules/semanticstrings

import ../functions
import ../arguments
import types/json

import utils

import std/options
import std/sequtils
import std/strutils
import std/strformat

type
  ClassMethodKind* = enum
    cmkNormal, cmkVirtual, cmkVararg
  ClassMethodPtrCallEntry* = ref object of GodotProc
  ClassMethodVarargsVariantEntry* = ref object of GodotProc
  ClassMethodVarargsTypedEntry* = ref object of GodotProc
  ClassMethodVirtualEntry* = ref object of GodotProc
    call_self: RenderableSelfArgument
    call_args: seq[RenderableArgument]
    call_result: RenderableResult
  RenderableClassMethod* = ref object
    case kind*: ClassMethodKind
    of cmkVararg:
      variant*: ClassMethodVarargsVariantEntry
      typed*: ClassMethodVarargsTypedEntry
    of cmkVirtual:
      virtual*: ClassMethodVirtualEntry
    of cmkNormal:
      ptrcall*: ClassMethodPtrCallEntry

proc joinArg(args: seq[string]): string = args.join(", ")

proc extract_result(self: JsonClassMethod): RenderableResult =
  convertToResult:
    if self.return_value.isSome:
      let rv = get self.return_value
      some rv.meta.get(rv.`type`)
    else:
      none string

proc extract_args(self: JsonClassMethod; fuzzy= false): seq[RenderableArgument] =
  result = self.arguments.get(@[])
    .mapIt(convert it)
  if fuzzy:
    for arg in result: arg.typesym = TypeSym.Variant
  if self.is_vararg:
    result.add RenderableArgument(
      variableSym: VariableSym"args",
      info: ParamInfo(isVarargs: true),
      typesym: TypeSym.Variant,
      default_value: none string)

proc classMethodPtrCallEntry(json: JsonClassMethod; self_type: RenderableSelfArgument): ClassMethodPtrCallEntry =
  ClassMethodPtrCallEntry(
    kind: pkProc,
    name: json.name.scan.convert(ProcSym),
    self: self_type,
    args: json.extract_args(),
    result: json.extract_result(),

    native_name: json.name,
    hash: json.hash,
  )

proc classMethodVarargsVariantEntry(json: JsonClassMethod; self_type: RenderableSelfArgument): ClassMethodVarargsVariantEntry =
  ClassMethodVarargsVariantEntry(
    kind: pkProc,
    name: json.name.scan.convert(ProcSym),
    self: self_type,
    args: json.extract_args(fuzzy= true),
    result: json.extract_result(),

    native_name: json.name,
    hash: json.hash,
  )

proc classMethodVarargsTypedEntry(json: JsonClassMethod; self_type: RenderableSelfArgument): ClassMethodVarargsTypedEntry =
  ClassMethodVarargsTypedEntry(
    kind: pkTemplate,
    name: json.name.scan.convert(ProcSym),
    self: self_type,
    args: json.extract_args(),
    result: json.extract_result(),

    native_name: json.name,
    hash: json.hash,
  )

proc classMethodVirtualEntry*(json: JsonClassMethod; self_type: RenderableSelfArgument): ClassMethodVirtualEntry =
  ClassMethodVirtualEntry(
    kind: pkMethod,
    name: json.name.scan.convert(ProcSym),
    self: self_type,
    args: json.extract_args(),
    result: json.extract_result(),
    pragmas: Pragmas(list: @["base"]),

    native_name: json.name,
  )


proc methodbind(gdproc: GodotProc): Cloth = weave multiline:
  &"expandMethodBind(className {gdproc.self.typesym}, \"{gdproc.native_name}\", {get gdproc.hash})"

proc weave(entry: ClassMethodPtrCallEntry): Cloth =
  let
    paramarray = "[" & entry.args.mapIt(&"getPtr {it.name}").join(", ") & "]"
    paramptr =
      if entry.args.len == 0: "nil"
      else: "addr `?param`[0]"
  var args: seq[string]
  if not entry.self.isStatic: args.add $entry.self.name
  args.add paramptr
  if entry.result.typesym != TypeSym.Void: args.add "addr ret"

  weave multiline:
    weave ProcKey entry
    weave cloths.indent:
      entry.methodbind
      if entry.args.len != 0:
        &"var `?param` = {paramarray}"
      if entry.result.typesym != TypeSym.Void:
        &"var ret: encoded {weave entry.result}"
      &"methodbind.ptrcall({args.joinArg})"

      if entry.result.typesym != TypeSym.Void:
        &"(addr ret).decode_result({weave entry.result})"

proc weave(entry: ClassMethodVarargsVariantEntry): Cloth =
  let
    vararg = entry.args[^1]
    argCount = $entry.args.high & "+" & $vararg.name & ".len"
    paramarray = "[" & entry.args[0..^2].mapIt("getTypedPtr " & $it.name).join(", ") & "]"
    args = case entry.self.isStatic
    of true: &"`?param`"
    of false: &"{entry.self.name}, `?param`, {vararg.name}"

  weave multiline:
    weave ProcKey entry
    weave cloths.indent:
      entry.methodbind
      &"var `?param` = newSeqOfCap[VariantPtr]({argCount})"
      &"`?param`.add {paramarray}"
      if entry.result.typesym == TypeSym.Void:
        &"discard methodbind.call({args})"
      else:
        &"methodbind.call({args}).get({weave entry.result})"

proc weave(entry: ClassMethodVarargsTypedEntry): Cloth =
  let
    vararg = entry.args[^1]
    fixed_args = entry.args[0..^2].mapIt("variant " & $it.name).join(", ")
    args =
      if fixed_args.len == 0: $vararg.name
      else: fixed_args & ", " & $vararg.name
  weave multiline:
    weave ProcKey entry
    weave cloths.indent:
      &"{entry.name}({entry.self.name}, {args})"

proc weave(entry: ClassMethodVirtualEntry): Cloth =
  weave text:
    weave ProcKey entry
    "(discard)"

proc weave_native(entry: ClassMethodVirtualEntry): Cloth =
  weave multiline:
    &"proc {entry.name}(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {{.gdcall.}} ="
    weave cloths.indent >> Join(delim: ""):
      &"errproof: cast[{entry.self.typesym}](p_instance).{entry.name}("
      weave Join(delim: ", "):
        for i, arg in entry.args:
          &"p_args[{i}].decode({arg.type})"
      if entry.result.typesym == TypeSym"void":
        ")"
      else:
        ").encode(r_ret)"
    &"template {entry.name.dropQuote}_bind*(_: typedesc[{entry.self.typesym}]): ClassCallVirtual = {entry.name}"

proc convert*(json: JsonClassMethod; caller: TypeSym): RenderableClassMethod =
  let self_type = RenderableSelfArgument(
    isStatic: json.isStatic,
    typesym: caller,
  )
  if json.is_vararg:
    RenderableClassMethod(kind: cmkVararg,
      variant: classMethodVarargsVariantEntry(json, self_type),
      typed: classMethodVarargsTypedEntry(json, self_type),
    )
  elif json.isVirtual:
    RenderableClassMethod(kind: cmkVirtual,
      virtual: classMethodVirtualEntry(json, self_type),
    )
  else:
    RenderableClassMethod(kind: cmkNormal,
      ptrcall: classMethodPtrCallEntry(json, self_type),
    )

proc weave*(renderable: RenderableClassMethod): Cloth =
  case renderable.kind
  of cmkVararg:
    weave multiline:
      weave renderable.variant
      weave renderable.`typed`
  of cmkVirtual:
    weave multiline:
      weave renderable.virtual
      weave_native renderable.virtual
  of cmkNormal:
    weave renderable.ptrcall
