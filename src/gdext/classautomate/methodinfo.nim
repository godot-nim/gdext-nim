import std/sequtils
import std/tables
import gdextcore/utils/macros

import gdextcore/dirty/gdextensioninterface
import gdextcore/commandindex
import gdextcore/builtinindex
import gdextcore/typeshift
import gdextcore/gdvariant

import propertyinfo

type ClassMethodInfoGlue = ref object
  info*: ClassMethodInfo


type MiddleExp = object
  name: NimNode
  isStatic: bool
  self_T: NimNode
  result_T: NimNode
  args: seq[tuple[namesym, typesym, default: NimNode]]

proc parseMiddle(procdef: NimNode): MiddleExp =
  result.name = procdef[0]
  if result.name.kind == nnkPostfix: result.name = result.name[1]

  result.self_T = procdef.params[1][1]
  if procdef.hasReturn:
    result.result_T = procdef.params[0]

  result.args = procdef.params.breakArgs.toSeq
    .filterIt(it.index != 0)
    .mapIt((it.def.name, it.def.Type, it.def.default))

  result.is_static = `and`(
    result.self_T.kind == nnkBracketExpr,
    result.self_T[0].eqIdent "typedesc",
  )

template hasResult(middle: MiddleExp): bool = middle.result_T != nil

proc returnValueInfo(middle: MiddleExp): NimNode =
  let retT = middle.result_T
  if middle.hasResult:
    quote do:
      propertyInfo(typedesc `retT`)
  else: newNilLit()
proc returnValueMeta(middle: MiddleExp): NimNode =
  let retT = middle.result_T
  if middle.hasResult:
    quote do:
      metadata(typedesc `retT`)
  else: bindSym "MethodArgumentMetadata_None"

proc argumentsInfo(middle: MiddleExp): NimNode =
  if middle.args.len == 0: return newNilLit()

  var info = newNimNode nnkBracket

  for (name, Type, _) in middle.args:
    let name = toStrLit name
    info.add quote do:
      propertyInfo(typedesc `Type`, stringName `name`)[]

  quote do:
    let info = `info`
    native info

proc argumentsMeta(middle: MiddleExp): NimNode =
  if middle.args.len == 0: return newNilLit()

  var meta = newNimNode nnkBracket

  for (_, Type, _) in middle.args:
    meta.add quote do:
      metadata(typedesc `Type`)

  quote do:
    let meta = `meta`
    addr meta[0]


proc callFunc(middle: MiddleExp): NimNode =
  let p_instance = ident"p_instance"
  let p_args = ident"p_args"
  let r_return = ident"r_return"

  let self_T = middle.self_T

  let call = middle.name.newCall()

  if middle.is_static:
    call.add middle.self_T
  else:
    call.add quote do: cast[`self_T`](`p_instance`)

  for i, (name, Type, default) in middle.args:
    let i_lit = newlit i
    call.add quote do: cast[ptr Variant](`p_args`[`i_lit`])[].get(typedesc `Type`)

  let body =
    if middle.hasResult:
      quote do:
        let result = variant `call`
        interface_Variant_newCopy(`r_return`, addr result)
    else:
      quote do:
        let result = variant(); `call`
        interface_Variant_newCopy(`r_return`, addr result)

  quote do:
    proc(method_userdata: pointer; `p_instance`: ClassInstancePtr; `p_args`: ptr UncheckedArray[ConstVariantPtr]; p_argument_count: Int; `r_return`: VariantPtr; r_error: ptr CallError) {.gdcall.} =
      `body`

proc ptrCallFunc(middle: MiddleExp): NimNode =
  let p_instance = ident"p_instance"
  let p_args = ident"p_args"
  let r_ret = ident"r_ret"

  let self_T = middle.self_T

  var call = middle.name.newCall()
  if middle.is_static:
    call.add self_T
  else:
    call.add quote do: cast[`self_T`](`p_instance`)

  for i, (name, Type, default) in middle.args:
    let i_lit = newlit i
    call.add quote do: `p_args`[`i_lit`].decode(typedesc `Type`)

  let body =
    if middle.hasResult:
      quote do: `call`.encode(`r_ret`)
    else:
      call

  quote do:
    proc(method_userdata: pointer; `p_instance`: ClassInstancePtr; `p_args`: ptr UncheckedArray[ConstTypePtr]; `r_ret`: TypePtr) {.gdcall.} = `body`

proc flags(middle: MiddleExp): NimNode =
  result = newNimNode nnkCurly
  if middle.is_static:
    result.add bindSym"MethodFlag_Static"
  else:
    result.add bindSym"MethodFlag_Normal"


proc classMethodInfo(middle: MiddleExp; gdname: NimNode): NimNode =

  let call_func = middle.callFunc
  let ptrcall_func = middle.ptrCallFunc
  let method_flags = middle.flags

  let has_return_value = newlit middle.hasResult
  let return_value_info = middle.returnValueInfo
  let return_value_metadata = middle.returnValueMeta

  let argument_count = newlit middle.args.len
  let arguments_info = middle.argumentsInfo
  let arguments_metadata = middle.argumentsMeta

  result = quote do:
    let proc_name: StringName = stringName `gdname`
    # const default_argument_count: uint32 = 1
    # let default_arguments: array[default_argument_count, Variant] = [
    #   variant(10)
    # ]
    # let p_default_arguments: array[default_argument_count, ptr Variant] = [
    #   addr default_arguments[0]
    # ]
    ClassMethodInfoGlue(
      info: ClassMethodInfo(
        name: addr proc_name,
        call_func: `call_func`,
        ptrcall_func: `ptrcall_func`,
        method_flags: cast[uint32](`method_flags`),

        has_return_value: `has_return_value`,
        return_value_info: native `return_value_info`,
        return_value_metadata: `return_value_metadata`,

        argument_count: `argument_count`,
        arguments_info: `arguments_info`,
        arguments_metadata: `arguments_metadata`,

        # default_argument_count: default_argument_count,
        # default_arguments: addr p_default_arguments[0],
      ),
    )

proc classMethodInfo*(procdef: NimNode; gdname: NimNode): NimNode =
  parseMiddle(procdef).classMethodInfo(gdname)