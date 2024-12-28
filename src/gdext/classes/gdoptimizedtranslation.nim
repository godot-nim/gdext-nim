{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtranslation; export gdtranslation

proc generate*(self: OptimizedTranslation; `from`: gdref Translation): void =
  expandMethodBind(className OptimizedTranslation, "generate", 1466479800)
  methodbind.ptrcall(self, [getPtr `from`])

const OptimizedTranslation_vmap =
  Translation.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OptimizedTranslation]): Table[string, string] = OptimizedTranslation_vmap