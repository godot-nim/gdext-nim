import std/macros
export macros

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

proc hasReturn*(node: NimNode): bool =
  not node.hasNoReturn

proc typeDef*(typ: NimNode): NimNode =
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
    nil


proc recList*(typedef: NimNode): NimNode =
  let predicate = typedef[2]
  case predicate.kind
  of nnkRefTy:
    predicate[0][2]
  of nnkObjectTy:
    predicate[2]
  of nnkBracketExpr:
    predicate.typeDef.recList
  else:
    nil
