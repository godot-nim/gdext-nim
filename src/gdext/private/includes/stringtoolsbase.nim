privateAccess Object
proc engineInstancePtr(obj: Object): ptr ObjectPtr =
  if unlikely(obj.isNil or obj.unsafeEngineInstance.isNil): nil
  else: addr obj.unsafeEngineInstance

template getPtr[T](v: T): pointer = cast[pointer](addr v)
template getPtr(v: Variant): pointer = cast[pointer](addr v)
template getPtr[T: Object](v: T): pointer =
  cast[pointer](v.engineInstancePtr)
template getPtr(v: GdRef): pointer =
  getPtr v.handle

proc load(typ: VariantType; proc_name: string; hash: int): PtrBuiltinMethod =
  let name = newStringName proc_name
  interface_Variant_getPtrBuiltinMethod(typ, addr name, hash)
proc load(op: Variant_Operator; left, right: VariantType): PtrOperatorEvaluator =
  interfaceVariantGetPtrOperatorEvaluator(cuint op.ord, left, right)