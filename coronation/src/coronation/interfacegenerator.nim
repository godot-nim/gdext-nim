import std/[sequtils, strutils, os]

import shellsophia/shell
import shellsophia/commands/c2nim

import submodules/[semanticstrings, wordropes, astutils]

import "$nim"/compiler/[ast, idents, lineinfos, renderer]

proc hasText(str: string): bool =
  if str.len == 0: return false
  for c in str:
    if c notin {' ', '\t'}:
      result = true

proc preprocess(str: string): string =
  for line in str.splitLines:
    if line.startsWith("#"):
      discard
    elif line.startsWith("//"):
      discard
    elif line.startsWith("extern"):
      discard
    elif line == "}":
      discard
    else:
      result.add line
      result.add "\n"
  result.remove("/*".."*/")
  result = result.splitLines.filter(hasText).join("\n").replace("const ", "")

proc format(ast: PNode): PNode =
  ast.map proc (ast: PNode): PNode =
    case ast.kind
    of nkConstSection:
      newNode(nkEmpty)
    of nkTypeDef:
      case ast[0].kind
      of nkPragmaExpr:
        ast[0][1].add nkExprColonExpr.newTree(
          ident"importc",
          newStrNode(nkStrLit, $ast[0][0][1])
        )
      else:
        ast[0] = nkPragmaExpr.newTree(
          ast[0],
          nkPragma.newTree(
            nkExprColonExpr.newTree(
              ident"importc",
              newStrNode(nkStrLit, $ast[0][1])
            )
          )
        )
      let name = ast[0][0][1]
      let pragma = ast[0][1]
      case ast[2].kind
      of nkEnumTy:

        if name.ident.s in ["GDExtensionClassMethodFlags"]:
          for field in ast[2].sons[1..^1]:
            field[1].intval = field[1].intval.toInt128.fastLog2()
          ast

        elif name.ident.s in ["GDExtensionVariantOperator"]:
          newNode(nkEmpty)

        else:
          ast

      of nkIdent:
        if name.ident.s in ["GDExtensionObjectPtr"]:
          ast[2] = nkDistinctTy.newTree(ident"pointer")
        if name.ident.s in ["GDExtensionConstObjectPtr"]:
          ast[2] = ident"GDExtensionObjectPtr"
        if name.ident.s == "GDExtensionBool":
          ast[2] = ident"bool"
        ast

      of nkProcTy:
        if (not name.ident.s.startsWith"GDExtensionInterface" and
            not name.ident.s.startsWith"GDExtensionPtr"):
          for arg in ast[2][0].sons[1..^1]:
            if arg[0].kind == nkIdent and arg[0].ident.s in ["p_args", "p_list"]:
              arg[1][0] = nkBracketExpr.newTree(ident"UncheckedArray", arg[1][0])
        ast

      of nkObjectTy:
        pragma[0] = ident"byref"
        ast

      else:
        ast

    of nkEnumTy:
      var inode: PNode =
        case ast.sons[^1].kind
        of nkIdent:
          ast.sons[^1]
        of nkEnumFieldDef:
          ast.sons[^1][0]
        else: nil
      if inode != nil:
        if (inode.ident.s.startsWith("GDEXTENSION_MAX_") or
            inode.ident.s.endsWith("_MAX")):
          ast.sons.del(ast.sons.high)
      ast

    of nkProcTy:
      ast[1] = nkPragma.newTree(
        ident"gdcall",
      )
      ast

    of nkIdent, nkAccQuoted:
      if $ast in ["*"]:
        ast
      else:
        ident ($ast)
          .multiReplace(
            ("GDEXTENSION_", ""),
            ("GDExtensions", ""),
            ("GDExtension", ""),
            ("gdextension_", ""),
            ("`", ""),
          )
          .escapeVariable
    else:
      ast


proc makeApiVariable(typeName: PNode): PNode =
  nkIdentDefs.newTree(
    nkPostfix.newTree(
      ident"*",
      ident $typeName.ident.s.scan.convert(VariableSym),
    ),
    typeName,
    newNode(nkEmpty)
  )

proc makeApiVariables(ast: PNode): PNode =
  result = newNode(nkVarSection)
  for typedef in ast.collect(nkTypeDef):
    let name = typedef[0].findName()
    if (typedef[2].kind == nkProcTy and name.ident.s.startsWith"Interface" and
        name.ident.s notin ["InterfaceFunctionPtr", "InterfaceGetProcAddress"]):
      result.add makeApiVariable(name)

proc toKeyName(typename: string): string =
  result = $typeName
    .multiReplace(
      ("Interface", ""),
      ("PlaceHolder", "Placeholder"),
      ("UserData", "Userdata"),
      ).scan.convert(SnakeCase)
  result = case result
  of "get_variant_get_internal_ptr_func":
    "variant_get_ptr_internal_getter"
  else:
    result

proc asignApiVariable(typeName: PNode): PNode =
  nkAsgn.newTree(
    ident $typeName.ident.s.scan.convert(VariableSym),
    nkcast.newTree(
      typeName,
      nkCall.newTree(
        ident"getProcAddress",
        nkCall.newTree(
          ident"cstring",
          newStrNode(nkStrLit, typeName.ident.s.toKeyName)
        )
      )
    )
  )

proc makeApiLoader(ast: PNode): PNode =
  var body = newNode(nkStmtList)
  result = newProcNode(
    kind = nkProcDef,
    info = TLineInfo(),
    body = body,
    params = nkFormalParams.newTree(
      newNode(nkEmpty),
      nkIdentDefs.newTree(
        ident"getProcAddress",
        ident"InterfaceGetProcAddress",
        newNode(nkEmpty)
      ),
    ),
    name = ident"loadApi",
    pattern = newNode(nkEmpty),
    genericParams = newNode(nkEmpty),
    pragmas = newNode(nkEmpty),
    exceptions = newNode(nkEmpty),
    )
  for typedef in ast.collect(nkTypeDef):
    let name = typedef[0].findName()
    if (typedef[2].kind == nkProcTy and name.ident.s.startsWith"Interface" and
        name.ident.s notin ["InterfaceFunctionPtr", "InterfaceGetProcAddress"]):
      body.add asignApiVariable(name)

var ifce: PNode
proc postprocess(ast: PNode): PNode =
  result = ast
    .margeSection(nkTypeSection)
    .format()
  ifce = result


proc generateInterface*(header: string; outdir: string) =
  createDir outdir
  let path = outdir/"gdextension_interface.h"
  path.writeFile header.preprocess

  discard cd"."
    .c2nim(C2NimArgs(
      `in`: @[path],
      `out`: outdir/"gdextensioninterface.nim",
      postprocess: postprocess,
      skipcomments: true,
    ))

  (outdir/"gdextensioninterfaceapi.nim").writeFile $nkStmtList.newTree(
    ifce.makeApiVariables(),
    ifce.makeApiLoader(),
  )

when isMainModule:
  generateInterface(readFile("gdextension_interface.h"), "gdextensioninterface.nim")
