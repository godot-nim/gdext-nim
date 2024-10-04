import cloths

import submodules/wordropes
import submodules/semanticstrings

import types/json

import std/strformat
import std/options

type Kind = enum
  None, WithoutDestructor, All

type Varianthook = ref object
  typename: TypeSym
  kind: Kind
  ptrconstr, ptrdestr: string

const
  copyhook = "hook_copy"
  destroyhook = "hook_destroy"

proc parse(variant: JsonBuiltinClass): VariantHook =
  result = VariantHook(typename: variant.name.scan.convert(TypeSym))
  result.kind =
    if variant.members.isSome or $result.typename in ["Int", "Float", "Bool", "Nil"]:
      None
    elif $result.typename in ["RID"]:
      WithoutDestructor
    else:
      All

  result.ptrconstr = &"{copyhook}_{result.typename}"
  result.ptrdestr = &"{destroyhook}_{result.typename}"

proc prototype(v: VariantHook): Cloth = weave multiline:
  if v.kind in {All, WithOutDestructor}:
    &"proc `=copy`(dst: var {v.typename}; src: {v.typename})"
    &"proc `=dup`(src: {v.typename}): {v.typename}"
  if v.kind in {All}:
    &"proc `=destroy`(val: {v.typename})"

proc define(v: VariantHook): Cloth = weave multiline:
  if v.kind in {All, WithOutDestructor}:
    &"var {v.ptrconstr}: PtrConstructor"
    &"proc {copyhook}(copy_from: {v.typename}): {v.typename} ="
    &"  let argPtr = cast[pointer](addr copy_from)"
    &"  {v.ptrconstr}(addr result, addr argPtr)"
    &"proc `=copy`(dst: var {v.typename}; src: {v.typename}) ="
    &"  if dst == src: return"
    &"  `=destroy` dst"
    &"  wasMoved dst"
    &"  dst = {copyhook}(src)"
    &"proc `=dup`(src: {v.typename}): {v.typename} ="
    &"  {copyhook}(src)"
  if v.kind in {All}:
    &"var {v.ptrdestr}: PtrDestructor"
    &"proc {destroyhook}(value: {v.typename}) ="
    &"  {v.ptrdestr}(addr value)"
    &"proc `=destroy`(val: {v.typename}) ="
    &"  if val == {v.typename}(): return"
    &"  try:"
    &"    {destroyhook}(val)"
    &"  except: discard"

proc load(v: VariantHook): Cloth = weave multiline:
  if v.kind in {All, WithOutDestructor}:
    &"{v.ptrconstr} = interface_Variant_getPtrConstructor({variantType v.typename}, 1)"
  if v.kind in {All}:
    &"{v.ptrdestr} = interface_Variant_getPtrDestructor({variantType v.typename})"
