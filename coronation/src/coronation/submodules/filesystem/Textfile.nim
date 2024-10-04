import VirtualFile
import cloths
import std/macros

type
  Textfile* = ref object of VirtualFile
    pName: string
    pExt: string
    pContents: Cloth

macro weave*(textfile: Textfile; body): Textfile =
  let file = gensym(nskLet, "file")
  quote do:
    let `file` = `textfile`
    weave(`file`.pContents, `body`)
    `file`

method name(file: Textfile): string = file.pName
method ext(file: Textfile): string = file.pExt
method contents(file: Textfile): Cloth = file.pContents

proc textfile*(name: string; ext: string): Textfile =
  Textfile(pName: name, pExt: ext, pContents: cloth multiline)
proc nimble*(name: string): Textfile = textfile(name, ".nimble")
proc nims*(name: string): Textfile = textfile(name, ".nims")