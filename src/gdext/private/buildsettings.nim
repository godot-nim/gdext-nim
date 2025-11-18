import std/strutils

type Platform* = enum
  ## **Godot Docs**: `Running System <https://docs.godotengine.org/en/stable/tutorials/scripting/gdextension/gdextension_file.html#running-system>`_
  windows ## Windows operating system
  macos ## Mac operating system
  linux ## Linux operating system
  # Bsd ## BSD operating system
  # Linuxbsd ## Linux or BSD operating system
  android ## Android operating system
  ios ## iOS operating system
  web ## Web browser

type Target* = enum
  ## **Godot Docs**: `Build <https://docs.godotengine.org/en/stable/tutorials/scripting/gdextension/gdextension_file.html#build>`_
  debug ## Target with debug symbols
  release ## Optimized build without debug symbols
  editor ## Editor build

type Architecture* = enum
  ## **Godot Docs**: `Architecture <https://docs.godotengine.org/en/stable/tutorials/scripting/gdextension/gdextension_file.html#architecture>`_
  default ## HostCPU. The architecture what you use
  double ## double-precision build
  single ## single-precision build
  x86_64 ## 64-bit x86 build
  arm64 ## 64-bit ARM build
  rv64 ## 64-bit RISC-V build
  riscv ## RISC-V build (any bitness)
  wasm32 ## 32-bit WebAssembly build

proc toPlatform(str: string): Platform =
  case str.nimIdentNormalize.toLowerAscii
  of "windows": Platform.windows
  of "macos": Platform.macos
  of "macosx": Platform.macos
  of "linux": Platform.linux
  of "android": Platform.android
  of "ios": Platform.ios
  of "web": Platform.web
  else: hostOS.toPlatform

proc toTarget(str: string): Target =
  case str.nimIdentNormalize.toLowerAscii
  of "debug": Target.debug
  of "release": Target.release
  of "editor": Target.editor
  else: Target.debug

proc toArchitecture(str: string): Architecture =
  case str.nimIdentNormalize.toLowerAscii
  of "double": Architecture.double
  of "single": Architecture.single
  of "x8664": Architecture.x86_64 # "x86_64".nimIdentNormalize == "x8664"
  of "arm64": Architecture.arm64
  of "rv64": Architecture.rv64
  of "riscv": Architecture.riscv
  of "wasm32": Architecture.wasm32
  else: Architecture.default

const
  buildOS* {.strdefine: "buildOS".} = hostOS

  Extension_name {.strdefine: "Extension.name".} = ""
  Extension_entrySymbol {.strdefine: "Extension.entrySymbol".} = "init_library"
  Extension_decimalPrecision {.strdefine: "Extension.decimalPrecision".} = "float"

  platform {.strdefine: "platform".} = ""
  target {.strdefine: "target".} = ""
  arch {.strdefine: "arch".} = ""

  Assistance_checkEnv {.booldefine: "Assistance.checkenv".} = on
  Assistance_genEditorHelp {.booldefine: "Assistance.genEditorHelp".} = on

  Dev_debugCallbacks {.booldefine: "Dev.debugCallbacks".} = off
  Dev_debugEvents {.booldefine: "Dev.debugEvents".} = off

  BuildSettings* = (
    platform: platform.toPlatform,
    target: target.toTarget,
    arch: arch.toArchitecture,
  )

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
  const buildconfwarn {.used.} = """
Did you forget to make config.nims? Make sure that the required fields are filled out in config.nims:

# config.nims
import gdext/buildconf
let setting = BuildSettings(
  name: "YourExtensionName",
  )
configure(setting)
"""
  when appType != "lib": {.error: """
The extension must be compiled as a dynamic library.
""" & buildconfwarn.}
  when Extension.name == "": {.error: """
The extension name is not specified.
""" & buildconfwarn.}
