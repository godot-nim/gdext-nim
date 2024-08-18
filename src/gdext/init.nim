import gdextcore/dirty/gdextensioninterface
import gdextcore/builtinindex
import gdextcore/staticevents
import gdextcore/commandindex
import gdextcore/extracommands
import gdextcore/typeshift
import gdextgen/utilityfuncs
import gdext/classautomate/contracts


const initialize_core* = event("initialize_core")
const initialize_servers* = event("initialize_servers")
const initialize_scene* = event("initialize_scene")
const initialize_editor* = event("initialize_editor")
const eliminate_core* = event("eliminate_core")
const eliminate_servers* = event("eliminate_servers")
const eliminate_scene* = event("eliminate_scene")
const eliminate_editor* = event("eliminate_editor")

var gLoaded: int
proc getLoaded*: int {.inline.} = gLoaded
template loaded*: int = getLoaded()

template GDExtension_EntryPoint*(name): untyped =
  {.emit: "N_LIB_EXPORT N_CDECL(void, NimMain)(void);".}
  proc initialize(userdata: pointer; p_level: InitializationLevel) {.gdcall.} =
    case p_level
    # almost all uses is to register user-defined classes
    of Initialization_Core:
      invoke initialize_core
    of Initialization_Servers:
      invoke initialize_servers
    of Initialization_Scene:
      invoke initialize_before_scene
      invoke initialize_scene
    of Initialization_Editor:
      invoke initialize_editor
    const loadedClasses = contracts.invoked.len
    gLoaded = loadedClasses
      {.emit: "NimMain();".}

  proc deinitialize(userdata: pointer; p_level: InitializationLevel) {.gdcall.} =
    case p_level
    # almost all uses is to register user-defined classes
    of Initialization_Core:
      invoke eliminate_core
    of Initialization_Servers:
      invoke eliminate_servers
    of Initialization_Scene:
      invoke eliminate_scene
    of Initialization_Editor:
      invoke eliminate_editor

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

      return true

    except:
      return false

when isMainModule:
  GDExtension_EntryPoint(init_library)