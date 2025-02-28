import std/[sequtils]

import gdext/buildconf
import gdext/utils/macros
import gdext/core/gdclass
import propertyinfo

proc docComment*(def: NimNode): NimNode =
  if def.kind notin RoutineNodes: return
  if def.body.len == 0: return
  if def.body[0].kind != nnkCommentStmt: return
  def.body[0]

proc getDescription*(def: NimNode): string =
  let desc = def.getPragmaVal("description") or def.docComment
  if desc != nil: desc.strval
  else: ""

when Assistance.genEditorHelp:
  import gdext/doctools
  proc getEditorHelp*(def: NimNode): string =
    def.getDescription.descToEditorHelp

proc withCheckTypes*(node, onSelfTypeFailed, onDefault: NimNode): NimNode =
  let lineerror = bindSym "lineerror"
  result = newNimNode nnkWhenStmt

  if node.hasReturn:
    let arg = node.params[0]
    result.add newElifBranch( (quote do: `arg` isnot SomeProperty),
      lineerror.newcall(newlit "invalid form; the type `" & arg.repr & "` is not supported for result.", arg)
    )

  let args = node.params.breakArgs.toSeq
  for (i, arg) in args:
    var argT = arg.Type or bindSym"typeof".newCall arg.default
    if argT.isVarargs:
      if i != args.high:
        error "invalid form; varargs must be placed at last.", arg.name
      else:
        argT = argT[1]
    result.add newElifBranch( (quote do: `argT` isnot SomeProperty),
      lineerror.newcall(newlit "invalid form; the type `" & argT.repr & "` is not supported for argument.", arg.name)
    )

  let Self = node.params[1][1]
  result.add newElifBranch( (quote do: `Self` isnot SomeUserClass),
    onSelfTypeFailed)

  result.add newElse(onDefault)
