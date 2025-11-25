import gdext/private/gdinterface
import gdext/private/staticevents
import gdext/private/typeshift
import gdext/private/macros
import gdext/private/nilchecks
import gdext/private/propertyinfo
import gdext/builtinindex

import std/[hashes, tables]

proc keyWild[A, B](self: Dictionary[A, B]): lent Dictionary[Variant, B] =
  when A is Variant:
    return self
  else:
    return cast[ptr Dictionary[Variant, B]](addr self)[]

proc keyWild[A, B](self: var Dictionary[A, B]): var Dictionary[Variant, B] =
  when A is Variant:
    return self
  else:
    return cast[ptr Dictionary[Variant, B]](addr self)[]

proc valueWild[A, B](self: Dictionary[A, B]): lent Dictionary[A, Variant] =
  when B is Variant:
    return self
  else:
    return cast[ptr Dictionary[A, Variant]](addr self)[]

proc valueWild[A, B](self: var Dictionary[A, B]): var Dictionary[A, Variant] =
  when B is Variant:
    return self
  else:
    return cast[ptr Dictionary[A, Variant]](addr self)[]

proc wild[A, B](self: Dictionary[A, B]): lent Dictionary[Variant, Variant] =
  self.keyWild.valueWild

proc wild[A, B](self: var Dictionary[A, B]): var Dictionary[Variant, Variant] =
  self.keyWild.valueWild

proc keySpecified[A, B, C](self: Dictionary[A, B]; _: typedesc[C]): Dictionary[C, B] =
  when A is C:
    return self
  else:
    return cast[ptr Dictionary[C, B]](addr self)[]

proc keySpecified[A, B, C](self: var Dictionary[A, B]; _: typedesc[C]): var Dictionary[C, B] =
  when A is C:
    return self
  else:
    return cast[ptr Dictionary[C, B]](addr self)[]

proc valueSpecified[A, B, C](self: Dictionary[A, B]; _: typedesc[C]): Dictionary[A, C] =
  when B is C:
    return self
  else:
    return cast[ptr Dictionary[A, C]](addr self)[]

proc valueSpecified[A, B, C](self: var Dictionary[A, B]; _: typedesc[C]): var Dictionary[A, C] =
  when B is C:
    return self
  else:
    return cast[ptr Dictionary[A, C]](addr self)[]

proc specified[A, B, C, D](self: Dictionary[A, B]; _: typedesc[C]; _: typedesc[D]): Dictionary[C, D] =
  self.keySpecified(C).valueSpecified(D)

proc specified[A, B, C, D](self: var Dictionary[A, B]; _: typedesc[C]; _: typedesc[D]): var Dictionary[C, D] =
  self.keySpecified(C).valueSpecified(D)

proc `[]!`(self: Dictionary[Variant, Variant]; key: Variant): Variant {.inline.} =
  cast[ptr Variant](interface_Dictionary_operatorIndexConst(addr self, addr key))[]
proc `[]`*(self: Dictionary[Variant, Variant]; key: Variant): Variant =
  nilCheck self
  `[]!`(self, key)
proc `[]`*[B: not Variant](self: Dictionary[Variant, B]; key: Variant): B =
  nilCheck self
  `[]!`(self.wild, key).get(B)
proc `[]`*[A, B: not Variant](self: Dictionary[A, B]; key: A): B =
  nilCheck self
  `[]!`(self.wild, variant key).get(B)

proc `[]!`(self: var Dictionary[Variant, Variant]; key: Variant): var Variant {.inline.} =
  cast[ptr Variant](interface_Dictionary_operatorIndex(addr self, addr key))[]
proc `[]`*(self: var Dictionary[Variant, Variant]; key: Variant): var Variant =
  nilCheck self
  `[]!`(self, key)
proc `[]`*[B: SomeBuiltins](self: var Dictionary[Variant, B]; key: Variant): var B =
  nilCheck self
  `[]!`(self.wild, key).getAddr(B)[]
proc `[]`*[A: not Variant](self: var Dictionary[A, Variant]; key: A): var Variant =
  nilCheck self
  `[]!`(self.wild, variant key)
proc `[]`*[A: not Variant; B: SomeBuiltins](self: var Dictionary[A, B]; key: A): var B =
  nilCheck self
  `[]!`(self.wild, variant key).getAddr(B)[]

proc `[]=!`(self: var Dictionary[Variant, Variant]; key: Variant; value: sink Variant) {.inline.} =
  cast[ptr Variant](interface_Dictionary_operatorIndex(addr self, addr key))[] = value
proc `[]=`*(self: var Dictionary[Variant, Variant]; key: Variant; value: sink Variant) =
  nilCheck self
  `[]=!`(self, key, value)
proc `[]=`*[B: not Variant](self: var Dictionary[Variant, B]; key: Variant; value: sink B) =
  nilCheck self
  `[]=!`(self.wild, key, variant value)
proc `[]=`*[A: not Variant](self: var Dictionary[A, Variant]; key: A; value: sink Variant) =
  nilCheck self
  `[]=!`(self.wild, variant key, value)
