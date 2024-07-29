import gdextcore/dirty/gdextensioninterface
import gdextcore/builtinindex
import gdextcore/events
import gdextcore/staticevents
import gdextcore/commandindex
import gdextcore/extracommands
import gdextcore/typeshift
import gdextgen/utilityfuncs

export events.process

var initialize_core* = events.event("initialize_core")
var initialize_servers* = events.event("initialize_servers")
var initialize_scene* = events.event("initialize_scene")
var initialize_editor* = events.event("initialize_editor")
var eliminate_core* = events.event("eliminate_core")
var eliminate_servers* = events.event("eliminate_servers")
var eliminate_scene* = events.event("eliminate_scene")
var eliminate_editor* = events.event("eliminate_editor")

proc initialize(userdata: pointer; p_level: InitializationLevel) {.gdcall.} =
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

template GDExtension_EntryPoint*(name): untyped =
  {.emit: "N_LIB_EXPORT N_CDECL(void, NimMain)(void);".}
  proc name*(p_get_proc_address: InterfaceGetProcAddress; p_library: ClassLibraryPtr; r_initialization: ptr Initialization): Bool {.gdcall, exportc, dynlib.} = once:
    try:
      commandindex.init(
        p_getProcAddress,
        p_library)

      r_initialization.initialize = initialize
      r_initialization.deinitialize = deinitialize

      commandindex.load() # call `getProcAddr` for each interface methods
      builtinindex.load() # load builtin-classes constructor/destructor for ORC hooks
      extracommands.load() # load other usual functions to define core library
      typeshift.load()
      utilityfuncs.load()

      invoke staticevents.init_engine.on_load_builtinclassConstructor # expects to register by generateds.
      invoke staticevents.init_engine.on_load_builtinclassOperator
      invoke staticevents.init_engine.on_load_builtinclassMethod
      {.emit: "NimMain();".}

      return true

    except:
      return false

when isMainModule:
  GDExtension_EntryPoint(init_library)