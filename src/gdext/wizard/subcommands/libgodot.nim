import std/[os, parseopt, strutils]

import gdext/wizard/sdk/cli
import gdext/wizard/sdk/opttools

template withDir(dir: string; body: untyped) =
  let oldDir = getCurrentDir()
  setCurrentDir dir
  try:
    body
  finally:
    setCurrentDir oldDir

proc cloneEngine: string =
  ## Clone Godot engine repository for local development
  const repo = "https://github.com/godotengine/godot.git"
  const dir = "godot"
  const branch = "master"
  if not dirExists dir/".git":
    discard execShellCmd quoteShellCommand(@["git", "clone", repo, "--branch", branch, "--depth", "1", dir])
  else:
    withDir dir:
      discard execShellCmd quoteShellCommand(@["git", "pull", "origin", branch])
  return getCurrentDir()/dir

proc buildLibGodot(engineDir: string) =
  ## Build libgodot from the cloned Godot engine repository
  withDir engineDir:
    discard execShellCmd quoteShellCommand(@["scons", "library_type=shared_library", "extra_suffix=shared_library", "dev_build=yes", "debug_symbols=yes", "scu_build=yes"])

proc dispatch_build_libgodot*(opt: var OptParser) =
  let engineDir = cloneEngine()
  buildLibGodot(engineDir)