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

import std/[strformat, strutils, tables, private/globs]
import os except fileExists, findExe, getEnv
from std/parsecfg import Config, newConfig
import gdext/private/configdsl

const cmddefPlatform  {.define: "platform".} = ""
const cmddefTarget {.define: "target".} = ""
const cmddefArchitecture {.define: "arch".} = ""

const cmddefAndroidNdkVersion {.define: "android_ndk_version".} = "23.2.8568313"
const cmddefAndroidApiLevel {.define: "android_api_level".} = "21"

const cmddefLinkMode {.define: "godotLinkMode".} = ""

proc toBuildOS(path: string): string =
  when buildOS == "windows":
    result = path.unixToNativePath()
  when buildOS in ["linux", "macosx"]:
    result = path.nativeToUnixPath()

proc `/`(a, b: string): string =
  os.`/`(a, b).toBuildOS

proc relativePath(a, b: string): string =
  result = os.relativePath(a, b).toBuildOS

proc absolutePath(a: string): string =
  result = os.absolutePath(a).toBuildOS

iterator parentDirs(a: string): string =
  for parent in os.parentDirs(a):
    yield parent.toBuildOS


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
  x86_32 ## 32-bit x86 build
  x86_64 ## 64-bit x86 build
  arm32 ## 32-bit ARM build
  arm64 ## 64-bit ARM build
  rv64 ## 64-bit RISC-V build
  riscv ## RISC-V build (any bitness)
  wasm32 ## 32-bit WebAssembly build

type UpdateMethod* = enum
  ## Methods by which the gdext build system updates files
  create ## Discard the original file and create a new one
  overwrite ## Retain the original changes and overwrites the updated ones
  inject ## Retain the original changes and inject the missing ones
  disable ## Retain the original changes and write nothing

type GodotLinkMode* = enum
  ## Methods by which Godot links GDExtension libraries
  gdextension
  sharedLink
  staticLink

const availableArch = {
  macos: @[Architecture.default],
  windows: @[x86_32, x86_64, arm64],
  linux: @[x86_32, x86_64, arm32, arm64, rv64],
  android: @[x86_64, arm64],
  ios: @[Architecture.default],
  web: @[wasm32],
}.toTable

proc hostCpuAsArch: Architecture =
  case hostCPU
  of "i386":         x86_32
  of "amd64":        x86_64
  of "arm":          arm32
  of "arm64":        arm64
  of "riscv32":      riscv
  of "riscv64":      rv64
  of "wasm32":       wasm32
  else: default

const fallbackArch = {
  macos: Architecture.default,
  windows: hostCpuAsArch(),
  linux: hostCpuAsArch(),
  android: arm64,
  ios: Architecture.default,
  web: wasm32,
}.toTable


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
  of "xi386": Architecture.x86_32
  of "amd64": Architecture.x86_64
  of "x8664": Architecture.x86_64 # "x86_64".nimIdentNormalize == "x8664"
  of "x86-64": Architecture.x86_64
  of "arm": Architecture.arm64
  of "arm64": Architecture.arm64
  of "riscv": Architecture.riscv
  of "riscv32": Architecture.riscv
  of "rv64": Architecture.rv64
  of "riscv64": Architecture.rv64
  of "wasm32": Architecture.wasm32
  else:
    quit "Error: the architecture \"" & str & "\" is invalid or not supported."

proc defaultArchitecture: Architecture =
  if cmdswitched(Architecture):
    result = cmddefArchitecture.toArchitecture
  else:
    result = default

proc toGodotLinkMode(str: string): GodotLinkMode =
  case str.nimIdentNormalize.toLowerAscii
  of "gdextension": GodotLinkMode.gdextension
  of "shared": GodotLinkMode.sharedLink
  of "static": GodotLinkMode.staticLink
  else: GodotLinkMode.gdextension


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
  androidNdkVersion*: string = cmddefAndroidNdkVersion
  androidApiLevel*: string = cmddefAndroidApiLevel
  godotLinkMode*: GodotLinkMode = cmddefLinkMode.toGodotLinkMode


proc toOS(sys: Platform): string =
  case sys
  of windows, linux, android, ios:
    $sys
  of macos:
    "macosx"
  of web:
    "linux"

proc toCPU(arch: Architecture): string =
  case arch
  of default: hostCPU
  of double: hostCPU
  of single: hostCPU
  of x86_32: "i386"
  of x86_64: "amd64"
  of arm32: "arm"
  of arm64: "arm64"
  of rv64: "riscv64"
  of riscv: "riscv32"
  of wasm32: "wasm32"

proc defaultExtensionPath(name: string): string =
  &"{projectDir()}/{name}.gdextension"

proc isCrossPlatformBuild(setting: BuildSettings): bool =
  (setting.platform != buildOS.toPlatform) or
  ( (setting.arch != default) and
    (setting.arch != buildCPU.toArchitecture))

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
    of overwrite, inject, disable: loadConfig(setting.extpath)
  if setting.arch == default:
    setting.arch = fallbackArch.getOrDefault(setting.platform)

