{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorsyntaxhighlighter; export gdeditorsyntaxhighlighter

const GDScriptSyntaxHighlighter_vmap =
  EditorSyntaxHighlighter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GDScriptSyntaxHighlighter]): Table[string, string] = GDScriptSyntaxHighlighter_vmap