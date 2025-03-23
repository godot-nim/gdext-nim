import sdk
import cloths

type
  VirtualFile* = ref object of VirtualNode

method contents*(file: VirtualFile): Cloth {.base.} = discard
method generate*(file: VirtualFile) =
  let contents = $file.contents
  if contents.len == 0: return
  file.path.writeFile contents

method dumpTree(file: VirtualFile): Cloth = file.name