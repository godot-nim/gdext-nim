import cloths

import ../arguments
import ../functions

import submodules/semanticstrings
import types/json
import config
import utils

import std/sequtils
import std/strutils
import std/strformat
import std/options

proc weave*(json: JsonConstructor; typesym: TypeSym; active: bool): Cloth =
  let entry = ProcKey(
    name: constructorName typesym,
    args: json.arguments.get(@[]).mapIt(convert it),
    result: RenderableResult(typesym: typesym),
    kind: pkProc
  )

  if active:
    weave multiline:
      weave entry
      weave cloths.indent:
        if entry.args.len != 0:
          &"let argArr = [" & entry.args.mapIt(&"getPtr {it.name}").join(", ") & "]"
        let argptr = if entry.args.len == 0: "nil" else: "addr argArr[0]"
        &"{typesym}_constr[{json.index}](addr result, {argptr})"
  else:
    weave comment[true]:
      weave entry

proc weave_constructor*(self: JsonBuiltinClass): Cloth =
  if self.constructors.len == 0: result
  else:
    let typesym = self.name.convert(TypeSym)
    let ignore = getignore(typesym)

    let idxrange = {0..self.constructors.high} - ignore.constructor

    let constr = &"{typesym}_constr"
    weave margin:
      if idxrange.len != 0:
        weave multiline:
          &"var {constr}: array[{self.constructors.len}, PtrConstructor]"
          &"proc load_{typesym}_constructor {{.execon: staticevents.init_engine.on_load_builtinclassConstructor.}} ="
          &"  for i in {idxRange}:"
          &"    {constr}[i] = interface_Variant_getPtrConstructor(VariantType_{typesym}, int32 i)"
      weave multiline:
        for i, constructor in self.constructors:
          weave(constructor, typesym, i in idxrange)