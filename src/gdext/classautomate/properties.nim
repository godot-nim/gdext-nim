import gdextcore/utils/macros

import contracts
import propertyinfo

import gdextcore/commandindex
import gdextcore/gdclass

macro sync_property*(T: typedesc): untyped =
  result = newStmtList()
  for idef in T.typeDef.recList:
    let info = gensym(nskLet, "info")
    let typ = idef[1]
    var nametag, gettertag, settertag: NimNode

    case idef[0].kind
    of nnkPragmaExpr:
      let pragma = idef[0][1]
      for expr in pragma:
        case expr.kind
        of nnkCall, nnkExprColonExpr:
          case $expr[0]
          of "name":
            nametag = expr[1]
          of "getter":
            gettertag = expr[1]
          of "setter":
            settertag = expr[1]
        else:
          discard
    else:
      discard


    if gettertag != nil or settertag != nil:
      let
        getter = genSym(nskLet, "getter")
        setter = genSym(nskLet, "setter")
        name =
          if nametag == nil: newLit repr idef[0].basename
          else: nametag
        getterdef =
          if gettertag == nil: quote do: (discard)
          else: quote do:
            let `getter` = stringname `gettertag`
        getterref =
          if gettertag == nil: quote do: nil
          else: quote do: addr `getter`
        setterdef =
          if settertag == nil: quote do: (discard)
          else: quote do:
            let `setter` = stringname `settertag`
        setterref =
          if settertag == nil: quote do: nil
          else: quote do: addr `setter`

      result.add quote do:
        process(`T`.contract.property, `name`):
          let `info`: ref PropertyInfoGlue = propertyInfo(typedesc `typ`, stringname `name`)
          # `set_hint`
          # `set_usage`
          `getterdef`
          `setterdef`
          interface_ClassDB_registerExtensionClassProperty(environment.library, addr className(typedesc `T`), native `info`, `setterref`, `getterref`)

# macro property*(Class: typedesc[SomeUserClass]; name: string; `type`: typedesc; body) =
#   var hint, usage: NimNode
#   var set_hint = nnkDiscardStmt.newTree(newEmptyNode())
#   var set_usage = nnkDiscardStmt.newTree(newEmptyNode())
#   for tag in body:
#     case tag.kind
#     of nnkCall:
#       case $tag[0]
#       of "hint": hint = tag[1]
#       of "usage": usage = tag[1]
#     else:
#       discard
#   if hint != nil:
#     set_hint = quote do:
#       `glue`.hint = `hint`
#   if usage != nil:
#     set_usage = quote do:
#       `glue`.usage = `usage`
