import gdext/private/gdinterface; export gdinterface
import gdext/private/typeshift; export typeshift
import gdext/builtinindex; export builtinindex
import gdext/stringtools; export stringtools
import gdext/arraytools; export arraytools
import gdext/dicttools; export dicttools
import gdext/colortools; export colortools
import gdext/othertools; export othertools
import gdext/math; export math

import std/tables; export Table, toTable, initTable

proc concat*[T,S](a, b: Table[T,S]): Table[T,S] =
  result = a
  for key, value in b.pairs:
    result[key] = value

template expandMethodBind*(className; methodName; hash) =
  var methodbind {.global, inject.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className, methodName, hash)

proc ptrcall*(methodbind: MethodBindPtr; self: SomeClass; args: openArray[ConstTypePtr]; result: TypePtr = nil) =
  interface_Object_methodBindPtrCall(methodbind, self.engineInstance, addr args[0], result)
proc ptrcall*(methodbind: MethodBindPtr; args: openArray[ConstTypePtr]; result: TypePtr = nil) =
  interface_Object_methodBindPtrCall(methodbind, nil, addr args[0], result)
proc ptrcall*(methodbind: MethodBindPtr; self: SomeClass; args: array[0, ConstTypePtr]; result: TypePtr = nil) =
  interface_Object_methodBindPtrCall(methodbind, self.engineInstance, nil, result)
proc ptrcall*(methodbind: MethodBindPtr; args: array[0, ConstTypePtr]; result: TypePtr = nil) =
  interface_Object_methodBindPtrCall(methodbind, nil, nil, result)


proc call*(methodbind: MethodBindPtr; self: SomeClass; args: var seq[VariantPtr]; vararg: varargs[Variant]): Variant =
  var error {.global.} : CallError
  for vararg in vararg: args.add addr vararg
  interface_Object_methodBindCall(methodbind, self.engineInstance,
      (if args.len == 0: nil else: addr args[0]), args.len, addr result, addr error)
proc call*(methodbind: MethodBindPtr; args: var seq[VariantPtr]; vararg: varargs[Variant]): Variant =
  var error {.global.} : CallError
  for vararg in vararg: args.add addr vararg
  interface_Object_methodBindCall(methodbind, nil,
      (if args.len == 0: nil else: addr args[0]), args.len, addr result, addr error)