import std/strutils

type WordRopeScanningDefect* = object of CatchableError

type LowerString* = distinct string
proc `$`*(str: LowerString): string {.borrow.}
proc toLowerString*(str: string): LowerString = LowerString str.toLowerAscii
proc snake*(str: LowerString): string = string(str)
proc pascal*(str: LowerString): string = string(str).capitalizeAscii

type WordRope* = object
  words*: seq[LowerString]
  total*: int

proc scan*(s: string): WordRope =
  proc add(ss: var WordRope; word: HSlice[int, int]) =
    if word.a <= word.b:
      ss.words.add s[word].toLowerString
      ss.total += (word.b - word.a) + 1
  var
    word: HSlice[int, int]
    prev: int
    curr: int
  while curr < s.len:
    var continuous: bool
    case s[curr]
    of '0'..'9':
      continuous = s[word.a] in {'0'..'9', 'a'..'z', 'A'..'Z'}
    of 'a'..'z':
      continuous = s[word.a] in {'a'..'z', 'A'..'Z'}
    of 'A'..'Z':
      continuous =
        if curr.succ < s.len:
          s[prev] in {'A'..'Z'} and s[curr.succ] notin {'a'..'z'}
        else:
          s[prev] in {'A'..'Z'}
    of ' ':
      raise newException(WordRopeScanningDefect,
        "Failed to parse \"" & s & "\" since it contains SPC.")
    else:
      continuous = false
    if not continuous:
      word.b = pred curr
      result.add word
      while s[curr] == '_':
        inc curr
      word.a = curr

    prev = curr
    inc curr
  word.b = s.high
  result.add word


when isMainModule:
  import std/sequtils
  proc dump(rope: WordRope): string =
    rope.words.mapIt($it).join(" ")

  assert "abc_def_ghi"              .scan.dump == "abc def ghi"
  assert "AbcDefGhi"                .scan.dump == "abc def ghi"
  assert "Abc_Def_Ghi"              .scan.dump == "abc def ghi"
  assert "ABC_DEF_GHI"              .scan.dump == "abc def ghi"
  assert "ABC__DEF__GHI"            .scan.dump == "abc def ghi"
  assert "__ABC__DEF__GHI"          .scan.dump == "abc def ghi"
  assert "__1!Aa__@Bb2__Cc3#__d4$D" .scan.dump == "1 ! aa @ bb2 cc3 # d4 $ d"
  assert "__1!aA__@bB2__cC3#__D4$d" .scan.dump == "1 ! a a @ b b2 c c3 # d4 $ d"
  assert "1A1a1"                    .scan.dump == "1 a1a1"
  assert "Object.int128_t"          .scan.dump == "object . int128 t"
  assert "AESContext"               .scan.dump == "aes context"
  assert "AABB"                     .scan.dump == "aabb"