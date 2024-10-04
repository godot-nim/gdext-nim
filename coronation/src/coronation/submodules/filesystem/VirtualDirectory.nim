import sdk

import cloths

import std/tables
import std/os

type VirtualDirectory* = ref object of VirtualNode
method generate(directory: VirtualDirectory) =
  if not directory.path.dirExists:
    createDir directory.path
  for subitem in directory.subitems.values:
    generate subitem
method dumpTree(directory: VirtualDirectory): Cloth =
  weave multiline:
    directory.name & "/"
    weave tree:
      for key, subitem in directory.subitems:
        dumpTree subitem
