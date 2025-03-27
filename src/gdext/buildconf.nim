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
