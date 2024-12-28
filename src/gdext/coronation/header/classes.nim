import gdext/gdinterface/[classDB, methodtools, exceptions]
export                    classDB, methodtools, exceptions

from gdext/gdinterface/extracommands import gdstring, stringname, classname
export extracommands.gdstring, extracommands.stringname, extracommands.classname

import gdext/core/[builtinindex, typeshift, gdclass, gdtypedarray, gdrefs ]
export             builtinindex, typeshift, gdclass, gdtypedarray, gdrefs

import gdext/gen/[
  builtinclasses, classindex, globalenums, localenums, structs
]
export
  builtinclasses, classindex, globalenums, localenums, structs

import std/tables; export Table, toTable, initTable

proc concat*[T,S](a, b: Table[T,S]): Table[T,S] =
  result = a
  for key, value in b.pairs:
    result[key] = value

template expandMethodBind*(className; methodName; hash) =
  var methodbind {.global, inject.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = classDB.getMethodBind(className, methodName, hash)

proc ptrcall*(methodbind: MethodBindPtr; self: SomeClass; args: openArray[ConstTypePtr]; result: TypePtr = nil) =
  interface_Object_methodBindPtrCall(methodbind, CLASS_getOwner self, addr args[0], result)
proc ptrcall*(methodbind: MethodBindPtr; args: openArray[ConstTypePtr]; result: TypePtr = nil) =
  interface_Object_methodBindPtrCall(methodbind, nil, addr args[0], result)
proc ptrcall*(methodbind: MethodBindPtr; self: SomeClass; args: array[0, ConstTypePtr]; result: TypePtr = nil) =
  interface_Object_methodBindPtrCall(methodbind, CLASS_getOwner self, nil, result)
proc ptrcall*(methodbind: MethodBindPtr; args: array[0, ConstTypePtr]; result: TypePtr = nil) =
  interface_Object_methodBindPtrCall(methodbind, nil, nil, result)


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