proc `[]=`*[A, B: not Variant](self: var Dictionary[A, B]; key: A; value: sink B) =
  nilCheck self
  `[]=!`(self.wild, variant key, variant value)
proc `[]=`*[A, B; C, D](self: var Dictionary[A, B]; key: C; value: sink D) =
  nilCheck self
  `[]=!`(self.wild, variant key, variant value)

include gdext/gen/gddictionaryconstr
include gdext/gen/gddictionary

func `==`*[A, B](left, right: Dictionary[A, B]): bool = {.noSideEffect.}:
  nilCheck left
  nilCheck right
  `==`(left.wild, right.wild)

proc setTyped(self: var Dictionary;
    typA: VariantType; classNameA: StringName; scriptA: Variant;
    typB: VariantType; classNameB: StringName; scriptB: Variant;
    ) =
  interfaceDictionarySetTyped(addr self,
    typA, addr classNameA, addr scriptA,
    typB, addr classNameB, addr scriptB,
    )

proc newDictionary*[A, B](): Dictionary[A, B] =
  Dictionary_constr[0](addr result, nil)
  when A isnot Variant or B isnot Variant:
    result.setTyped(
      A.variantType, A.className, Variant(),
      B.variantType, B.className, Variant())

proc newDictionary*[A, B](`from`: Dictionary[A, B]): Dictionary[A, B] =
  let argArr = [getPtr `from`]
  Dictionary_constr[1](addr result, addr argArr[0])

proc newDictionary*[A, B](table: Table[A, B]): Dictionary[A, B] =
  result = newDictionary[A, B]()
  for key, value in table.pairs:
    result[key] = value

proc newDictionary*[A, B](table: TableRef[A, B]): Dictionary[A, B] =
  result = newDictionary[A, B]()
  for key, value in table.pairs:
    result[key] = value

proc newDictionary*[A, B](pairs: openArray[(A, B)]): Dictionary[A, B] =
  result = newDictionary[A, B]()
  for (key, value) in pairs:
    result[key] = value

iterator keys*[A, B](self: Dictionary[A, B]): A =
  var iter: Variant
  var valid: bool
  var variant = variant self
  if interfaceVariantIterInit(addr variant, addr iter, addr valid) and valid:
    while true:
      yield iter.get(A)
      if not(interfaceVariantIterNext(addr variant, addr iter, addr valid) and valid): break

iterator values*[A, B](self: Dictionary[A, B]): B =
  for key in self.wild.keys:
    yield self.keyWild[key]

iterator pairs*[A, B](self: Dictionary[A, B]): tuple[key: A; item: B] =
  for key in self.wild.keys:
    yield (key.get(A), self.keyWild[key])

iterator mvalues*[A; B: SomeBuiltins or Variant](self: var Dictionary[A, B]): var B =
  for key in self.wild.keys:
    yield self.keyWild[key]

iterator mpairs*[A; B: SomeBuiltins or Variant](self: var Dictionary[A, B]): tuple[key: A; item: var B] =
  for key in self.wild.keys:
    yield (key.get(A), self.keyWild[key])

proc size*[A, B](self: Dictionary[A, B]): Int =
  nilCheck self
  size(self.wild)

proc isEmpty*[A, B](self: Dictionary[A, B]): bool =
  nilCheck self
  isEmpty(self.wild)

proc clear*[A, B](self: var Dictionary[A, B]): void =
  nilCheck self
  clear(self.wild)

proc assign*[A, B](self: var Dictionary[A, B]; dictionary: Dictionary[A, B]): void =
  nilCheck self
  nilCheck dictionary
  assign(self.wild, dictionary.wild)

proc sort*[A, B](self: var Dictionary[A, B]): void =
  nilCheck self
  sort(self.wild)

proc merge*[A, B](self: var Dictionary[A, B]; dictionary: Dictionary[A, B]): void =
  nilCheck self
  nilCheck dictionary
  merge(self.wild, dictionary.wild)

proc merged*[A, B](self: Dictionary[A, B]; dictionary: Dictionary[A, B]; overwrite: bool = false): Dictionary[A, B] =
  nilCheck self
  nilCheck dictionary
  merged(self.wild, dictionary.wild, overwrite).specified(A, B)
proc merged*[A, B](self: Dictionary[Variant, Variant]; dictionary: Dictionary[A, B]; overwrite: bool = false): Dictionary[A, B] =
  nilCheck self
  nilCheck dictionary
  merged(self.wild, dictionary.wild, overwrite).specified(A, B)
proc merged*[A, B](self: Dictionary[A, B]; dictionary: Dictionary[Variant, Variant]; overwrite: bool = false): Dictionary[A, B] =
  nilCheck self
  nilCheck dictionary
  merged(self.wild, dictionary.wild, overwrite).specified(A, B)
proc merged*[A, B, C, D](self: Dictionary[A, B]; dictionary: Dictionary[C, D]; overwrite: bool = false): Dictionary[Variant, Variant] =
  nilCheck self
  nilCheck dictionary
  merged(self.wild, dictionary.wild, overwrite)

proc has*[A, B; C](self: Dictionary[A, B]; key: C): bool =
  nilCheck self
  has(self.wild, variant key)

