# Package

version       = "0.2.0"
author        = "godot-nim, la.panon."
description   = "core library of nim for gdextension. Do not stands alone."
license       = "MIT"
srcDir        = "src"
installExt   = @["nim"]
namedBin      = toTable {"gdext/gdextwiz": "gdextwiz"}
binDir        = "bin"


# Dependencies

requires "nim >= 2.0.0"

import strformat
var upstream = "https://raw.githubusercontent.com/godotengine/godot-cpp/godot-4.3-stable/gdextension/extension_api.json"

task generate, "Generate extension API from the specified source. Remember all manual changes under src/ will be deleted.":
  rmDir "src/classes"
  rmDir "src/gen"

  withDir "coronation":
    exec &"nimble run -- --apisource:{upstream} --outdir:../src"
