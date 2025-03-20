import submodules/semanticstrings

import types/json

import std/options
import std/sets
import std/tables
import std/deques
import std/sequtils
import std/algorithm

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
  inheritanceDB.mgetOrPut(class.inherits, default(HashSet[TypeSym]))
    .incl class.typesym

proc cmp(a, b: TypeSym): int = cmp a.string, b.string

iterator hierarchical*(db: InheritanceDB): tuple[parent, child: TypeSym] =
  var queue: Deque[TypeSym] = [TypeSym.RootObj].toDeque
  var parent: TypeSym
  while queue.len != 0:
    parent = queue.popFirst()
    for child in db.getOrDefault(parent).toSeq.sorted(cmp):
      yield (parent, child)
      queue.addLast child
