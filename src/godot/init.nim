import godotcore/dirty/gdextension_interface
import godotcore/builtinindex
import godotcore/events
import godotcore/eventindex
import godotcore/commandindex
import godotcore/extracommands

export events.process
var initialize_module = event("initialize_module")

var initialize_core* = event("initialize_core")
var initialize_servers* = event("initialize_servers")
var initialize_scene* = event("initialize_scene")
var initialize_editor* = event("initialize_editor")
var eliminate_core* = event("eliminate_core")
var eliminate_servers* = event("eliminate_servers")
var eliminate_scene* = event("eliminate_scene")
var eliminate_editor* = event("eliminate_editor")

process initialize_module:
  commandindex.load() # call `getProcAddr` for each interface methods
  builtinindex.load() # load builtin-classes constructor/destructor for ORC hooks
  extracommands.load() # load other usual functions to define core library

  invoke eventindex.init_engine.on_load_builtinclassConstructor # expects to register by generateds.
  invoke eventindex.init_engine.on_load_builtinclassOperator
  invoke eventindex.init_engine.on_load_builtinclassMethod
  invoke eventindex.init_engine.on_load_metadata

proc initialize(userdata: pointer; p_level: InitializationLevel) {.gdcall.} =
  invoke initialize_module

  case p_level
  # almost all uses is to register user-defined classes
  of Initialization_Core:    invoke initialize_core
  of Initialization_Servers: invoke initialize_servers
  of Initialization_Scene:   invoke initialize_scene
  of Initialization_Editor:  invoke initialize_editor

proc deinitialize(userdata: pointer; p_level: InitializationLevel) {.gdcall.} =
  case p_level
  # almost all uses is to register user-defined classes
  of Initialization_Core:    invoke eliminate_core
  of Initialization_Servers: invoke eliminate_servers
  of Initialization_Scene:   invoke eliminate_scene
  of Initialization_Editor:  invoke eliminate_editor

proc init*(p_get_proc_address: InterfaceGetProcAddress; p_library: ClassLibraryPtr; r_initialization: ptr Initialization): Bool {.gdcall.} =
  try:
    commandindex.init(
      p_getProcAddress,
      p_library)

    r_initialization.initialize = initialize
    r_initialization.deinitialize = deinitialize

    return true

  except:
    return false


template GDExtension_EntryPoint*(name): untyped =
  bind init
  bind gdcall
  proc name*(p_get_proc_address: InterfaceGetProcAddress; p_library: ClassLibraryPtr; r_initialization: ptr Initialization): Bool {.gdcall, exportc, dynlib.} =
    init(p_getProcAddress, p_library, r_initialization)

when isMainModule:
  GDExtension_EntryPoint(init_library)