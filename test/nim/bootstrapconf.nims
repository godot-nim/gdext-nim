## This file was copied from https://github.com/godot-nim/gdextwiz/blob/main/src/gdextwizpkg/subcommands/workspace/template
## This file is used to build the extension.
## Basically, there is no need to edit.
import os

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

let workspaceName = projectDir().splitFile.name

# This value can be used as a virtual class to be accessed from GDScript
# when a method that does not belong to any class is defined and exported
# to godot. An example is shown below:
# 
# --define:ExtensionMain:Nim
# 
# # somewhere.nim:
# proc sayWhat*(what: string) {.gdsync.} = print what
# 
# # somewhere.gd:
# func _ready():
#   Nim.sayWhat("hello")
switch("define", "ExtensionMain:" & workspaceName)

switch("out", "$projectdir/lib"/workspaceName.toDll)