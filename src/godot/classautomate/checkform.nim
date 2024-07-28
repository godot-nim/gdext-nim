import godotcore/GodotClass

import std/macros

import propertyinfo

const errmsgSelfTypeMismatch = "invalid form; In order to synchronize the function, the first argument must inherit from the class provided by godot."
const errmsgSignalResultTypeMismatch = "invalid form; to define signal, result must be type Error."

macro lineerror(msg: static string; expr) =
  error msg, expr

proc precheckIsCorrectClassMethod*(node: NimNode) =
  if node.kind notin {nnkProcDef, nnkFuncDef, nnkConverterDef, nnkMethodDef}:
    error "invalid form; only supports proc, func, converter and method.", node
  if node.params.len <= 1:
    error errmsgSelfTypeMismatch, node
  for pragma in node.pragma:
    if pragma.eqIdent "signal":
      if node.kind notin {nnkProcDef}:
        error "invalid form; to define signal, function must be proc.", node
      if node.params[0].kind == nnkEmpty or node.params[0].eqIdent "void":
        error errmsgSignalResultTypeMismatch, node

proc withCorrectClassMethodForm*(node, stmt: NimNode): NimNode =
  let arg0T = node.params[1][1]
  result = newNimNode nnkWhenStmt

  result.add nnkElifBranch.newTree(
    (quote do: `arg0T` isnot GodotClass),
    bindsym"lineerror".newcall(newlit errmsgSelfTypeMismatch, node.params[1])
  )
  for arg in node.params[2..^1]:
    let argT = arg[1]
    result.add nnkElifBranch.newTree(
      (quote do: `argT` isnot SomeProperty),
      bindsym"lineerror".newcall(newlit "invalid form; the type `" & argT.repr & "` is not supported for argument.", arg)
    )

  for pragma in node.pragma:
    if pragma.eqIdent "signal":
      var resT = node.params[0]
      result.add nnkElifBranch.newTree(
        (quote do: `resT` isnot Error),
        bindsym"lineerror".newcall(newlit errmsgSignalResultTypeMismatch, node.name)
      )

  result.add nnkElse.newTree(stmt)