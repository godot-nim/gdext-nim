import std/parseopt

proc reverseOpt*(p: var OptParser): string =
  case p.kind
  of cmdLongOption:
    if p.val.len == 0:
      "--" & p.key
    else:
      "--" & p.key & ":" & p.val
  of cmdShortOption:
    if p.val.len == 0:
      "-" & p.key
    else:
      "-" & p.key & ":" & p.val
  of cmdArgument:
    p.key
  of cmdEnd:
    ""