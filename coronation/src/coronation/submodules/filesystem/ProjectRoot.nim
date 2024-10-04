import VirtualDirectory

type ProjectRoot* = ref object of VirtualDirectory
  pName: string

proc root*(name: string): ProjectRoot =
  ProjectRoot(pName: name)

method name(root: ProjectRoot): string = root.pName