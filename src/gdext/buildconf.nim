## Note:
## This is a module for NimScript; do not import from Nim modules.
## If you want to get the information configured by this module from Nim modules,
## import `gdext/private/buildsettings` instead.

when not declared(switch) and not defined(docgen):
  {.error: """
This is a module for NimScript; do not import from Nim modules.
If you want to get the information configured by this module from Nim modules,
import `gdext/private/buildsettings` instead.
""".}

when not declared(switch):
  import system/nimscript

import std/[strformat, strutils, tables]
import std/private/ospaths2
from std/parsecfg import Config, newConfig
import gdext/private/configdsl

const cmddefPlatform  {.define: "platform".} = ""
const cmddefTarget {.define: "target".} = ""
const cmddefArchitecture {.define: "arch".} = ""

proc switchHint(key, value: string) =
  echo "--", key, ":", value
  switch(key, value)

proc defineHint(key, value: string) =
  echo "--define:", key, "=", value
  switch("define", key & ":" & value)
proc defineHint(value: string) =
  echo "--define:", value
  switch("define", value)

proc removeInvalidChars(str: string): string =
  var i = 0
  var hasInvalid = false
  while str[i] in '0'..'9':
    inc i
    hasInvalid = true
  for i in i..str.high:
    if str[i].isAlphaNumeric:
      result.add str[i]
    else:
      hasInvalid = true
  if hasInvalid:
    echo "Warning: The string \"", str, "\" contains invalid characters; it was replaced with \"", result, "\""
proc capitalizeWithWarning(str: string): string =
  if str[0].isUpperAscii:
    result = str
  else:
    result = str.capitalizeAscii
    echo "Warning: The string \"", str, "\" should be capitalized; it was replaced with \"", result, "\""

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

type UpdateMethod* = enum
  ## Methods by which the gdext build system updates files
  create ## Discard the original file and create a new one
  overwrite ## Retain the original changes and overwrites the updated ones
  inject ## Retain the original changes and inject the missing ones

proc cmdswitched*(_: typedesc[Platform]): bool =
  cmddefPlatform.len != 0
proc cmdswitched*(_: typedesc[Target]): bool =
  cmddefTarget.len != 0
proc cmdswitched*(_: typedesc[Architecture]): bool =
  cmddefArchitecture.len != 0

proc toPlatform(str: string): Platform =
  case str.nimIdentNormalize.toLowerAscii
  of "windows": Platform.windows
  of "macos": Platform.macos
  of "macosx": Platform.macos
  of "linux": Platform.linux
  of "android": Platform.android
  of "ios": Platform.ios
  of "web": Platform.web
  else:
    quit "Error: the platform \"" & str & "\" is invalid or not supported."

proc defaultPlatform: Platform =
  if cmdswitched(Platform):
    result = cmddefPlatform.toPlatform
  else:
    result = hostOS.toPlatform

proc toTarget(str: string): Target =
  case str.nimIdentNormalize.toLowerAscii
  of "debug": Target.debug
  of "release": Target.release
  of "editor": Target.editor
  else:
    quit "Error: \"" & str & " \" build is invalid or not supported."

proc defaultTarget: Target =
  if cmdswitched(Target):
    result = cmddefTarget.toTarget
  else:
    result = when defined(release):
      Target.release
    else:
      Target.debug

proc toArchitecture(str: string): Architecture =
  case str.nimIdentNormalize.toLowerAscii
  of "double": Architecture.double
  of "single": Architecture.single
  of "x8664": Architecture.x86_64 # "x86_64".nimIdentNormalize == "x8664"
  of "arm64": Architecture.arm64
  of "rv64": Architecture.rv64
  of "riscv": Architecture.riscv
  of "wasm32": Architecture.wasm32
  else:
    quit "Error: the architecture \"" & str & "\" is invalid or not supported."

proc defaultArchitecture: Architecture =
  if cmdswitched(Architecture):
    result = cmddefArchitecture.toArchitecture
  else:
    result = default

type BuildSettings* = ref object
  name*: string ## The name of the extension.
  ## It affects the name of the generated file and
  ## the name of the class that emulates the top level of Nim.
  extpath*: string ## The path to the .gdextension file.
  ## If empty, the default path is applied.
  ## If the file does not exist, a new one is created there.
  entrySymbol*: string = "init_library" ## The name of the function
  ## Godot will call when initializing the extension.
  ## Usually does not need to be changed.
  platform*: Platform = defaultPlatform() ## Actually depends on your hostOS
  ## Specify the platform to build. The default value is the OS used for
  ## the build.
  ## You can override the value also with the `-d:platform=XXX` command line option.
  target*: Target = defaultTarget() ## Specifies the use of the binary.
  ## `-d:release` is automatically set only if Target.release is specified.
  ## You can override the value also with the `-d:target=XXX` command line option.
  arch*: Architecture = defaultArchitecture() ## Specify the CPU architecture on which the binary will run.
  ## You can override the value also with the `-d:arch=XXX` command line option.
  updateMethod*: UpdateMethod = create
  genEditorHelp*: bool = true ## Specifies whether to generate in-editor class references.
  extconfig: Config


