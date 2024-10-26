import std/macros, std/genasts

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

func makeVec(components: seq[NimNode]): tuple[lets: seq[NimNode]; brackets: seq[NimNode]] =
  for i, e in components:
    case e.typeKind
    of ntyArray:
      let high = e.getTypeImpl[1][2].intVal
      case e.kind
      of nnkCallKinds:
        let alias = ident("arg" & $i)
        result.lets.add quote do:
          let `alias` {.genSym.} = `e`
        for i in 0..high:
          let inode = newLit i
          result.brackets.add quote do:
            `alias`[`inode`]
      of nnkBracket:
        for i in 0..high:
          result.brackets.add e[i]
      else:
        for i in 0..high:
          let inode = newLit i
          result.brackets.add quote do:
            `e`[`inode`]
    else:
      result.brackets.add e

macro vec*(exp: varargs[typed]): untyped =
  ## proc gen: auto = vec(1, 2)
  ## ==========================
  ## vec(1, 2, 3) -> [1, 2, 3]
  ## vec(1, 2) -> [1, 2]
  ## vec([1, 2], 3) -> [1, 2, 3]
  ## (let x = [1, 2]; vec(x, 3)) -> [x[0], x[1], 3]
  ## vec(vec(1, 2), 3) -> [1, 2, 3]
  ## vec(gen(), 3) -> (let arg0 = gen(); [arg0[0], arg0[1], 3])
  let res = makeVec(exp[0..^1])
  result = newStmtList()
  result.add res.lets
  result.add nnkBracket.newTree res.brackets