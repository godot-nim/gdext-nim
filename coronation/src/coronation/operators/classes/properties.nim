import cloths
import ../classindex

import types/json
import submodules/wordropes
import submodules/semanticstrings
import operators/arguments

import std/options
import std/strformat

proc getMethodRecursive(class: Class; name: string): JsonClassMethod =
  result = class.methods.getOrDefault(name, nil)
  if result == nil:
    let inherits = classDB.getOrDefault(class.inherits, nil)
    if inherits != nil:
      result = inherits.getMethodRecursive(name)

proc weave_properties*(class: Class): Cloth =
  weave margin:
    for prop in class.json.properties.get(@[]):
      var typ =
        if prop.index.isSome:
          let metho = class.getMethodRecursive(prop.getter)
          if metho != nil:
            metho.arguments.get(@[])[0].convert().typeSym
          else:
            TypeSym.Void
        else:
          TypeSym.Void

      weave multiline:
        let index_get = (if prop.index.isSome: &"{typ}({prop.index.get})" else: "")
        let index_set = (if prop.index.isSome: index_get & ", " else: "")
        let name = prop.name.scan.convert(ProcSym)
        &"template {name}*(self: {class.typesym}): untyped = self.{prop.getter.scan.convert(ProcSym)}({index_get})"
        if prop.setter.isSome:
          &"template `{name.dropQuote}=`*(self: {class.typesym}; value) = self.{prop.setter.get.scan.convert(ProcSym)}({index_set}value)"
