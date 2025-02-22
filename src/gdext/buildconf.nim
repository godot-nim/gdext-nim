when not declared(switch):
  const
    Extension_name {.strdefine: "Extension.name".} = ""
    Extension_entrySymbol {.strdefine: "Extension.entrySymbol".} = "init_library"
    Extension_decimalPrecision {.strdefine: "Extension.decimalPrecision".} = "float"

    Assistance_checkEnv {.booldefine: "Assistance.checkenv".} = on
    Assistance_genEditorHelp {.booldefine: "Assistance.genEditorHelp".} = on

    Dev_debugCallbacks {.booldefine: "Dev.debugCallbacks".} = off
    Dev_debugEvents {.booldefine: "Dev.debugEvents".} = off

    Extension* = (
      name: Extension_name,
      entrySymbol: Extension_entrySymbol,
      decimalPrecision: Extension_decimalPrecision,
    )
    Assistance* = (
      checkEnv: Assistance_checkEnv,
      genEditorHelp: Assistance_genEditorHelp,
    )
    Dev* = (
      debugCallbacks: Dev_debugCallbacks,
      debugEvents: Dev_debugEvents,
    )

  when Assistance.checkEnv:
    when appType != "lib": {.error: """
This project must be compiled as a dynamic library.
Instead, run `nimble build --app:lib` or append `--app: lib` to the config.nims file.""".}
    when Extension.name == "": {.error: """
name of the extension is not declared; try to describe in config.nims:
  import gdext/buildconf
  Extension.name = "MyExtensionName"
""".}

else:
  from std/os import `/`, splitFile

  type Godot* = object
  type Extension* = object
  type Assistance* = object

  const RunningSystem* = case hostOS
  of "windows":
    "windows"
  of "linux":
    "linux"
  of "macosx":
    "macos"
  of "netbsd", "freebsd", "openbsd":
    "bsd"
  else: ""

  const Build* =
    when defined(release):
      "release"
    else:
      "debug"

  proc `libdir=`*(_: typedesc[Extension]; path: string) =
    switch("outdir", path)

  proc `entrySymbol=`*(_: typedesc[Extension]; name: string) =
    switch("define", "Extension.entrySymbol:" & name)

  proc `name=`*(_: typedesc[Extension]; name: string) =
    switch("define", "Extension.name:" & name)
    # Due to the directory structure that gdext requires, the cache path is
    # always bootstrap_d/ by default. This means that for projects that use
    # multiple extensions across the board, each time an extension is built,
    # the cache is overwritten and the cc is performed from scratch,
    # resulting in slower build speeds.
    switch("nimcache", nimCacheDir()/RunningSystem/Build/name)

  proc `genEditorHelp=`*(_: typedesc[Assistance]; b: bool) =
    switch("define", "Assistance.genEditorHelp:" & $b)

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

  when hostOS == "windows":
    # When using mingw32-gcc bundled with choosenim, it fails to load the linked
    # dependent dynamic libraries. The solution is to link the libraries statically.

    # TODO: This block is irrelevant depending on vcc and the gcc used, and requires
    #       a mechanism to be able to disable it.

    # --passL: "-static"
    --passL: "-static-libgcc"

  Extension.libdir = "$projectdir/lib"/RunningSystem/Build
