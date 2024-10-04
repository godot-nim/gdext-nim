import cloths

import std/strutils
import std/tables
import std/sets
import std/hashes
import std/os
import std/macros

proc hash[T](x: ref[T]): Hash {.inline.} =
  hash(cast[pointer](x))

type
  VirtualNode* = ref object of RootObj
    pParent: VirtualNode
    subitems*: Table[string, VirtualNode]

proc parent*(node: VirtualNode): VirtualNode {.inline.} =
  if unlikely(node.isNil): nil
  else:
    node.pParent

method name*(item: VirtualNode): string {.base.} = discard

template place(directory: VirtualNode; args: varargs[untyped]): untyped = args

proc place*(node: VirtualNode; subitems: varargs[VirtualNode]) =
  for subitem in subitems:
    subitem.pParent = node
    node.subitems[subitem.name] = subitem

proc layout_impl(node, body: NimNode; chain: bool): NimNode

macro layout*[T: VirtualNode](node: T; body): T =
  result = layout_impl(node, body, true)

macro layout_internal[T: VirtualNode](node: T; body) =
  layout_impl(node, body, false)

template expand_variable(node: VirtualNode; variable: varargs[untyped]) = (discard)
template expand_variable(node: VirtualNode; variable: VirtualNode) =
  node.place variable

proc layout_impl(node, body: NimNode; chain: bool): NimNode =
  let layout_internal = bindsym"layout_internal"
  let place = bindsym"place"
  let expand_variable = bindsym"expand_variable"
  let nodesym = gensym(nskLet, "node")

  result = newNimNode(if chain: nnkStmtListExpr else: nnkStmtList)
  result.add quote do:
    let `nodesym` = `node`

  for stmt in body:
    case stmt.kind
    of nnkLetSection, nnkVarSection:
      result.add stmt
      for id in stmt:
        result.add expand_variable.newCall(nodesym, id[0].basename)
    of nnkForStmt:
      stmt[^1] = layout_internal.newCall(nodesym, stmt[^1])
      result.add stmt
    of nnkIfStmt:
      for branch in stmt:
        branch[^1] = layout_internal.newCall(nodesym, branch[^1])
      result.add stmt
    else:
      result.add place.newCall(nodesym, stmt)
  if chain:
    result.add nodesym

proc rootNode*(node: VirtualNode): VirtualNode =
  if node.pParent == nil: node
  else: node.pParent.rootNode

proc absolutePath*(node: VirtualNode): string =
  if node.pParent == nil: return node.name
  absolutePath(node.pParent)/node.name

proc relativePath*(dst: VirtualNode; src: VirtualNode): string =
  if dst.rootNode != src.rootNode: return dst.absolutePath
  result = "."/relativePath(dst.absolutePath, src.absolutePath)

template path*(node: VirtualNode): string = node.absolutePath

proc `/`*(node: VirtualNode; path: string): VirtualNode =
  let pathtokens = path.normalizedPath.split("/")
  result = node
  for path in pathtokens:
    case path
    of ".": discard
    of "..": result = result.pParent
    else:
      result = result.subitems[path]

method generate*(node: VirtualNode) {.base.} = discard
method dumpTree*(node: VirtualNode): Cloth {.base.} = discard
