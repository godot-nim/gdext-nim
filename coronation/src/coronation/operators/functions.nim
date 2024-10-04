import cloths

import submodules/semanticstrings

import ./arguments

import utils

import std/options
import std/strformat
import std/strutils

type
  ProcKind* = enum
    pkProc = "proc"
    pkFunc = "func"
    pkMethod = "method"
    pkConverter = "converter"
    pkTemplate = "template"
    pkMacro = "macro"
  ProcKey* = ref object of RootObj
    kind*: ProcKind = pkProc
    name*: ProcSym
    exportme*: bool = true
    self*: RenderableSelfArgument
    args*: seq[RenderableArgument]
    result*: RenderableResult
    pragmas*: Pragmas
  GodotProc* = ref object of ProcKey
    native_name*: string
    hash*: Option[int]

proc weave*(procKey: ProcKey): Cloth =
  var head = &"{procKey.kind} {procKey.name}"
  if procKey.exportme:
    head &= "*"
  head &= "("
  head.add:
    `$`: weave Join(delim: "; "):
      if procKey.self != nil:
        weave procKey.self
      for arg in procKey.args:
        weave arg
  head &= "): " & $weave procKey.result

  if procKey.pragmas.list.len != 0:
    head &= " " & $procKey.pragmas

  head &= " ="
  result = clothfy head

proc gen_containerKey*(prockey: ProcKey): ContainerKey =
  ## FORMAT: `PROCNAME(ARGTYPE,...)`
  ## ARGS will be expanded only when the SELFTYPE is none
  var text: string
  var args: seq[string]
  if prockey.self != nil:
    args.add $prockey.self.typesym
  for arg in prockey.args:
    if arg.typesym notin [TypeSym.Void]:
      args.add $arg.typesym

  text.add ($prockey.name).replace("`", "")
  text.add "("
  text.add args.join(" ")
  text.add ")"
  ContainerKey "`" & text & "`"
