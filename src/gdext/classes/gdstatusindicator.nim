{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(StatusIndicator, Node)

proc setTooltip*(self: StatusIndicator; tooltip: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StatusIndicator, "set_tooltip", 83702148)
  methodbind.ptrcall(self, [getPtr tooltip], void)

proc getTooltip*(self: StatusIndicator): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StatusIndicator, "get_tooltip", 201670096)
  methodbind.ptrcall(self, [], String)

proc setIcon*(self: StatusIndicator; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StatusIndicator, "set_icon", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getIcon*(self: StatusIndicator): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StatusIndicator, "get_icon", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setVisible*(self: StatusIndicator; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StatusIndicator, "set_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr visible], void)

proc isVisible*(self: StatusIndicator): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StatusIndicator, "is_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMenu*(self: StatusIndicator; menu: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StatusIndicator, "set_menu", 1348162250)
  methodbind.ptrcall(self, [getPtr menu], void)

proc getMenu*(self: StatusIndicator): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StatusIndicator, "get_menu", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc getRect*(self: StatusIndicator): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StatusIndicator, "get_rect", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

template tooltip*(self: StatusIndicator): untyped = self.getTooltip()
template `tooltip=`*(self: StatusIndicator; value) = self.setTooltip(value)

template icon*(self: StatusIndicator): untyped = self.getIcon()
template `icon=`*(self: StatusIndicator; value) = self.setIcon(value)

template menu*(self: StatusIndicator): untyped = self.getMenu()
template `menu=`*(self: StatusIndicator; value) = self.setMenu(value)

template visible*(self: StatusIndicator): untyped = self.isVisible()
template `visible=`*(self: StatusIndicator; value) = self.setVisible(value)
