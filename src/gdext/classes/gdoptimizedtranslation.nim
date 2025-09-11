{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtranslation; export gdtranslation

expandOnClassImported(OptimizedTranslation, Translation)

proc generate*(self: OptimizedTranslation; `from`: gdref Translation): void =
  expandMethodBind(className OptimizedTranslation, "generate", 1466479800)
  methodbind.ptrcall(self, [getPtr `from`])
