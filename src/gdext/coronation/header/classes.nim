import gdext/private/gdinterface; export gdinterface
import gdext/private/typeshift; export typeshift
import gdext/private/staticevents; export staticevents
import gdext/private/propertyinfo; export propertyinfo
import gdext/private/internalobjecttools; export internalobjecttools
import gdext/private/classindex; export classindex
import gdext/builtinindex; export builtinindex
import gdext/stringtools; export stringtools
import gdext/arraytools; export arraytools
import gdext/dicttools; export dicttools
import gdext/colortools; export colortools
import gdext/othertools; export othertools
import gdext/math; export math

import std/tables; export `[]=`

proc concat*[T,S](a, b: Table[T,S]): Table[T,S] =
  result = a
  for key, value in b.pairs:
    result[key] = value

template expandMethodBind*(className; methodName; hash) =
  var methodbind {.global, inject.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className, methodName, hash)

proc ptrcall*(methodbind: MethodBindPtr; args: openArray[ConstTypePtr]; self = ObjectPtr(nil); result: TypePtr = nil) =
  interface_Object_methodBindPtrCall(methodbind, self, addr args[0], result)
proc ptrcall*(methodbind: MethodBindPtr; self = ObjectPtr(nil); result: TypePtr = nil) =
  interface_Object_methodBindPtrCall(methodbind, self, nil, result)

# non-static, 1+ args, result,
proc ptrcall*(methodbind: MethodBindPtr; self: Object; args: openArray[ConstTypePtr]; Result: typedesc): Result =
  var ret: encoded Result
  methodbind.ptrcall(args, self = self.engineInstance, result = addr ret)
  (addr ret).decode_result(Result)

# non-static, 1+ args, no result,
proc ptrcall*(methodbind: MethodBindPtr; self: Object; args: openArray[ConstTypePtr]; Result: typedesc[void]): void =
  methodbind.ptrcall(args, self = self.engineInstance)

# static, 1+ args, result,
proc ptrcall*(methodbind: MethodBindPtr; args: openArray[ConstTypePtr]; Result: typedesc): Result =
  var ret: encoded Result
  methodbind.ptrcall(args, result = addr ret)
  (addr ret).decode_result(Result)

# static, 1+ args, no result,
proc ptrcall*(methodbind: MethodBindPtr; args: openArray[ConstTypePtr]; Result: typedesc[void]): void =
  methodbind.ptrcall(args)

# non-static, no args, result,
proc ptrcall*(methodbind: MethodBindPtr; self: Object; args: array[0, ConstTypePtr]; Result: typedesc): Result =
  var ret: encoded Result
  methodbind.ptrcall(self = self.engineInstance, result = addr ret)
  (addr ret).decode_result(Result)

# non-static, no args, no result,
proc ptrcall*(methodbind: MethodBindPtr; self: Object; args: array[0, ConstTypePtr]; Result: typedesc[void]): void =
  methodbind.ptrcall(self = self.engineInstance)

# static, no args, result,
proc ptrcall*(methodbind: MethodBindPtr; args: array[0, ConstTypePtr]; Result: typedesc): Result =
  var ret: encoded Result
  methodbind.ptrcall(result = addr ret)
  (addr ret).decode_result(Result)

# static, no args, no result,
proc ptrcall*(methodbind: MethodBindPtr; args: array[0, ConstTypePtr]; Result: typedesc[void]): void =
  methodbind.ptrcall()


proc call*(methodbind: MethodBindPtr; self: SomeClass; args: var seq[VariantPtr]; vararg: varargs[Variant]): Variant =
  var error {.global.} : CallError
  for vararg in vararg: args.add addr vararg
  interface_Object_methodBindCall(methodbind, self.engineInstance,
      (if args.len == 0: nil else: addr args[0]), args.len, addr result, addr error)
proc call*(methodbind: MethodBindPtr; args: var seq[VariantPtr]; vararg: varargs[Variant]): Variant =
  var error {.global.} : CallError
  for vararg in vararg: args.add addr vararg
  interface_Object_methodBindCall(methodbind, ObjectPtr(nil),
      (if args.len == 0: nil else: addr args[0]), args.len, addr result, addr error)

template expandOnClassImported*(Class, Super: typedesc) =
  export Class
  proc register_callbacks {.execon: event"EntryPoint".} =
    callbackTable[className Class] = addr Class.callbacks
