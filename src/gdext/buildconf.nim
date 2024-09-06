import std/os

when not declared(switch):
  import std/compilesettings
  const projectName = querySetting(projectName)
  const projectPath = querySetting(projectPath)
  const projectFull = querySetting(projectFull)
  const outFile = querySetting(outFile)
  const outDir = querySetting(outDir)
  static:
    echo "projectName:", projectName
    echo "projectPath:", projectPath
    echo "projectFull:", projectFull
    echo "outFile:", outFile
    echo "outDir:", outDir

  const ExtensionMainName* {.strdefine: "Extension.name".} = projectName
  const EntrySymbolName* {.strdefine: Extension.entrySymbol.} = "init_library"
  const CheckEnv* {.strdefine: "Extension.checkenv".} = on

  when CheckEnv:
    when appType != "lib": {.error: """
This project must be compiled as a dynamic library.
Instead, run `nimble build --app:lib` or append `--app: lib` to the config.nims file.""".}
    when ExtensionMainName == "": {.error: """
try to describe in config.nims:
  import gdext/buildconf
  Extension.name = "MyExtensionName"
""".}

when not declared(switch):
  import system/nimscript

when nimvm:
  type Extension* = object

  proc `version=`*(_: typedesc[Extension]; version: tuple[major, minor: int]) =
    switch("define", "TargetVersionMajor:" & $version.major)
    switch("define", "TargetVersionMinor:" & $version.minor)

  proc `libdir=`*(_: typedesc[Extension]; path: string) =
    switch("outdir", path)

  proc `entry_symbol=`*(_: typedesc[Extension]; name: string) =
    switch("define", "Extension.entrySymbol:" & name)

  proc `name=`*(_: typedesc[Extension]; name: string) =
    switch("define", "Extension.name:" & name)
    # Due to the directory structure that gdext requires, the cache path is
    # always bootstrap_d/ by default. This means that for projects that use
    # multiple extensions across the board, each time an extension is built,
    # the cache is overwritten and the cc is performed from scratch,
    # resulting in slower build speeds.
    switch("nimcache", "$nimcache/" & name)

  # GDExtension is loaded into the engine as a DLL.
  --app: lib

  # This library tries to load the engine API before the main process of
  # Nim (the process described at the top level of the file, which does
  # not belong to a function). For this reason, this option tells the
  # compiler not to run the main process when loading the DLL.
  --noMain: on

  # This library provides swizzle methods like GLslang. This method is
  # used in the format `vector.*xyz`. The --nimPreviewDotLikeOps option
  # is required to activate this `. *` operator.
  --define: nimPreviewDotLikeOps

  Extension.version = (4, 3)
  Extension.libdir = "$projectdir/lib"