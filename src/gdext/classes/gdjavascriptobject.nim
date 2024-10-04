{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

const JavaScriptObject_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[JavaScriptObject]): Table[string, string] = JavaScriptObject_vmap