proc switch(setting: BuildSettings) =
  if setting.godotLinkMode == GodotLinkMode.gdextension:
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

  defineHint("buildOS", buildOS)

  defineHint("Extension.name", setting.name)

  # Due to the directory structure that gdext requires, the cache path is
  # always bootstrap_d/ by default. This means that for projects that use
  # multiple extensions across the board, each time an extension is built,
  # the cache is overwritten and the cc is performed from scratch,
  # resulting in slower build speeds.
  switchHint("nimcache", &"{nimCacheDir()}/{platformkey(setting)}")

  if setting.godotLinkMode == GodotLinkMode.gdextension:
    switchHint("out", outpathFromRes(setting).absolutePath2)

  defineHint("Extension.entrySymbol", setting.entrySymbol)
  defineHint("Assistance.genEditorHelp", $setting.genEditorHelp)

  defineHint("platform", $setting.platform)
  defineHint("target", $setting.target)
  defineHint("arch", $setting.arch)
  defineHint("godotLinkMode", $setting.godotLinkMode)

  if setting.target == release:
    defineHint("release")

  if setting.isCrossPlatformBuild:
    switchHint("cpu", setting.arch.toCPU)
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

    if buildOS != "windows":
      let gccexe = case setting.arch
      of x86_64:
        "x86_64-w64-mingw32-cc"
      of x86_32:
        "i686-w64-mingw32-cc"
      else:
        "x86_64-w64-mingw32-cc"
      if findExe(gccexe).len == 0:
        quit """
Error: mingw is not installed.
mingw is required for compiling for Windows."""
      if not defined(mingw):
        quit """
Error: `-d:mingw` is not defined.
E.g. nim c -d:platform=windows -d:mingw bootstrap.nim
     gdextwiz build -d:platform=windows -d:mingw"""

      switch("gcc.exe", gccexe)
      switch("gcc.linkerexe", gccexe)

  of web:
    if findExe("emcc").len == 0 and findExe("emcc.bat").len == 0:
      quit """
emcc binary not found. web export of Nim program depends on emscripten.
Please install it following the guide below and activate the PATH to emcc.

https://emscripten.org/docs/getting_started/downloads.html
"""
    --cc: clang

    when buildOS == "windows":
      --clang.exe: emcc.bat
      --clang.linkerexe: emcc.bat
    else:
      --clang.exe: emcc
      --clang.linkerexe: emcc

    --passC: "-s SIDE_MODULE=1 -s SUPPORT_LONGJMP='wasm'"
    --passL: "-s SIDE_MODULE=1 -s SUPPORT_LONGJMP='wasm' -s WASM_BIGINT"

  of android:
    let NDK_ROOT =
      if getEnv("ANDROID_NDK_ROOT").len != 0:
        getEnv("ANDROID_NDK_ROOT")
      elif getEnv("ANDROID_HOME").len != 0:
        getEnv("ANDROID_HOME")/"ndk"/setting.androidNdkVersion
      elif getEnv("ANDROID_SDK_ROOT").len != 0:
        getEnv("ANDROID_SDK_ROOT")/"ndk"/setting.androidNdkVersion
      else:
        quit """
Unable to locate the Android NDK (default version: 23.2.8568313).
Please set the environment variable ANDROID_NDK_ROOT to the root directory of your NDK installation (e.g. /nix/store/.../ndk-bundle).
Alternatively, set ANDROID_HOME or ANDROID_SDK_ROOT to the root of your Android SDK (e.g. ~/Android/Sdk), so the required NDK can be resolved from ANDROID_HOME/ndk/23.2.8568313. """

    when buildOS.startsWith"linux":
      const OS_SUBDIR = "linux-x86_64"
    elif buildOS.startsWith"windows":
      const OS_SUBDIR = "windows-x86_64"
    elif buildOS.startsWith"macos":
      const OS_SUBDIR = "darwin-x86_64"
    let BIN_DIR = NDK_ROOT/"toolchains/llvm/prebuilt"/OS_SUBDIR/"bin"

    let (TARGET, ARCH) =
      case setting.arch
      of arm64:
        ("aarch64-linux-android", "armv8-a")
      of x86_64:
        ("x86_64-linux-android", "x86-64")
      else:
        quit "The architecture `" & $setting.arch & "` is not supported for android target; use -d:arch=arm64 or -d:arch=x86-64."
    --cpu: arm64
    --cc: clang
    switch("clang.exe", BIN_DIR/"clang")
    switch("clang.linkerexe", BIN_DIR/"clang")
    switch("passC", &"--target={TARGET & setting.androidApiLevel} -march={ARCH} -fPIC")
    switch("passL", &"--target={TARGET & setting.androidApiLevel} -march={ARCH}")

  else:
    discard

proc update(section: Section; updateMethod: UpdateMethod; key, value: string) =
  case updateMethod
  of create, overwrite: `[]=`(section, key, value)
  of inject, disable: discard hasKeyOrPut(section, key, value)

proc fillupMissingRequirements(setting: BuildSettings) =
  let configuration = setting.extconfig.mgetOrPut("configuration", newSection())
  configuration.update(setting.updateMethod, "entry_symbol", "init_library")
  configuration.update(setting.updateMethod, "compatibility_minimum", "4.6")
  configuration.update(setting.updateMethod, "reloadable", "true")

  let libraries = setting.extconfig.mgetOrPut("libraries", newSection())
  for platform in [windows, linux, macos, web, android]:
    for arch in availableArch[platform]:
      for target in [debug, release]:
        let key = platformkey(platform, target, arch)
        libraries.update(setting.updateMethod, key, outdir(setting.name, platform, target, arch).resourcepath)

template configure*(setting: BuildSettings; body) =
  validate(setting)
  fillupMissingRequirements(setting)
  setting.extconfig.eval(body)
  case setting.updateMethod
  of create, overwrite, inject:
    writeConfig(setting.extconfig, setting.extpath)
  of disable:
    discard
  switch(setting)

proc configure*(setting: BuildSettings) =
  validate(setting)
  fillupMissingRequirements(setting)
  case setting.updateMethod
  of create, overwrite, inject:
    writeConfig(setting.extconfig, setting.extpath)
  of disable:
    discard
  switch(setting)
