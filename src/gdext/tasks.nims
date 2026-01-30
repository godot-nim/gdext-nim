include "versions.nim"
import std/strformat

type Source = object
  apisource*: string
  ifcesource*: string

proc clearGenDirs() =
  rmDir "src/gdext/classes"
  rmDir "src/gdext/gen"

proc coronation(apisource: string; ifcesource: string; outdir= "out") =
  withDir "coronation":
    exec &"nimble run -- --apisource:{apiSource} --ifcesource:{ifceSource} --outdir:{outdir}"

proc generate(source: Source; outdir= "src") =
  clearGenDirs()
  coronation(source.apisource, source.ifcesource, outdir)

proc requiredExe(exe: string): string =
  let path = findExe(exe)
  if path == "":
    quit &"Error: Could not find required executable \"{exe}\" in PATH.\n"
  path

proc fileUri(path: string): string =
  when defined(windows):
    "file:///" & path.replace("\\", "/")
  else:
    "file://" & path

proc fromUri(_: typedesc[Source]; uri: string): Source =
  Source(
    apisource: &"{uri}/extension_api.json",
    ifcesource: &"{uri}/gdextension_interface.h",
  )

proc dumpApi(engineExe: string = "godot"): Source =
  const cacheDir = ".cache"
  let enginePath = requiredExe(engineExe)
  mkDir cacheDir
  withDir cacheDir:
    exec &"{enginePath} --headless --dump-gdextension-interface"
    exec &"{enginePath} --headless --dump-extension-api"
    echo "Dumped extension API and interface to cache/ directory."
  Source.fromUri(fileUri &"{thisDir()}/{cacheDir}")

proc reinstallGdext() =
  discard gorgeEx "nimble uninstall gdext"
  exec "nimble install"

task generateFromUri, """Generate extension API from URI.
  | Upstream URI can be specified via 'upstream' environment variable.
  | $ upstream=https://raw.githubusercontent.com/godotengine/godot-cpp/godot-4.5-stable/gdextension nimble generateFromUri
  | $ upstream=file:///home/user/Documents/custom-api nimble generateFromUri""":
  var gdv = &"godot-{CurrentSupportedGodotVersion.Major}.{CurrentSupportedGodotVersion.Minor}-stable"
  var upstreamroot = getEnv("upstream", &"https://raw.githubusercontent.com/godotengine/godot-cpp/{gdv}/gdextension")
  Source.fromUri(upstreamroot).generate("../src")

task installFromUri, """Install gdext with sources generated from URI.
  | Upstream URI can be specified via 'upstream' environment variable.
  | $ upstream=https://raw.githubusercontent.com/godotengine/godot-cpp/godot-4.5-stable/gdextension nimble installFromUri
  | $ upstream=file:///home/user/Documents/custom-api nimble installFromUri""":
  generateFromUriTask()
  reinstallGdext()

task generateFromEngine, """Generate extension API from local Godot engine.
  | Godot executable can be specified via 'engine' environment variable.
  | $ engine=/bin/godot nimble generateFromEngine""":
  let engineExe = getEnv("engine", "godot")

  engineExe.dumpApi.generate("../src")

task installFromEngine, """Install gdext with sources generated from local Godot engine.
  | Godot executable can be specified via 'engine' environment variable.
  | $ engine=/bin/godot nimble installFromEngine""":
  generateFromEngineTask()
  reinstallGdext()

task generate, "Deprecated: Use 'generateFromUri' instead.":
  generateFromUriTask()

proc report(version, script: string) =
  try:
    exec script
  except:
    quit &"[Nim {version}] \"{script}\" failed."

task compatibilityTest, "Compile with a supported range of Nims and check for compatibility.":
  const versions = ["2.2.0", "2.2.2", "2.2.4", "2.2.6"]
  for version in versions:
    report version, &"choosenim {version}"
    report version, "nim r tests/importall"
    report version, "nimble test"
    report version, "gdextwiz run-editor testproject/editor &"
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
