import gdext/core/gdclass

import std/macros

import propertyinfo

const errmsgSelfTypeMismatch = "invalid form; In order to synchronize the function, the first argument must inherit from the class provided by gdext."

macro lineerror* (msg: static string; expr) =
  error msg, expr

proc withCorrectClassMethodForm*(node, stmt: NimNode): NimNode =
  let arg0T = node.params[1][1]
  result = newNimNode nnkWhenStmt

  if node.kind == nnkMethodDef:
    result.add nnkElifBranch.newTree(
      (quote do: `arg0T` isnot GodotClass),
      bindsym"lineerror".newcall(newlit errmsgSelfTypeMismatch, node.params[1])
    )

  for i, arg in node.params:
    if i == 0: continue
    let argT = arg[1]
    result.add nnkElifBranch.newTree(
      (quote do: `argT` isnot SomeProperty),
      bindsym"lineerror".newcall(newlit "invalid form; the type `" & argT.repr & "` is not supported for argument.", arg)
    )

  result.add nnkElse.newTree(stmt)