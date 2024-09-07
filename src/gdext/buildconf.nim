when not declared(switch):
  import gdextcore/dirty/gdextensioninterface

  const
    Extension_name {.strdefine: "Extension.name".} = ""
    Extension_entrySymbol {.strdefine: "Extension.entrySymbol".} = "init_library"
    Extension_versionMajor {.intdefine: "Extension.versionMajor".} = TargetVersion[0]
    Extension_versionMinor {.intdefine: "Extension.versionMinor".} = TargetVersion[1]

    Assistance_checkEnv {.booldefine: "Assistance.checkenv".} = on

  type ExtensionObj* = object
    name*: string
    entrySymbol*: string
    version*: tuple[major, minor: int]
  type AssistanceObj* = object
    checkEnv*: bool

  const
    Extension* = ExtensionObj(
      name: Extension_name,
      entrySymbol: Extension_entrySymbol,
      version: (Extension_versionMajor, Extension_versionMinor),
    )
    Assistance* = AssistanceObj(
      checkEnv: Assistance_checkEnv,
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

  proc `version=`*(_: typedesc[Extension]; version: tuple[major, minor: int]) =
    switch("define", "TargetVersionMajor:" & $version.major)
    switch("define", "TargetVersionMinor:" & $version.minor)

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
    switch("nimcache", "$nimcache"/RunningSystem/Build/name)

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
  Extension.libdir = "$projectdir/lib"/RunningSystem/Build