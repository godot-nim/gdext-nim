import gdext/buildconf
import gdext/dirty/gdextensioninterface
import gdext/core/commandindex

type
  ObjectControlFlag* = enum
    OC_godotManaged

  ObjectControl* = object
    owner*: ObjectPtr
    flags*: set[ObjectControlFlag]
    when Dev.debugCallbacks:
      name*: string

proc `=destroy`*(x: ObjectControl) =
  when Dev.debugCallbacks:
    decho SYNC.DESTROY, x.name
  if OC_godotManaged notin x.flags:
    interfaceObjectDestroy(x.owner)