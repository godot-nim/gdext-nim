import submodules/wordropes

import std/hashes
import std/strutils
import std/sequtils

template gensem(name): untyped =
  type name* = distinct string
  proc `$`*(a: name): string {.borrow.}
  proc `==`*(a, b: name): bool {.borrow.}
  proc hash*(a: name): Hash {.borrow.}

gensem VariableSym
gensem TypeSym
gensem ProcSym
gensem NormalizedProcSym
gensem VariantType
gensem ContainerKey
gensem ModuleSym

proc dropQuote*(sym: ProcSym): string = ($sym).replace("`", "")

proc typefy*(sym: VariableSym): TypeSym =
  TypeSym capitalizeAscii string sym

proc variablefy*(sym: TypeSym): VariableSym =
  VariableSym (string sym)[0].toLowerAscii & (string sym)[1..^1]

template Void*(_: typedesc[TypeSym]): TypeSym = TypeSym"void"
template Variant*(_: typedesc[TypeSym]): TypeSym = TypeSym"Variant"
template RootObj*(_: typedesc[TypeSym]): TypeSym = TypeSym"RootObj"
template Object*(_: typedesc[TypeSym]): TypeSym = TypeSym"Object"
template RefCounted*(_: typedesc[TypeSym]): TypeSym = TypeSym"RefCounted"

func variantType*(typesym: TypeSym): VariantType =
  VariantType:
    if typesym in [TypeSym.Variant, TypeSym.Void]:
      "VariantType_Nil"
    elif typesym in [TypeSym.Object]:
      "VariantType_Object"
    else:
      "VariantType_" & $typesym

proc erase(str: string; target: string): string {.inline.} = str.replace(target, "")
proc quoted*(w: string): string = "`" & w.erase("`") & "`"

const keywords* = [
  "addr", "and", "as", "asm", "bind", "block", "break", "case", "cast", "concept",
  "const", "continue", "converter", "defer", "discard", "distinct", "div", "do",
  "elif", "else", "end", "enum", "except", "export", "finally", "for", "from",
  "func", "if", "import", "in", "include", "interface", "is", "isnot", "iterator",
  "let", "macro", "method", "mixin", "mod", "nil", "not", "notin", "object", "of",
  "or", "out", "proc", "ptr", "raise", "ref", "return", "shl", "shr", "static",
  "template", "try", "tuple", "type", "using", "var", "when", "while", "xor", "yield",
]
proc escapeVariable*(w: string): string =
  if w in keywords:
    result = quoted w
  else:
    result = w
    for c in w:
      if c notin 'a'..'z' and c notin 'A'..'Z' and c notin '0'..'9':
        result = quoted w
        break

proc typeConv(str: string): string =
  case str
  of "Bool": "bool"
  of "int": "Int"
  of "float": "Float"
  of "Void": "void"
  of "Pointer": "pointer"
  of "Int8", "Int16", "Int32", "Int64": str.replace("Int", "int")
  of "Uint8", "Uint16", "Uint32", "Uint64": str.replace("Uint", "uint")
  of "Float32", "Float64": str.replace("Float", "float")
  of "Thread": "GodotThread" # will conflicts to system.Thread
  else: str
proc convert*(s: string; _: typedesc[TypeSym]): TypeSym =
  TypeSym s
    .multiReplace(("_t", ""), ("double", "float64"))
    .split(".")
    .mapIt(it.typeConv)
    .join("_")

proc convert*(ss: WordRope; _: typedesc[VariableSym]): VariableSym =
  var str = newStringOfCap(ss.total)
  for i, w in ss.words:
    str.add:
      if i == 0: w.snake
      else:      w.pascal
  VariableSym escapeVariable str

proc convert*(ss: WordRope; _: typedesc[ProcSym]): ProcSym =
  var str = newStringOfCap(ss.total)
  let words =
  #   if ss.words[0].string == "set" and ss.words.len > 1: concat(ss.words[1..^1], @[LowerString"="])
  #   else: ss.words
    ss.words
  for i, w in words:
    str.add:
      if i == 0: w.snake
      else:      w.pascal
  ProcSym escapeVariable str
proc convert*(ss: WordRope; _: typedesc[NormalizedProcSym]): NormalizedProcSym =
  var str = ss.words.join("")
  NormalizedProcSym escapeVariable str

proc convert*(typesym: TypeSym; _: typedesc[ModuleSym]): ModuleSym =
  ModuleSym "gd" & ($typesym).toLowerAscii

when isMainModule:
  echo scan("set_getter").convert(ProcSym)
  echo repr scan("Object.int64_t")
  echo "Object.int64_t".convert(TypeSym)