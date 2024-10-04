# Package

version       = "0.1.0"
author        = "godot-nim, la.panon."
description   = "A GDExtension generator for Nim-lang."
license       = "MIT"
srcDir        = "src"
installExt    = @["nim"]
bin           = @["coronation"]
binDir        = "bin"

# Dependencies

requires "nim >= 2.0.0"
requires "cloths >= 1.5.0"
requires "cligen >= 1.7.2"