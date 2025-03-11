import std/genasts

import gdext/private/macros

type
  Vector*[N: static int; T] = array[N, T]
  NVector*[N: static int; T: SomeFloat] = distinct Vector[N, T]
  Radian*[T: SomeFloat] = distinct T

type
  Radian32* = Radian[float32]
  Radian64* = Radian[float64]

macro genVecFieldAccess(): untyped =
  const fields = ["x", "y", "z", "w"]
  result = newStmtList()
  let # this makes the generated code look nicer
    vector = ident("vector")
    value = ident("value")
  for size in 2..4:
    for fidx, fkey in fields.pairs:
      if fidx >= size: break
      let field = ident(fkey)
      result.add genAst(size, fidx, field, vector, value) do:
        template `field`*[T](vector: array[size, T]): T = vector[fidx]
        template `field=`*[T](vector: var array[size, T], value: T) = vector[fidx] = value
genVecFieldAccess()

proc asNormalized*[N: static int; T: SomeFloat](vec: Vector[N,T]): NVector[N,T] {.inline.} = NVector[N,T](vec)

func makeVec(letSection: NimNode; components: seq[NimNode]): NimNode =
  result = newBracket()
  for i, e in components:
    case e.typeKind
    of ntyArray:
      case e.kind
      of nnkBracket:
        result.add e[0..^1]
      else:
        let alias = letSection.assigned e
        let high = e.getTypeImpl[1][2].intVal
        for i in 0..high:
          result.add nnkBracketExpr.newTree(alias, newlit i)
    else:
      result.add e
func makeVec(letSection: NimNode; typecast: typedesc; components: seq[NimNode]): NimNode =
  result = letSection.makeVec(components)
  let typ = typecast.getType
  for i in 0..<result.len:
    result[i] = typ.newcall result[i]

macro vec*(exp: varargs[typed]): Vector =
  ## proc gen: auto = vec(1, 2)
  ## ==========================
  ## vec(1, 2, 3) -> [1, 2, 3]
  ## vec(1, 2) -> [1, 2]
  ## vec([1, 2], 3) -> [1, 2, 3]
  ## (let x = [1, 2]; vec(x, 3)) -> [x[0], x[1], 3]
  ## vec(vec(1, 2), 3) -> [1, 2, 3]
  ## vec(gen(), 3) -> (let arg0 = gen(); [arg0[0], arg0[1], 3])
  let letSection = newLetSection()
  result = newStmtList(
    letSection,
    letSection.makeVec(exp[0..^1]))
