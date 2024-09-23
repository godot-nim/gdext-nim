# Package

version       = "0.1.0"
author        = "godot-nim, la.panon."
description   = "core library of nim for gdextension. Do not stands alone."
license       = "MIT"
srcDir        = "src"
installExt   = @["nim"]
namedBin      = toTable {"gdext/gdextwiz": "gdextwiz"}
binDir        = "bin"


# Dependencies

requires "nim >= 2.0.0"
