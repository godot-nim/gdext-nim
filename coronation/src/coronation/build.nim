import cloths

import config

import types/json

import submodules/filesystem/sdk
import submodules/filesystem/[
  ProjectRoot,
  Directory,
  NimSource,
  Textfile,
]
import submodules/semanticstrings

import operators/enums
import operators/structs
import operators/constants
import operators/utilityfuncs
import operators/builtinclasses/constructors
import operators/builtinclasses/subscripts
import operators/builtinclasses/operators
import operators/builtinclasses/methods
import operators/classindex
import operators/classes/methods
import operators/classes/properties
import operators/classes/vmap
import operators/classes/signals

import std/sequtils
import std/strformat
import std/options
import std/tables
import std/os

proc version*(header: JsonHeader): string =
  &"{header.version_major}.{header.version_minor}.{header.version_patch}"

proc moduleSym(builtin: JsonBuiltinClass): ModuleSym =
  builtin.name.convert(TypeSym).convert(ModuleSym)
proc moduleSym(builtin: JsonBuiltinClass; suffix: string): ModuleSym =
  ModuleSym $builtin.moduleSym & suffix
proc nim(moduleName: ModuleSym): NimSource = nim($moduleName)

discard layout root "gdext/coronation":
  layout dir "header":
    let corona_classes = dummy "classes".nim


proc project(config: BuildConfig; api: JsonAPI): ProjectRoot =
  # Note: What does this section do?
  # these are macros:
  #   `generate`: see filesystem/sdk
  #   `layout`: see filesystem/sdk
  #   `weave *.nim`: see filesystem/NimSource
  #   other `weave`: see cloths(external library)/sdk
  # Make virtual file/directory with `dir`, `nim`, `nims` and `.nimble`.
  # Define hierarchy structure of these with `layout`.
  # Describe file contents with `weave`.
  # Apply above definitions physical with `generate`.
  layout (config.outdir/config.package).root:
    let gen = layout "gen".dir:
      weave textfile "README.md":
        weave margin:
          "# gdext/gen"
          "This directory will contain automatically generated files that do not need to be imported manually by the user."
          "Newly created/modified files in this directory are cleared each time `nimble generate` is run."
          "Manual editing of this directory is therefore not recommended."

      # [Global Enums]
      let globalenums = weave "globalenums".nim:
        weave margin:
          for globalenum in api.global_enums:
            if globalenum.name == "Variant.Type": continue
            weave with_registerDB globalenum.convert

      # [Local Enums]
      let localenums = weave "localenums".nim:
        weave margin:
          for builtin in api.builtin_classes:
            let sym = builtin.name.convert(TypeSym)
            for localenum in builtin.enums.get(@[]):
              weave with_registerDB localenum.convert(sym)
          for class in api.classes:
            let sym = class.name.convert(TypeSym)
            for localenum in class.enums.get(@[]):
              weave with_registerDB localenum.convert(sym)

      # [Native Structures]
      weave "structs".nim:
        weave margin:
          for struct in api.native_structures:
            weave struct.convert

      # [Utility Functions]
      weave "utilityfuncs".nim:
        let utilfuncs = api.utility_functions.mapIt(convert it)
        weave margin:
          weave multiline:
            for utilfunc in utilfuncs:
              weave_container utilfunc
          for utilfunc in utilfuncs:
            weave_procdef utilfunc
          weave multiline:
            "proc load* ="
            weave indent:
              for utilfunc in utilfuncs:
                weave_loadstmt utilfunc

      # [Builtin Classes]
      for builtin in api.builtin_classes:
        weave builtin.moduleSym("constr").nim:
          weave_constructor builtin

      for builtin in api.builtin_classes:
        let sym = builtin.name.convert(TypeSym)
        if not getignore(sym).module:
          weave builtin.moduleSym.nim:
            weave margin:
              weave margin:
                if builtin.constants.isSome:
                  "# constant values"
                for constant in builtin.constants.get(@[]):
                  constant.weave(sym)
              weave_subscript builtin
              weave_operators builtin
              weave_methods builtin

      weave "classindex".nim:
        weave margin:
          weave multiline:
            "type"
            for base, sym in inheritanceDB.hierarchical:
              if sym in [TypeSym.Object, TypeSym.RefCounted]: continue
              # if classDB[sym].json.is_refcounted:
              #   &"  {sym}* = ref object of {base}"
              # else:
              &"  {classDB[sym].json.name}* = ptr object of {classDB[base].json.name}"
          weave multiline:
            for base, sym in inheritanceDB.hierarchical:
              let name = classDB[sym].json.name
              &"template EngineClass*(_: typedesc[{name}]): typedesc = {name}"
          weave multiline:
            "type GodotThread* = Thread"

    # layout "classes".nim:
    let classes = layout "classes".dir:
      weave textfile "README.md":
        weave margin:
          "# gdext/classes"
          "This directory will contain automatically generated files that define individual class API."
          "Newly created/modified files in this directory are cleared each time `nimble generate` is run."
          "Manual editing of this directory is therefore not recommended."

      for base, sym in inheritanceDB.hierarchical:
        let class = classDB[sym]
        weave ($sym.convert(ModuleSym)).nim
            .disableUnusedImport
            .import(corona_classes):
          weave margin:
            if sym != TypeSym.Object:
              let mdlbase = base.convert(ModuleSym)
              &"import {mdlbase}; export {mdlbase}"
            weave margin:
              for entry in class.json.methods.get(@[]):
                weave entry.convert(sym)
            weave_properties class
            weave_vmap(class)
            weave_signals(class)

    layout gen:
      let trueClasses = classes.subitems.values.toSeq.filterIt(it of NimSource.NimSource).mapIt(NimSource it)
      "classes".nim
        .disableUnusedImport
        .import(trueClasses)

proc run*(api: JsonAPI; config: BuildConfig) =

  for class in api.classes:
    registerDB class.convert

  let project = project(config, api)

  # echo:
  #   weave Prefix(prefix: "Dump: "):
  #     dumptree project
  generate project
