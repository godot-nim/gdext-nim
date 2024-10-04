import VirtualDirectory

type Directory* = ref object of VirtualDirectory
  pName: string

method name(node: Directory): string = node.pName

proc dir*(name: string): Directory =
  result = Directory(
    pName: name,
  )