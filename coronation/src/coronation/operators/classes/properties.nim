import cloths
import ../classindex

import submodules/wordropes
import submodules/semanticstrings

import std/options
import std/strformat

proc weave_properties*(class: Class): Cloth =
  weave margin:
    for prop in class.json.properties.get(@[]):
      weave multiline:
        let index_get = (if prop.index.isSome: $prop.index.get else: "")
        let index_set = (if prop.index.isSome: $prop.index.get & ", " else: "")
        let name = prop.name.scan.convert(ProcSym)
        &"template {name}*(self: {class.typesym}): untyped = self.{prop.getter.scan.convert(ProcSym)}({index_get})"
        if prop.setter.isSome:
          &"template `{name}=`*(self: {class.typesym}; value) = self.{prop.setter.get.scan.convert(ProcSym)}({index_set}value)"
