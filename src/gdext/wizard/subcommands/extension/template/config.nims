# Buildconf, default settings (includes a few required settings) is in.
# Every settings you want can overwrite in a general way.
# All functions defined here are simply wrappers for the switch function,
# so raw switch can be used instead.
import gdext/buildconf
import std/strutils

Extension.name = capitalizeAscii "$name"
# Extension.libdir = "$projectdir/lib"

--path: src