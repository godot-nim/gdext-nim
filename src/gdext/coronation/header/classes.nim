import gdext/dirty/gdextensioninterface; export gdextensioninterface
import gdext/core/builtinindex; export builtinindex
import gdext/core/commandindex; export commandindex
import gdext/core/methodtools; export methodtools
import gdext/core/typeshift; export typeshift
import gdext/core/gdclass; export gdclass
import gdext/core/gdtypedarray; export gdtypedarray
import gdext/core/gdrefs; export gdrefs
import gdext/core/extracommands; export gdstring, stringname, classname
import gdext/core/exceptions; export exceptions

import std/tables; export Table, toTable, initTable

proc concat*[T,S](a, b: Table[T,S]): Table[T,S] =
  result = a
  for key, value in b.pairs:
    result[key] = value

proc getMethodBind*(className: var StringName; methodName: string; hash: int): MethodBindPtr =
  let name = stringName methodName
  interface_ClassDB_getMethodBind(addr className, addr name, hash)

template expandMethodBind*(className: var StringName; methodName: string; hash: int): untyped =
  var methodbind {.global, inject.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = getMethodBind(className, methodName, hash)

proc ptrcall*(methodbind: MethodBindPtr; self: SomeClass; args: ptr ConstTypePtr; result: TypePtr = nil) =
  interface_Object_methodBindPtrCall(methodbind, CLASS_getOwner self, args, result)
proc ptrcall*(methodbind: MethodBindPtr; args: ptr ConstTypePtr; result: TypePtr = nil) =
  interface_Object_methodBindPtrCall(methodbind, nil, args, result)


proc call*(methodbind: MethodBindPtr; self: SomeClass; args: var seq[VariantPtr]; vararg: varargs[Variant]): Variant =
  var error {.global.} : CallError
  for vararg in vararg: args.add addr vararg
  interface_Object_methodBindCall(methodbind, CLASS_getOwner self,
      (if args.len == 0: nil else: addr args[0]), args.len, addr result, addr error)
proc call*(methodbind: MethodBindPtr; args: var seq[VariantPtr]; vararg: varargs[Variant]): Variant =
  var error {.global.} : CallError
  for vararg in vararg: args.add addr vararg
  interface_Object_methodBindCall(methodbind, nil,
      (if args.len == 0: nil else: addr args[0]), args.len, addr result, addr error)