proc findKey*[A, B; C](self: Dictionary[A, B]; value: C): Variant =
  nilCheck self
  findKey(self.wild, variant value)

proc erase*[A, B; C](self: var Dictionary[A, B]; key: C): bool =
  nilCheck self
  erase(self.wild, variant key)

proc keys*[A, B](self: Dictionary[A, B]): Array[A] =
  nilCheck self
  var res = self.wild.keys
  cast[ptr typeof(result)](addr res)[]

proc values*[A, B](self: Dictionary[A, B]): Array[B] =
  nilCheck self
  var res = self.wild.values
  cast[ptr typeof(result)](addr res)[]

proc duplicate*[A, B](self: Dictionary[A, B]; deep: bool = false): Dictionary[A, B] =
  nilCheck self
  duplicate(self.wild, deep).specified(A, B)

proc duplicateDeep*[A, B](self: Dictionary[A, B]; deepSubresourcesMode: Int = 1): Dictionary[A, B] =
  nilCheck self
  duplicateDeep(self.wild, deepSubresourcesMode).specified(A, B)

proc get*[A, B; C](self: Dictionary[A, B]; key: C; default: B = default(B)): B =
  nilCheck self
  get(self.wild, variant key, variant default).get(B)
proc get*[A: not Variant; B](self: Dictionary[A, B]; key: Variant; default: B = default(B)): B {.error.}
proc get*[A: not Variant; B; C: not A](self: Dictionary[A, B]; key: C; default: B = default(B)): B {.error.}

proc getOrAdd*[A, B; C](self: Dictionary[A, B]; key: C; default: B = default(B)): B =
  nilCheck self
  getOrAdd(self.wild, variant key, variant default).get(B)
proc getOrAdd*[A: not Variant; B; C: not A](self: Dictionary[A, B]; key: C; default: B = default(B)): B {.error.}

proc set*[A, B](self: var Dictionary[A, B]; key: A; value: B): bool =
  nilCheck self
  set(self.wild, variant key, variant value)
proc set*[A, B](self: var Dictionary[Variant, B]; key: A; value: B): bool =
  nilCheck self
  set(self.wild, variant key, variant value)
proc set*[A, B](self: var Dictionary[A, Variant]; key: A; value: B): bool =
  nilCheck self
  set(self.wild, variant key, variant value)
proc set*[A, B](self: var Dictionary[Variant, Variant]; key: A; value: B): bool =
  nilCheck self
  set(self.wild, variant key, variant value)

proc isTyped*[A, B](self: Dictionary[A, B]): bool =
  nilCheck self
  isTyped(self.wild)

proc isTypedKey*[A, B](self: Dictionary[A, B]): bool =
  nilCheck self
  isTypedKey(self.wild)

proc isTypedValue*[A, B](self: Dictionary[A, B]): bool =
  nilCheck self
  isTypedValue(self.wild)

proc isSameTyped*[A, B, C, D](self: Dictionary[A, B]; dictionary: Dictionary[C, D]): bool =
  nilCheck self
  nilCheck dictionary
  isSameTyped(self.wild, dictionary.wild)

proc isSameTypedKey*[A, B, C, D](self: Dictionary[A, B]; dictionary: Dictionary[C, D]): bool =
  nilCheck self
  nilCheck dictionary
  isSameTypedKey(self.wild, dictionary.wild)

proc isSameTypedValue*[A, B, C, D](self: Dictionary[A, B]; dictionary: Dictionary[C, D]): bool =
  nilCheck self
  nilCheck dictionary
  isSameTypedValue(self.wild, dictionary.wild)

proc getTypedKeyBuiltin*[A, B](self: Dictionary[A, B]): Int =
  nilCheck self
  getTypedKeyBuiltin(self.wild)

proc getTypedValueBuiltin*[A, B](self: Dictionary[A, B]): Int =
  nilCheck self
  getTypedValueBuiltin(self.wild)

proc getTypedKeyClassName*[A, B](self: Dictionary[A, B]): StringName =
  nilCheck self
  getTypedKeyClassName(self.wild)

proc getTypedValueClassName*[A, B](self: Dictionary[A, B]): StringName =
  nilCheck self
  getTypedValueClassName(self.wild)

proc getTypedKeyScript*[A, B](self: Dictionary[A, B]): Variant =
  nilCheck self
  getTypedKeyScript(self.wild)

proc getTypedValueScript*[A, B](self: Dictionary[A, B]): Variant =
  nilCheck self
  getTypedValueScript(self.wild)

proc makeReadOnly*[A, B](self: var Dictionary[A, B]): void =
  nilCheck self
  makeReadOnly(self.wild)

proc isReadOnly*[A, B](self: Dictionary[A, B]): bool =
  nilCheck self
  isReadOnly(self.wild)

proc recursiveEqual*[A, B, C, D](self: Dictionary[A, B]; dictionary: Dictionary[C, D]; recursionCount: Int): bool =
  nilCheck self
  nilCheck dictionary
  recursiveEqual(self.wild, dictionary.wild, recursionCount)