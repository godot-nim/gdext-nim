import std/sequtils
import std/tables
import gdext/utils/macros

import gdext/gdinterface/[ native, methodtools, exceptions ]
import gdext/core/builtinindex
import gdext/core/typeshift

import propertyinfo

type
  Arg* = tuple
    namesym, typesym, default: NimNode
  MiddleExp* = object
    name*: NimNode
    isStatic*: bool
    isVarargs*: bool
    self_T*: NimNode
    result_T*: NimNode
    args*: seq[Arg]
    defaults*: seq[Arg]

proc parseMiddle*(procdef: NimNode): MiddleExp =
  result.name = procdef[0]
  if result.name.kind == nnkPostfix: result.name = result.name[1]

  result.self_T = procdef.params[1][1]
  if procdef.hasReturn:
    result.result_T = procdef.params[0]

  for i, (sym, typ, default) in procdef.params.breakArgs:
    if i == 0: continue
    if typ.isVarargs:
      result.isVarargs = true
    result.args.add (
      sym,
      (if typ.kind == nnkEmpty: bindsym"typeof".newCall(default) else: typ),
      default)

  result.defaults = result.args
    .filterIt(it.default.kind != nnkEmpty)

  result.is_static = `and`(
    result.self_T.kind == nnkBracketExpr,
    result.self_T[0].eqIdent "typedesc",
  )

template hasResult*(middle: MiddleExp): bool = middle.result_T != nil

proc returnValue(middle: MiddleExp): NimNode =
  if middle.hasResult:
    quote("@") do:
      propertyInfo(typedesc @(middle.result_T)).unheap
  else:
    quote("@") do:
      propertyInfo(VariantType_Nil).unheap
proc returnValueInfo(middle: MiddleExp): NimNode =
  quote("@") do:
    propertyInfo(typedesc @(middle.result_T)).unheap
proc returnValueMeta(middle: MiddleExp): NimNode =
  quote("@") do:
    metadata(typedesc @(middle.result_T))

proc argumentsInfo(middle: MiddleExp): NimNode =
  result = newNimNode nnkBracket
  for (name, Type, default) in middle.args:
    result.add quote("@") do:
      propertyInfo(typedesc @Type, stringName @(name.toStrLit)).unheap

proc argumentsMeta(middle: MiddleExp): NimNode =
  result = newNimNode nnkBracket
  for (_, Type, default) in middle.args:
    result.add quote do:
      metadata(typedesc `Type`)

proc defaultArguments(middle: MiddleExp): NimNode =
  let defaults = newBracket middle.defaults
    .mapIt(quote("@") do: variant @(it.default))
  quote do: getPtr `defaults`

proc retrieve[T](x: ConstVariantPtr): T = cast[ptr Variant](x)[].get(T)
proc retrieve[T](args: ptr UncheckedArray[ConstTypePtr]; range: HSlice[int, int]): seq[T] =
  args.toOpenArray(range.a, range.b).map(retrieve[typedesc T])
proc retrieve[T](x: ptr UncheckedArray[ConstVariantPtr]; len: int; at: int; default: T): T =
  if len > at: retrieve[T](x[at])
  else:        default

template encode[T: void](_: T; p: TypePtr) = (discard)

let
  callFunc_template {.compileTime.} = quote do:
    proc( method_userdata {.inject.}: pointer;
          p_instance {.inject.}: ClassInstancePtr;
          p_args {.inject.}: ptr UncheckedArray[ConstVariantPtr];
          p_argument_count {.inject.}: Int;
          r_return {.inject.}: VariantPtr;
          r_error {.inject.}: ptr CallError) {.gdcall.} = (discard)
  ptrCallFunc_template {.compileTime.} = quote do:
    proc( method_userdata {.inject.}: pointer;
          p_instance {.inject.}: ClassInstancePtr;
          p_args {.inject.}: ptr UncheckedArray[ConstTypePtr];
          r_ret {.inject.}: TypePtr) {.gdcall.} = (discard)

proc callFunc(middle: MiddleExp): NimNode =
  let call = middle.name.newCall()

  if middle.is_static:
    call.add middle.self_T
  else:
    call.add quote("@") do: cast[@(middle.self_T)](p_instance)

  for i, (name, Type, default) in middle.args: call.add do:
    if Type.isVarargs:
      let Type = Type[1]
      if Type.repr == "ptr Variant":
        quote do: cast[ptr UncheckedArray[ptr Variant]](p_args)
          .toOpenArray(`i`, p_argument_count.pred)
      else:
        quote do: retrieve[`Type`](p_args, `i`..<p_argument_count.int)

    elif default.kind == nnkEmpty:
      quote do: retrieve[`Type`](p_args[`i`])
    else:
      quote do: retrieve[`Type`](p_args, p_argument_count, `i`, `default`)

  result = callFunc_template
  result.body =
    if middle.hasResult:
      quote do:
        errproof:
          let result = variant `call`
          interface_Variant_newCopy(r_return, addr result)
    else:
      quote do:
        errproof:
          let result = variant(); `call`
          interface_Variant_newCopy(r_return, addr result)

