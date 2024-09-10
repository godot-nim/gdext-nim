import gdext/dirty/gdextensioninterface; export gdextensioninterface
import gdext/core/builtinindex; export builtinindex
import gdext/core/commandindex; export commandindex
import gdext/core/methodtools; export methodtools
import gdext/core/typeshift; export typeshift
import gdext/core/gdclass; export gdclass
import gdext/core/gdtypedarray; export gdtypedarray
import gdext/core/gdrefs; export gdrefs
import gdext/core/extracommands; export gdstring, stringname, classname
import gdext/core/exceptions; export exceptions

import std/tables; export Table, toTable, initTable

proc concat*[T,S](a, b: Table[T,S]): Table[T,S] =
  result = a
  for key, value in b.pairs:
    result[key] = value
