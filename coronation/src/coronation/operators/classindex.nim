import submodules/wordropes
import submodules/semanticstrings

import types/json

import std/options
import std/sets
import std/tables
import std/deques

type Class* = ref object
  typesym*, inherits*: TypeSym
  json*: JsonClass
type InheritanceDB = TableRef[TypeSym, HashSet[TypeSym]]

let classDB* = new TableRef[TypeSym, Class]
let inheritanceDB* = new InheritanceDB

proc convert*(json: JsonClass): Class =
  new result
  result.typesym = json.name.scan.convert(TypeSym)
  result.inherits =
    if json.inherits.isSome: json.inherits.get.scan.convert(TypeSym)
    else: TypeSym.RootObj
  result.json = json

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
