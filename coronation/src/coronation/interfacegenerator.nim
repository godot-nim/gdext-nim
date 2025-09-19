import std/[strutils, os]

import shellsophia/shell
import shellsophia/commands/c2nim

import submodules/[semanticstrings, wordropes, astutils]

import "$nim"/compiler/[ast, idents, lineinfos, renderer]

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

proc format(ast: PNode): PNode =
  ast.map proc (ast: PNode): PNode =
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

proc addApiVariables(ast: PNode): PNode =
  ast.add makeApiVariables(ast)
  ast

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

proc addApiLoader(ast: PNode): PNode =
  ast.add makeApiLoader(ast)
  ast

proc postprocess(ast: PNode): PNode =
  result = ast
    .margeSection(nkTypeSection)
    .format()
    .addApiVariables()
    .addApiLoader()


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

when isMainModule:
  generateInterface(readFile("gdextension_interface.h"), "gdextensioninterface.nim")
