import std/[strutils, os]

import shellsophia/shell
import shellsophia/commands/c2nim

import submodules/[semanticstrings, wordropes]

import "$nim"/compiler/[ast, idents, lineinfos, renderer]


proc remove(content: var string; ranges: varargs[HSlice[string, string]]) =
  for range in ranges:
    while true:
      var s, e: int
      s = content.find(range.a)
      if s >= 0:
        e = content.find(range.b, s.succ)
        if e >= 0:
          content = content[0..<s] & content[e+range.b.len..^1]
      else:
        break


proc ident*(name: string): PNode = newIdentNode(PIdent(s: name), TLineInfo())

proc map*(ast: PNode; pred: proc(ast: Pnode): Pnode;
    applySelf: bool = true): Pnode =
  if applySelf:
    result = pred(ast)
  else:
    result = ast
  if not result.isAtom:
    for node in result.sons.mitems:
      node = pred(node).map(pred, false)

proc margeSection*(ast: PNode; sectionKind: TNodeKind): PNode {.discardable.} =
  assert ast.kind == nkStmtList
  var section: PNode
  var willDelete: seq[int]
  for i, stmt in ast:
    if stmt.kind == sectionKind:
      if section == nil:
        section = stmt
      else:
        willDelete.add i
        section.sons.add stmt.sons
  for i in countdown(ast.sons.high, 0):
    if i in willDelete:
      ast.delSon(i)
  result = ast

proc preprocess(str: string): string =
  for line in str.splitLines:
    if line.startsWith("#"):
      discard
    elif line.startsWith("extern"):
      discard
    elif line == "}":
      discard
    else:
      result.add line
      result.add "\n"
  result.remove("/*".."*/\n")

proc postprocess(ast: PNode): PNode =
  result = ast
    .margeSection(nkTypeSection)
    .map(proc (ast: PNode): PNode =
      case ast.kind
      of nkConstSection:
        newNode(nkEmpty)
      of nkTypeDef:
        case ast[2].kind
        of nkEnumTy:

          if ast[0][1].ident.s in ["GDExtensionClassMethodFlags"]:
            for field in ast[2].sons[1..^1]:
              field[1].intval = field[1].intval.toInt128.fastLog2()
            # ast[2].add nkEnumFieldDef.newTree(
            #   ident"`--PADDING_MAX--`", newIntNode(nkIntLit, 31)
            # )
            ast

          elif ast[0][1].ident.s in ["GDExtensionVariantType"]:
            ast[0] = nkPragmaExpr.newTree(
              ast[0],
              nkPragma.newTree(
                nkExprColonExpr.newTree(ident"size", nkDotExpr.newTree(ident"EnumSize", ident"default"))
              )
            )
            ast

          elif ast[0][1].ident.s in ["GDExtensionVariantOperator"]:
            newNode(nkEmpty)

          else:
            ast

        of nkIdent:
          if ast[0][1].ident.s == "GDExtensionObjectPtr":
            ast[2] = nkPtrTy.newTree(ident"GodotInternalObject")
          if ast[0][1].ident.s == "GDExtensionBool":
            ast[2] = ident"bool"
          ast

        of nkProcTy:
          if (not ast[0][1].ident.s.startsWith"GDExtensionInterface" and
              not ast[0][1].ident.s.startsWith"GDExtensionPtr"):
            for arg in ast[2][0].sons[1..^1]:
              if arg[0].kind == nkIdent and arg[0].ident.s in ["p_args", "p_list"]:
                arg[1][0] = nkBracketExpr.newTree(ident"UncheckedArray", arg[1][0])
          ast

        of nkObjectTy:
          ast[0][1][0] = ident"byref"
          ast

        else:
          ast

      of nkEnumTy:
        if ast.sons[^1].kind == nkIdent and (
          ast.sons[^1].ident.s.startsWith("GDEXTENSION_MAX_") or
          ast.sons[^1].ident.s.endsWith("_MAX")):
          ast.sons.setLen(ast.sons.len - 1)
        ast

      of nkProcTy:
        ast[1] = nkPragma.newTree(
          ident"gdcall",
          nkExprColonExpr.newTree(ident"raises", nkBracket.newNode),
        )
        ast

      of nkIdent, nkAccQuoted:
        if $ast in ["*"]:
          ast
        else:
          let s = ($ast)
            .multiReplace(
              ("GDEXTENSION_", ""),
              ("GDExtensions", ""),
              ("GDExtension", ""),
              ("gdextension_", ""),
              ("`", ""),
            )
          if ($ast).replace("`", "")[0].isUpperAscii:
            ident $s.scan.convert(TypeSym)
          else:
            ident $s.scan.convert(VariableSym)

      else:
        ast
    )

proc generateInterface*(header: string; outpath: string) =
  let path = "gdextension_interface_tmp.h"
  defer: removeFile path

  path.writeFile header.preprocess

  discard cd"."
    .c2nim(C2NimArgs(
      `in`: @[path],
      `out`: outpath,
      postprocess: postprocess,
      skipcomments: true,
    ))