proc ptrCallFunc(middle: MiddleExp): NimNode =
  if middle.isVarargs: return newNilLit()

  var call = middle.name.newCall()
  if middle.is_static:
    call.add middle.self_T
  else:
    call.add quote("@") do: cast[@(middle.self_T)](p_instance)

  for i, (name, Type, default) in middle.args:
    call.add quote do: p_args[`i`].decode(typedesc `Type`)

  result = ptrCallFunc_template
  result.body = quote do:
    errproof:
      encode(`call`, r_ret)

proc method_flags(middle: MiddleExp): NimNode =
  result = newNimNode nnkCurly
  if middle.is_static:
    result.add bindSym"MethodFlag_Static"
  if middle.is_varargs:
    result.add bindSym"MethodFlag_Vararg"

  if result.len == 0:
    result.add bindSym"MethodFlag_Normal"

proc classMethodInfo(
      name: StringName;
      # method_userdata: pointer;
      call_func: ClassMethodCall;
      ptrcall_func: ClassMethodPtrCall;
      method_flags: set[ClassMethodFlags];
      arguments_info: openArray[PropertyInfo];
      arguments_metadata: openArray[ClassMethodArgumentMetadata];
      default_arguments: openArray[VariantPtr];
    ): ClassMethodInfo =
  ClassMethodInfo(
    name: addr name,
    call_func: call_func,
    ptrcall_func: ptrcall_func,
    method_flags: cast[uint32](method_flags),
    argument_count: uint32 arguments_info.len,
    arguments_info: arguments_info.head,
    arguments_metadata: arguments_metadata.head,
    default_argument_count: uint32 default_arguments.len,
    default_arguments: default_arguments.head,
  )
proc classMethodInfo(
      name: StringName;
      # method_userdata: pointer;
      call_func: ClassMethodCall;
      ptrcall_func: ClassMethodPtrCall;
      method_flags: set[ClassMethodFlags];
      arguments_info: openArray[PropertyInfo];
      arguments_metadata: openArray[ClassMethodArgumentMetadata];
      default_arguments: openArray[VariantPtr];
      return_value_info: PropertyInfo;
      return_value_metadata: ClassMethodArgumentMetadata;
    ): ClassMethodInfo =
  ClassMethodInfo(
    name: addr name,
    call_func: call_func,
    ptrcall_func: ptrcall_func,
    method_flags: cast[uint32](method_flags),
    has_return_value: true,
    return_value_info: addr return_value_info,
    return_value_metadata: return_value_metadata,
    argument_count: uint32 arguments_info.len,
    arguments_info: arguments_info.head,
    arguments_metadata: arguments_metadata.head,
    default_argument_count: uint32 default_arguments.len,
    default_arguments: default_arguments.head,
  )

proc classMethodInfo(middle: MiddleExp; gdname: NimNode): NimNode =
  result = quote("@") do:
    classMethodInfo(
      stringName @gdname,
      @(middle.callFunc),
      @(middle.ptrCallFunc),
      @(middle.method_flags),
      @(middle.argumentsInfo),
      @(middle.argumentsMeta),
      @(middle.defaultArguments),
    )
  if middle.hasResult:
    result.add(
      middle.returnValueInfo,
      middle.returnValueMeta,)

proc classMethodInfo*(procdef: NimNode; gdname: NimNode): NimNode =
  parseMiddle(procdef).classMethodInfo(gdname)

proc classVirtualMethodInfo(
      name: Stringname;
      # method_flags: set[ClassMethodFlags];
      return_value: PropertyInfo;
      return_value_metadata: ClassMethodArgumentMetadata;
      arguments: array[0, PropertyInfo];
      arguments_metadata: array[0, ClassMethodArgumentMetadata],
    ): ClassVirtualMethodInfo =
  ClassVirtualMethodInfo(
      name: addr name,
      method_flags: cast[uint32]({MethodFlag_Virtual}),
      return_value: return_value,
      return_value_metadata: return_value_metadata,
    )
proc classVirtualMethodInfo(
      name: Stringname;
      # method_flags: set[ClassMethodFlags];
      return_value: PropertyInfo;
      return_value_metadata: ClassMethodArgumentMetadata;
      arguments: openArray[PropertyInfo];
      arguments_metadata: openArray[ClassMethodArgumentMetadata],
    ): ClassVirtualMethodInfo =
  ClassVirtualMethodInfo(
      name: addr name,
      method_flags: cast[uint32]({MethodFlag_Virtual}),
      return_value: return_value,
      return_value_metadata: return_value_metadata,
      argument_count: uint32 arguments.len,
      arguments: addr arguments[0],
      arguments_metadata: addr arguments_metadata[0],
    )

proc virtualMethodInfo*(middle: MiddleExp): NimNode =
  quote"@" do:
    classVirtualMethodInfo(
      stringName @(middle.name.toStrLit),
      @(middle.returnValue),
      @(middle.returnValueMeta),
      @(middle.argumentsInfo),
      @(middle.argumentsMeta),
    )
