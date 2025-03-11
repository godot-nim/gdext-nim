import gdext/private/macros

func makeKey(section: NimNode; component: Nimnode; N: int): NimNode =
  result = newBracket()
  case component.typeKind
  of ntyArray, ntyGenericInst:
    case component.kind
    of nnkBracket:
      result.add component[0..^1]
    of nnkSym:
      for i in 0..<N:
        result.add newBracketExpr(component, newlit i)
    else:
      let alias = section.assigned component
      for i in 0..<N:
        result.add newBracketExpr(alias, newlit i)
  else:
    for i in 0..<N:
      result.add component

macro extend_internal[T](value: T; N: static int): auto =
  result = newBracket()
  for i in 0..<N:
    result.add value

proc extend*[T](value: T; N: static int): array[N,T] =
  extend_internal(value, length)

macro fmap*[N: static int; T]( pred;
      v1: array[N,T];
    ): auto =
  let section = newLetSection()
  let a1 = section.makekey(v1, N)
  result = newBracket()
  for i in 0..<N:
    result.add pred.newcall(a1[i])
  result = newStmtList(section, result)

macro fmap*[N: static int; T1, T2]( pred;
      v1: array[N,T1] | T1;
      v2: array[N,T2] | T2;
    ): auto =
  let section = newLetSection()
  let a1 = section.makekey(v1, N)
  let a2 = section.makekey(v2, N)
  result = newBracket()
  for i in 0..<N:
    result.add pred.newcall(a1[i], a2[i])
  result = newStmtList(section, result)

macro fmap*[N: static int; T1, T2, T3]( pred;
      v1: array[N,T1] | T1;
      v2: array[N,T2] | T2;
      v3: array[N,T3] | T3;
    ): auto =
  let section = newLetSection()
  let a1 = section.makekey(v1, N)
  let a2 = section.makekey(v2, N)
  let a3 = section.makekey(v3, N)
  result = newBracket()
  for i in 0..<N:
    result.add pred.newcall(a1[i], a2[i], a3[i])
  result = newStmtList(section, result)


iterator couple[N: static int; T1, T2](v1: array[N, T1]; v2: array[N, T2]): (T1, T2) =
  for i in 0..<N:
    yield (v1[i], v2[i])
iterator couple[N: static int; T1, T2](v1: array[N, T1]; x2: T2): (T1, T2) =
  for i in 0..<N:
    yield (v1[i], x2)
iterator couple[N: static int; T1, T2](x1: T1; v2: array[N, T2]): (T1, T2) =
  for i in 0..<N:
    yield (x1, v2[i])

template all*[N: static int; T]( pred;
      v: array[N, T];
    ): bool =
  var result = true
  for x in v:
    if not pred(x):
      result = false
      break
  result
template all*[N: static int; T1, T2]( pred;
      v1: array[N, T1] | T1;
      v2: array[N, T2] | T2;
    ): bool =
  var result = true
  for x1, x2 in couple(v1, v2):
    if not pred(x1, x2):
      result = false
      break
  result

template any*[N: static int; T]( pred;
      v: array[N, T];
    ): bool =
  var result = false
  for x in v:
    if pred(x):
      result = true
      break
  result
template any*[N: static int; T1, T2]( pred;
      v1: array[N, T1] | T1;
      v2: array[N, T2] | T2;
    ): bool =
  var result = false
  for x1, x2 in couple(v1, v2):
    if pred(x1, x2):
      result = true
      break
  result
