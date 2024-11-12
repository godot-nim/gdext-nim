import gdext/dirty/gdextensioninterface; export gdextensioninterface

import gdext/core/[
  builtinindex, commandindex, methodtools, typeshift, gdclass, gdtypedarray,
  gdrefs, exceptions
]
export
  builtinindex, commandindex, methodtools, typeshift, gdclass, gdtypedarray,
  gdrefs, exceptions

from gdext/core/extracommands import gdstring, stringname, classname
export extracommands.gdstring, extracommands.stringname, extracommands.classname

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

proc getMethodBind*(className: var StringName; methodName: string; hash: int): MethodBindPtr =
  let name = stringName methodName
  interface_ClassDB_getMethodBind(addr className, addr name, hash)

template expandMethodBind*(className; methodName; hash) =
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