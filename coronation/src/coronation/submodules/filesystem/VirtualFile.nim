import sdk
import cloths

type
  VirtualFile* = ref object of VirtualNode

method contents*(file: VirtualFile): Cloth {.base.} = discard
method generate*(file: VirtualFile) =
  file.path.writeFile $contents file

method dumpTree(file: VirtualFile): Cloth = file.name