proc toOS(sys: Platform): string =
  case sys
  of windows, linux, android, ios:
    $sys
  of macos:
    "macosx"
  of web:
    "linux"

proc defaultExtensionPath(name: string): string =
  &"{projectDir()}/{name}.gdextension"

proc isCrossPlatformBuild(setting: BuildSettings): bool =
  (setting.platform != buildOS.toPlatform) and
  (setting.arch != default) and
  (setting.arch != buildCPU.toArchitecture)

proc toDll(str: string; platform: Platform): string =
  let prefix = case platform
  of windows: ""
  else: "lib"
  let ext = case platform
  of windows:
    ".dll"
  of macos, ios:
    ".dylib"
  of web:
    ".wasm"
  else:
    ".so"
  fmt"{prefix}{str}{ext}"

proc platformkey(platform: Platform; target: Target; arch: Architecture = default): string =
  if arch == default:
    (@[$platform, $target]).join(".")
  else:
    (@[$platform, $target, $arch]).join(".")

proc platformkey(setting: BuildSettings): string =
  platformkey(setting.platform, setting.target, setting.arch)

proc outfile(name: string; platform: Platform; target: Target; arch: Architecture = default): string =
  (name & "." & platformkey(platform, target, arch)).toDll(platform)

proc resourcePath(path: string): string = "res://" & path

proc gdprojectdir(): string =
  for parent in parentdirs(projectDir()):
    if fileExists(parent/"project.godot"):
      return parent
  raise newException(CatchableError, "project.godot not found in parent directries")

proc outdir(name: string; platform: Platform; target: Target; arch: Architecture = default): string =
  result = "./"
  result.add relativePath(projectDir(), gdprojectDir())
  result.add "/lib/"
  result.add outfile(name, platform, target, arch)
proc outdir(setting: BuildSettings): string =
  outdir(setting.name, setting.platform, setting.target, setting.arch)

proc absolutePath2(str: string): string =
  absolutePath(str.replace("res:/", gdprojectdir()))

proc outpathFromRes(setting: BuildSettings; key = platformkey(setting)): string =
  setting.extconfig["libraries"].getOrDefault(key, outdir(setting).resourcePath)

proc validate(setting: BuildSettings) =
  setting.name = setting.name.removeInvalidChars.capitalizeWithWarning

  if setting.extpath.len == 0:
    setting.extpath = defaultExtensionPath(setting.name)
  if setting.extconfig.isNil:
    setting.extconfig = case setting.updateMethod
    of create: newConfig()
    of overwrite, inject: loadConfig(setting.extpath)

proc switch(setting: BuildSettings) =
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


  defineHint("Extension.name", setting.name)

  # Due to the directory structure that gdext requires, the cache path is
  # always bootstrap_d/ by default. This means that for projects that use
  # multiple extensions across the board, each time an extension is built,
  # the cache is overwritten and the cc is performed from scratch,
  # resulting in slower build speeds.
  switchHint("nimcache", &"{nimCacheDir()}/{platformkey(setting)}")

  switchHint("out", outpathFromRes(setting).absolutePath2)

  defineHint("Extension.entrySymbol", setting.entrySymbol)
  defineHint("Assistance.genEditorHelp", $setting.genEditorHelp)

  if setting.target == release:
    defineHint("release")

  if setting.isCrossPlatformBuild:
    if setting.arch notin {default}:
      switchHint("cpu", $setting.arch)
    if setting.platform == web:
      switchHint("os", "linux")
    else:
      switchHint("os", setting.platform.toOS)

  case setting.platform
  of windows:
    # When using mingw32-gcc bundled with choosenim, it fails to load the linked
    # dependent dynamic libraries. The solution is to link the libraries statically.

    # TODO: This block is irrelevant depending on vcc and the gcc used, and requires
    #       a mechanism to be able to disable it.

    # --passL: "-static"
    --passL: "-static-libgcc"

  else:
    discard

proc update(section: Section; updateMethod: UpdateMethod; key, value: string) =
  case updateMethod
  of create, overwrite: `[]=`(section, key, value)
  of inject: discard hasKeyOrPut(section, key, value)

proc fillupMissingRequirements(setting: BuildSettings) =
  let configuration = setting.extconfig.mgetOrPut("configuration", newSection())
  configuration.update(setting.updateMethod, "entry_symbol", "init_library")
  configuration.update(setting.updateMethod, "compatibility_minimum", "4.4")
  configuration.update(setting.updateMethod, "reloadable", "true")

  let libraries = setting.extconfig.mgetOrPut("libraries", newSection())
  for platform in [windows, linux, macos, web]:
    for target in [debug, release]:
      let key = platformkey(platform, target)
      libraries.update(setting.updateMethod, key, outdir(setting.name, platform, target).resourcepath)

template configure*(setting: BuildSettings; body) =
  validate(setting)
  fillupMissingRequirements(setting)
  setting.extconfig.eval(body)
  writeConfig(setting.extconfig, setting.extpath)
  switch(setting)

proc configure*(setting: BuildSettings) =
  validate(setting)
  fillupMissingRequirements(setting)
  writeConfig(setting.extconfig, setting.extpath)
  switch(setting)
