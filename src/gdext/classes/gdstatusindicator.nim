{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

proc setTooltip*(self: StatusIndicator; tooltip: String): void =
  expandMethodBind(className StatusIndicator, "set_tooltip", 83702148)
  methodbind.ptrcall(self, [getPtr tooltip])

proc getTooltip*(self: StatusIndicator): String =
  expandMethodBind(className StatusIndicator, "get_tooltip", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setIcon*(self: StatusIndicator; texture: gdref Texture2D): void =
  expandMethodBind(className StatusIndicator, "set_icon", 4051416890)
  methodbind.ptrcall(self, [getPtr texture])

proc getIcon*(self: StatusIndicator): gdref Texture2D =
  expandMethodBind(className StatusIndicator, "get_icon", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setVisible*(self: StatusIndicator; visible: bool): void =
  expandMethodBind(className StatusIndicator, "set_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr visible])

proc isVisible*(self: StatusIndicator): bool =
  expandMethodBind(className StatusIndicator, "is_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMenu*(self: StatusIndicator; menu: NodePath): void =
  expandMethodBind(className StatusIndicator, "set_menu", 1348162250)
  methodbind.ptrcall(self, [getPtr menu])

proc getMenu*(self: StatusIndicator): NodePath =
  expandMethodBind(className StatusIndicator, "get_menu", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc getRect*(self: StatusIndicator): Rect2 =
  expandMethodBind(className StatusIndicator, "get_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Rect2)

template tooltip*(self: StatusIndicator): untyped = self.getTooltip()
template `tooltip=`*(self: StatusIndicator; value) = self.setTooltip(value)

template icon*(self: StatusIndicator): untyped = self.getIcon()
template `icon=`*(self: StatusIndicator; value) = self.setIcon(value)

template menu*(self: StatusIndicator): untyped = self.getMenu()
template `menu=`*(self: StatusIndicator; value) = self.setMenu(value)

template visible*(self: StatusIndicator): untyped = self.isVisible()
template `visible=`*(self: StatusIndicator; value) = self.setVisible(value)

const StatusIndicator_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[StatusIndicator]): Table[string, string] = StatusIndicator_vmap

proc pressed*(self: StatusIndicator; mouseButton: Variant; mousePosition: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("pressed")
  let args = [mouseButton, mousePosition]
  self.emitSignal(signalname, args)