import sdk
import cloths

type
  VirtualFile* = ref object of VirtualNode

method contents*(file: VirtualFile): Cloth {.base.} = discard
method generate*(file: VirtualFile) =
  var contents = $file.contents
  if contents.len == 0: return
  if contents[^1] != '\n':
    contents.add '\n'
  file.path.writeFile contents

method dumpTree(file: VirtualFile): Cloth = file.name