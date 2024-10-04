{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvboxcontainer; export gdvboxcontainer

proc getBaseEditor*(self: ScriptEditorBase): Control =
  expandMethodBind(className ScriptEditorBase, "get_base_editor", 2783021301)
  var ret: encoded Control
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control)

proc addSyntaxHighlighter*(self: ScriptEditorBase; highlighter: gdref EditorSyntaxHighlighter): void =
  expandMethodBind(className ScriptEditorBase, "add_syntax_highlighter", 1092774468)
  var `?param` = [getPtr highlighter]
  methodbind.ptrcall(self, addr `?param`[0])

const ScriptEditorBase_vmap =
  VBoxContainer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ScriptEditorBase]): Table[string, string] = ScriptEditorBase_vmap

proc nameChanged*(self: ScriptEditorBase): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("name_changed")
  self.emitSignal(signalname)

proc editedScriptChanged*(self: ScriptEditorBase): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("edited_script_changed")
  self.emitSignal(signalname)

proc requestHelp*(self: ScriptEditorBase; topic: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("request_help")
  let args = [topic]
  self.emitSignal(signalname, args)

proc requestOpenScriptAtLine*(self: ScriptEditorBase; script: Variant; line: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("request_open_script_at_line")
  let args = [script, line]
  self.emitSignal(signalname, args)

proc requestSaveHistory*(self: ScriptEditorBase): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("request_save_history")
  self.emitSignal(signalname)

proc requestSavePreviousState*(self: ScriptEditorBase; state: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("request_save_previous_state")
  let args = [state]
  self.emitSignal(signalname, args)

proc goToHelp*(self: ScriptEditorBase; what: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("go_to_help")
  let args = [what]
  self.emitSignal(signalname, args)

proc searchInFilesRequested*(self: ScriptEditorBase; text: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("search_in_files_requested")
  let args = [text]
  self.emitSignal(signalname, args)

proc replaceInFilesRequested*(self: ScriptEditorBase; text: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("replace_in_files_requested")
  let args = [text]
  self.emitSignal(signalname, args)

proc goToMethod*(self: ScriptEditorBase; script: Variant; `method`: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("go_to_method")
  let args = [script, `method`]
  self.emitSignal(signalname, args)