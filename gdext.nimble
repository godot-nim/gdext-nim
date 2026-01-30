include "gdext/tasks.nims"
# Package

version       = GdextVersionString
author        = "godot-nim, la.panon."
description   = "Nim for GDExtension. A pure library and a CLI tool."
license       = "MIT"
srcDir        = "src"
installExt   = @["nim", "nims", "h"]
namedBin      = toTable {"gdext/gdextwiz": "gdextwiz"}
binDir        = "bin"


# Dependencies

requires "nim >= 2.2.0"
