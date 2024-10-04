import VirtualFile
import cloths
import std/macros

type
  Textfile* = ref object of VirtualFile
    pName: string
    pContents: Cloth

macro weave*(textfile: Textfile; body): Textfile =
  let file = gensym(nskLet, "file")
  quote do:
    let `file` = `textfile`
    weave(`file`.pContents, `body`)
    `file`

method name(file: Textfile): string = file.pName
method contents(file: Textfile): Cloth = file.pContents

proc textfile*(name: string): Textfile =
  Textfile(pName: name, pContents: cloth multiline)
proc nimble*(name: string): Textfile = textfile(name & ".nimble")
proc nims*(name: string): Textfile = textfile(name & ".nims")