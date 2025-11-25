import cloths

import submodules/wordropes
import submodules/semanticstrings

import ../functions
import ../arguments
import types/json

import utils
import config

import std/options
import std/sequtils
import std/strutils
import std/strformat

type
  ClassMethodEntry* = ref object of GodotProc
    json: JsonClassMethod
  ClassMethodPtrCallEntry* = ref object of ClassMethodEntry
  ClassMethodCallEntry* = ref object of ClassMethodEntry
    variant: ProcKey
    typed: ProcKey
  ClassMethodVirtualEntry* = ref object of ClassMethodEntry
    call_self: RenderableSelfArgument
    call_args: seq[RenderableArgument]
    call_result: RenderableResult
    virtual_name: string

method weave*(classMethod: ClassMethodEntry): Cloth {.base.} = (discard)

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

    json: json,
  )

proc variantKey(call: ClassMethodCallEntry): ProcKey =
  ProcKey(
    kind: pkProc,
    name: call.name,
    self: call.self,
    args: call.json.extract_args(fuzzy= true),
    result: call.result,
    exportme: false,
  )

proc typedKey(call: ClassMethodCallEntry): ProcKey =
  ProcKey(
    kind: pkTemplate,
    name: call.name,
    self: call.self,
    args: call.args,
    result: call.result,
  )

proc classMethodCallEntry(json: JsonClassMethod; self_type: RenderableSelfArgument): ClassMethodCallEntry =
  result = ClassMethodCallEntry(
    kind: pkProc,
    name: json.name.scan.convert(ProcSym),
    self: self_type,
    args: json.extract_args(),
    result: json.extract_result(),

    native_name: json.name,
    hash: json.hash,

    json: json,
  )
  result.variant = result.variantKey
  result.typed = result.typedKey

proc classMethodVirtualEntry*(json: JsonClassMethod; self_type: RenderableSelfArgument): ClassMethodVirtualEntry =
  ClassMethodVirtualEntry(
    kind: pkMethod,
    name: json.name.scan.convert(ProcSym),
    self: self_type,
    args: json.extract_args(),
    result: json.extract_result(),
    pragmas: Pragmas(list: @["base"]),

    native_name: json.name,

    json: json,

    virtual_name: json.name,
  )


proc methodbind(gdproc: GodotProc): Cloth = weave multiline:
  &"expandMethodBind(className {gdproc.self.typesym}, \"{gdproc.native_name}\", {get gdproc.hash})"

proc weaveAsPtrCallEntry(entry: GodotProc): Cloth =
  var args: seq[string]
  if not entry.self.isStatic: args.add $entry.self.name
  args.add "[" & entry.args.mapIt(&"getPtr {it.name}").join(", ") & "]"
  if entry.result.typesym != TypeSym.Void: args.add "addr ret"

  weave multiline:
    weave ProcKey entry
    weave cloths.indent:
      entry.methodbind
      for arg in entry.args:
        if arg.typeSym in NilUnsafeVariant:
          &"nilCheck {arg.name}"
      if entry.result.typesym != TypeSym.Void:
        &"var ret: encoded {weave entry.result}"
      &"methodbind.ptrcall({args.joinArg})"
      if entry.result.typesym != TypeSym.Void:
        &"(addr ret).decode_result({weave entry.result})"

method weave*(entry: ClassMethodPtrCallEntry): Cloth =
  entry.weaveAsPtrCallEntry()

proc weave_varargsVariant(entry: ClassMethodCallEntry): Cloth =
  let
    vararg = entry.variant.args[^1]
    argCount = $entry.variant.args.high & "+" & $vararg.name & ".len"
    paramarray = "[" & entry.variant.args[0..^2].mapIt("getTypedPtr " & $it.name).join(", ") & "]"
    args = case entry.variant.self.isStatic
    of true: &"`?param`"
    of false: &"{entry.variant.self.name}, `?param`, {vararg.name}"

  weave multiline:
    weave entry.variant
    weave cloths.indent:
      entry.methodbind
      &"var `?param` = newSeqOfCap[VariantPtr]({argCount})"
      &"`?param`.add {paramarray}"
      if entry.variant.result.typesym == TypeSym.Void:
        &"discard methodbind.call({args})"
      else:
        &"methodbind.call({args}).get({weave entry.variant.result})"

proc weave_varargsTyped(entry: ClassMethodCallEntry): Cloth =
  let
    vararg = entry.typed.args[^1]
    fixed_args = entry.typed.args[0..^2].mapIt("variant " & $it.name).join(", ")
    args =
      if fixed_args.len == 0: $vararg.name
      else: fixed_args & ", " & $vararg.name
  weave multiline:
    weave entry.typed
    weave cloths.indent:
      &"{entry.variant.name}({entry.typed.self.name}, {args})"

method weave*(entry: ClassMethodCallEntry): Cloth =
  weave multiline:
    entry.weave_varargsVariant
    entry.weave_varargsTyped

proc weave_method(entry: ClassMethodVirtualEntry): Cloth =
  if entry.hash.isSome:
    entry.weaveAsPtrCallEntry
  else:
    weave text:
      weave ProcKey entry
      "(discard)"

proc weave_register(entry: ClassMethodVirtualEntry): Cloth =
  weave multiline:
    &"proc registerVirtual_{entry.name.dropQuote}*[T: {entry.self.typeSym}](Self: typedesc[T]) ="
    weave cloths.indent:
      const StringName = TypeSym"StringName"
      &"Self.vmethods[{constructorName StringName}\"{entry.virtual_name}\"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {{.gdcall.}} ="
      weave cloths.indent >> Join(delim: ""):
        &"errproof: cast[{entry.self.typesym}](p_instance).{entry.name}("
        weave Join(delim: ", "):
          for i, arg in entry.args:
            &"p_args[{i}].decode({arg.type})"
        if entry.result.typesym == TypeSym"void":
          ")"
        else:
          ").encode(r_ret)"

method weave*(entry: ClassMethodVirtualEntry): Cloth =
  weave multiline:
    entry.weave_method
    entry.weave_register

proc convert*(json: JsonClassMethod; caller: TypeSym): ClassMethodEntry =
  let self_type = RenderableSelfArgument(
    isStatic: json.isStatic,
    typesym: caller,
  )
  if json.is_vararg:
    classMethodCallEntry(json, self_type)
  elif json.isVirtual:
    classMethodVirtualEntry(json, self_type)
  else:
    classMethodPtrCallEntry(json, self_type)

proc squash*(methods: seq[ClassMethodEntry]): seq[ClassMethodEntry] =
  var virtuals: seq[ClassMethodVirtualEntry]
  var nonVirtuals: seq[ClassMethodEntry]
  var drop: seq[ClassMethodEntry]
  for m in methods:
    if m of ClassMethodVirtualEntry:
      virtuals.add ClassMethodVirtualEntry(m)
    else:
      nonVirtuals.add m

  for v in virtuals:
    for nv in nonVirtuals:
      if v.native_name == "_" & nv.native_name:
        v.native_name = nv.native_name
        v.hash = nv.hash
        v.args = nv.args
        drop.add nv
        break

  for m in methods:
    if m notin drop:
      result.add m
