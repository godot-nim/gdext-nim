import gdext
import std/[unittest, exitprocs]

# paramFiltering tryes to access to `paramCount` and it cause `OSError`
# because the program will finally be shared object(dll).
unittest.disableParamFiltering()
export unittest

template runtime*(body) =
  if not Engine.isEditorHint: body

gdexport "test_success",
  proc(self: ExtensionMain): bool = exitprocs.getProgramResult() == 0,
  proc(self: ExtensionMain; value: bool) = (discard)
