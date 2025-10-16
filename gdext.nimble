import gdext/versions
# Package

version       = GdextVersionString
author        = "godot-nim, la.panon."
description   = "Nim for GDExtension. A pure library and a CLI tool."
license       = "MIT"
srcDir        = "src"
installExt   = @["nim", "h"]
namedBin      = toTable {"gdext/gdextwiz": "gdextwiz"}
binDir        = "bin"


# Dependencies

requires "nim >= 2.0.12"

import strformat

var gdv = &"godot-{CurrentSupportedGodotVersion.Major}.{CurrentSupportedGodotVersion.Minor}-stable"
var upstreamroot = &"https://raw.githubusercontent.com/godotengine/godot-cpp/{gdv}/gdextension"
var apiupstream = &"{upstreamroot}/extension_api.json"
var ifceupstream = &"{upstreamroot}/gdextension_interface.h"

task generate, "Generate extension API from the specified source. Remember all manual changes under src/ will be deleted.":
  rmDir "src/gdext/classes"
  rmDir "src/gdext/gen"

  withDir "coronation":
    exec &"nimble run -- --apisource:{apiupstream} --ifcesource:{ifceupstream} --outdir:../src"

proc report(version, script: string) =
  try:
    exec script
  except:
    quit &"[Nim {version}] \"{script}\" failed."

task compatibilityTest, "Compile with a supported range of Nims and check for compatibility.":
  const versions = ["2.0.12", "2.0.14", "2.2.0", "2.2.4"]
  for version in versions:
    report version, &"choosenim {version}"
    report version, "nim c tests/importall"
    report version, "rm tests/importall"
    report version, "nimble test"
    report version, "gdextwiz run-editor testproject/editor"
  echo "All tests passed!"

task genDocs, "Generate API reference from Nim sources":
  exec "nim doc --project --index:on -o:docs -d:docgen src/gdext"

task serveDocs, "Start local docs site with Docker (foreground)":
  exec "docker-compose up"

task stopDocs, "Stop the local docs site (Docker)":
  exec "docker-compose down"

task openDocs, "Open docs site in default browser":
  when defined(windows):
    exec "start http://localhost:4000"
  elif defined(macosx):
    exec "open http://localhost:4000"
  else:
    exec "xdg-open http://localhost:4000"

task docs, "Start docs in background (Docker) and open browser":
  exec "docker-compose up -d"
  openDocsTask()
