import submodules/semanticstrings

import types/json

import std/options
import std/sets
import std/tables
import std/deques

export tables

type Class* = ref object
  typesym*, inherits*: TypeSym
  json*: JsonClass
  methods*: Table[string, JsonClassMethod]
type InheritanceDB = TableRef[TypeSym, HashSet[TypeSym]]

let classDB* = new TableRef[TypeSym, Class]
let inheritanceDB* = new InheritanceDB

proc convert*(json: JsonClass): Class =
  new result
  result.typesym = json.name.convert(TypeSym)
  result.inherits =
    if json.inherits.isSome: json.inherits.get.convert(TypeSym)
    else: TypeSym.RootObj
  result.json = json
  for metho in json.methods.get(@[]):
    result.methods[metho.name] = metho

proc registerDB*(class: Class) =
  classDB[class.typesym] = class
  try:
    inheritanceDB[class.inherits].incl class.typesym
  except:
    inheritanceDB[class.inherits] = [class.typesym].toHashSet


iterator hierarchical*(db: InheritanceDB): tuple[parent, child: TypeSym] =
  var queue: Deque[TypeSym]
  var parent: TypeSym = TypeSym.RootObj
  while true:
    try:
      for child in db[parent]:
        yield (parent, child)
        queue.addLast child
    except: discard
    try:
      parent = queue.popFirst()
    except: break
