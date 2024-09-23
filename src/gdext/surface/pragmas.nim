import std/macros

const pragmasNoArgsIdentifier = "pragmasNoArgs"
const pragmasVarArgsIdentifier = "pragmasVarArgs"

macro definePragmasNoParams(e: typed): untyped =
    var bracketNode = newNimNode(nnkBracket)
    for temp in e:
        let name = temp.findChild(it.kind == nnkSym).toStrLit
        bracketNode.add(name)

    let identifier = ident(pragmasNoArgsIdentifier)
    quote do:
        const `identifier` = @`bracketNode`
        `e`

macro definePragmasVarArgs(e: typed): untyped =
    var bracketNode = newNimNode(nnkBracket)
    for temp in e:
        let name = temp.findChild(it.kind == nnkSym).toStrLit
        bracketNode.add(name)

    let identifier = ident(pragmasVarArgsIdentifier)
    quote do:
        const `identifier` = @`bracketNode`
        `e`

definePragmasNoParams:
    template gdexport*() {.pragma.}
    template gdexport_multiline*() {.pragma.}
    template gdexport_color_no_alpha*() {.pragma.}
    template gdexport_dir*() {.pragma.}
    template gdexport_global_dir*() {.pragma.}
    template gdexport_file*() {.pragma.}
    template gdexport_global_file*() {.pragma.}
    template gdexport_flags_2d_navigation*() {.pragma.}
    template gdexport_flags_2d_physics*() {.pragma.}
    template gdexport_flags_2d_render*() {.pragma.}
    template gdexport_flags_3d_navigation*() {.pragma.}
    template gdexport_flags_3d_physics*() {.pragma.}
    template gdexport_flags_3d_render*() {.pragma.}
    template gdexport_flags_avoidance*() {.pragma.}

definePragmasVarArgs:
    template gdexport_enum*(cases: varargs[string]) {.pragma.}
    template gdexport_flags*(flags: varargs[string]) {.pragma.}

proc isPragmaNoArgs*(p: string): bool {.compileTime.} =
    pragmasNoArgs.contains(p)

proc isPragmaVarArgs*(p: string): bool {.compileTime.} =
    pragmasVarArgs.contains(p)