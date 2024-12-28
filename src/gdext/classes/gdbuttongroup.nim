{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getPressedButton*(self: ButtonGroup): BaseButton =
  expandMethodBind(className ButtonGroup, "get_pressed_button", 3886434893)
  var ret: encoded BaseButton
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseButton)

proc getButtons*(self: ButtonGroup): TypedArray[BaseButton] =
  expandMethodBind(className ButtonGroup, "get_buttons", 2915620761)
  var ret: encoded TypedArray[BaseButton]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[BaseButton])

proc setAllowUnpress*(self: ButtonGroup; enabled: bool): void =
  expandMethodBind(className ButtonGroup, "set_allow_unpress", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isAllowUnpress*(self: ButtonGroup): bool =
  expandMethodBind(className ButtonGroup, "is_allow_unpress", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template allowUnpress*(self: ButtonGroup): untyped = self.isAllowUnpress()
template `allowUnpress=`*(self: ButtonGroup; value) = self.setAllowUnpress(value)

const ButtonGroup_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ButtonGroup]): Table[string, string] = ButtonGroup_vmap

proc pressed*(self: ButtonGroup; button: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("pressed")
  let args = [button]
  self.emitSignal(signalname, args)