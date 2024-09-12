import std/[sets]

import gdext/dirty/gdextensioninterface
import gdext/utils/staticevents
import gdext/core/builtinindex
import gdext/core/commandindex
import gdext/core/extracommands
import gdext/core/typeshift
import gdextgen/utilityfuncs
import gdext/core/userclass/contracts
import gdext/surface/userclass
import gdext/gdextensionmain
import gdext/buildconf


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

template GDExtension_EntryPoint*: untyped =
  proc load_builtinclassConstructor {.expandEvent: staticevents.init_engine.on_load_builtinclassConstructor.}
  proc load_builtinclassOperator {.expandEvent: staticevents.init_engine.on_load_builtinclassOperator.}
  proc load_builtinclassMethod {.expandEvent: staticevents.init_engine.on_load_builtinclassMethod.}
  proc exec_initialize_core {.expandEvent: initialize_core.}
  proc exec_initialize_servers {.expandEvent: initialize_servers.}
  proc exec_initialize_scene {.expandEvent: initialize_scene.}
  proc exec_initialize_editor {.expandEvent: initialize_editor.}
  proc exec_eliminate_core {.expandEvent: eliminate_core.}
  proc exec_eliminate_servers {.expandEvent: eliminate_servers.}
  proc exec_eliminate_scene {.expandEvent: eliminate_scene.}
  proc exec_eliminate_editor {.expandEvent: eliminate_editor.}

  {.emit: "N_LIB_EXPORT N_CDECL(void, NimMain)(void);".}
  proc initialize(userdata: pointer; p_level: InitializationLevel) {.gdcall.} =
    case p_level
    # almost all uses is to register user-defined classes
    of Initialization_Core:
      exec_initialize_core()
    of Initialization_Servers:
      exec_initialize_servers()
    of Initialization_Scene:
      initializeExtensionMain()
      exec_initialize_scene()
    of Initialization_Editor:
      exec_initialize_editor()
      const loadedClasses = contracts.invoked.len
      gLoaded = loadedClasses
      {.emit: "NimMain();".}

  proc deinitialize(userdata: pointer; p_level: InitializationLevel) {.gdcall.} =
    case p_level
    # almost all uses is to register user-defined classes
    of Initialization_Core:
      exec_eliminate_core()
    of Initialization_Servers:
      exec_eliminate_servers()
    of Initialization_Scene:
      exec_eliminate_scene()
      eliminateExtensionMain()
    of Initialization_Editor:
      exec_eliminate_editor()
      userclass.unregisterAll()

  proc entryPoint*(p_get_proc_address: InterfaceGetProcAddress; p_library: ClassLibraryPtr; r_initialization: ptr Initialization): Bool {.gdcall, exportc: Extension.entrySymbol, dynlib.} = once:
    try:
      commandindex.init(
        p_getProcAddress,
        p_library)

      r_initialization.initialize = initialize
      r_initialization.deinitialize = deinitialize
      r_initialization.minimum_initialization_level = Initialization_Scene

      commandindex.load() # call `getProcAddr` for each interface methods
      builtinindex.load() # load builtin-classes constructor/destructor for ORC hooks
      extracommands.load() # load other usual functions to define core library
      typeshift.load()
      utilityfuncs.load()

      load_builtinclassConstructor()
      load_builtinclassOperator()
      load_builtinclassMethod()

      return true

    except:
      return false

when isMainModule:
  import gdextgen/classindex
  GDExtension_EntryPoint