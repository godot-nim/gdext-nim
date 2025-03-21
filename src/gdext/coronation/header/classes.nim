import gdext/gdinterface/[classDB, methodtools, exceptions]
export                    classDB, methodtools, exceptions

import gdext/private/gdinterface
export gdstring, stringname, classname

import gdext/core/[typeshift, gdclass, gdrefs ]
export             typeshift, gdclass, gdrefs

import gdext/builtinindex; export builtinindex

import gdext/gen/[
  builtinclasses
]
export
  builtinclasses

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