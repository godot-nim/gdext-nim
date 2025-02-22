import std/macros
export macros

macro lineerror* (msg: static string; expr) =
  error msg, expr

iterator breakArgs*(node: NimNode): tuple[index: int; def: tuple[name, Type, default: NimNode]] =
  node.expectKind nnkFormalParams
  var index: int
  for defs in node[1..^1]:
    for id in defs[0..^3]:
      yield (index, (id, defs[^2], defs[^1]))
      inc index

func hasNoReturn*(node: NimNode): bool =
  node.expectKind RoutineNodes
  node.params[0].kind == nnkEmpty or node.params[0].eqIdent("void")

func hasReturn*(node: NimNode): bool =
  not node.hasNoReturn

func typeDef*(typ: NimNode): NimNode =
  case typ.typeKind
  of ntyTypeDesc:
    let typ = typ.getTypeInst[1]
    case typ.kind
    of nnkBracketExpr:
      typ[0].getImpl
    else:
      typ.getImpl
  of ntyGenericInst:
    typ[0].getImpl
  else:
    error lisprepr typ, typ
    nil

func objectTy*(node: NimNode): NimNode =
  case node.kind
  of nnkTypeDef:
    node[2].objectTy
  of nnkRefTy, nnkPtrTy:
    node[0]
  of nnkObjectTy:
    node
  else:
    error lisprepr node, node
    nil

func ofInherit*(node: NimNode): NimNode =
  case node.kind
  of nnkObjectTy:
    node[1]
  of nnkOfInherit:
    node
  else:
    error lisprepr node, node
    nil

func typeSym*(node: NimNode): NimNode =
  case node.kind
  of nnkTypeDef:
    node[0].typeSym
  of nnkPragmaExpr:
    node[0].typeSym
  of nnkOfInherit:
    node[0]
  of nnkSym:
    node
  of nnkPostfix:
    if node[0].eqIdent "*":
      node[1]
    else:
      error lisprepr node, node
      nil
  else:
    error lisprepr node, node
    nil

func recList*(node: NimNode): NimNode =
  case node.kind
  of nnkObjectTy:
    node[2]
  of nnkBracketExpr, nnkSym:
    node.typeDef.recList
  else:
    node.objectTy.recList

func identifier*(node: NimNode): NimNode =
  case node.kind
  of nnkIdent:
    node
  of nnkSym:
    newIdentNode($node)
  of nnkIdentDefs, nnkPragma, nnkPragmaExpr, nnkCall, nnkExprColonExpr, nnkTemplateDef:
    node[0].identifier
  of nnkPostfix:
    node[1].identifier
  else:
    error lisprepr node, node
    nil

func pragmas*(node: NimNode): seq[NimNode] =
  if node.isNil: return
  case node.kind
  of nnkPragma:
    node[0..^1]
  of nnkEmpty:
    @[]
  of nnkProcTy, nnkIteratorTy, RoutineNodes:
    node.pragma.pragmas
  of nnkPragmaExpr:
    node[1].pragmas
  of nnkIdentDefs, nnkTypeDef:
    if node[0].kind == nnkPragmaExpr:
      node[0].pragmas
    else: @[]
  of nnkSym:
    node.getImpl.pragmas
  else:
    hint lisprepr node
    @[]

proc args*(node: NimNode): seq[NimNode] =
  case node.kind
  of nnkSym, nnkIdent:
    result
  of nnkCall, nnkExprColonExpr:
    var sq: seq[NimNode] = @[]
    for arg in node:
      case arg.kind:
      of nnkLiterals, nnkBracket:
        sq.add arg
      else:
        discard
    sq
  of nnkPragma:
    node[0].args
  else:
    result

func isVarargs*(node: NimNode): bool =
  case node.kind
  of nnkBracketExpr:
    node[0].eqIdent "varargs"
  else:
    false

proc super*(typedes: NimNode): NimNode = typedes.typeDef.objectTy.ofInherit.typeSym

proc getPragmaVal*(node: NimNode; key: string): NimNode =
  for expr in node.pragmas:
    case expr.kind
    of nnkExprColonExpr, nnkCall, nnkCallStrLit:
      if expr[0].eqIdent key:
        return expr[1]
    else: discard

proc hasPragma*(node: NimNode; key: string): bool =
  for expr in node.pragmas:
    case expr.kind
    of nnkIdent, nnkSym:
      if expr.eqIdent key:
        return true
    of nnkExprColonExpr, nnkCall, nnkCallStrLit:
      if expr[0].eqIdent key:
        return true
    else: discard

proc newBracket*(elems: varargs[NimNode]): NimNode =
  nnkBracket.newTree elems

proc newBracketExpr*(elems: varargs[NimNode]): NimNode =
  nnkBracketExpr.newTree elems

proc newLetSection*(elems: varargs[NimNode]): NimNode =
  nnkLetSection.newTree elems

proc newElifBranch*(predicate, body: NimNode): NimNode =
  nnkElifBranch.newTree(predicate, body)

proc newElse*(body: NimNode): NimNode =
  nnkElse.newTree(body)

proc newObjConstr*(obj: NimNode; members: varargs[NimNode]): NimNode =
  nnkObjConstr.newTree(obj).add(members)

proc newFormalParams*(ret: NimNode = newEmptyNode(); args: varargs[NimNode]): NimNode =
  nnkFormalParams.newTree(ret).add(args)

proc newDiscardStmt*(sentence: NimNode = newEmptyNode()): NimNode =
  nnkDiscardStmt.newTree sentence
