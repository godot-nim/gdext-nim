# Package

version       = "0.5.0"
author        = "godot-nim, la.panon."
description   = "Nim for GDExtension. A pure library and a CLI tool."
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

proc report(version, script: string) =
  try:
    exec script
  except:
    quit &"[Nim {version}] \"{script}\" failed."

task compatibilityTest, "Compile with a supported range of Nims and check for compatibility.":
  const versions = ["2.0.0", "2.0.14", "2.2.0", "2.2.2"]
  for version in versions:
    report version, &"choosenim {version}"
    report version, "nim c tests/importall"
    report version, "rm tests/importall"
    report version, "nimble test"
    report version, "gdextwiz run-editor testproject/editor"
  echo "All tests passed!"