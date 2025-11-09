{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFAnimation, Resource)

proc getOriginalName*(self: GLTFAnimation): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFAnimation, "get_original_name", 2841200299)
  methodbind.ptrcall(self, [], String)

proc setOriginalName*(self: GLTFAnimation; originalName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFAnimation, "set_original_name", 83702148)
  methodbind.ptrcall(self, [getPtr originalName], void)

proc getLoop*(self: GLTFAnimation): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFAnimation, "get_loop", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLoop*(self: GLTFAnimation; loop: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFAnimation, "set_loop", 2586408642)
  methodbind.ptrcall(self, [getPtr loop], void)

proc getAdditionalData*(self: GLTFAnimation; extensionName: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFAnimation, "get_additional_data", 2138907829)
  methodbind.ptrcall(self, [getPtr extensionName], Variant)

proc setAdditionalData*(self: GLTFAnimation; extensionName: StringName; additionalData: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFAnimation, "set_additional_data", 3776071444)
  methodbind.ptrcall(self, [getPtr extensionName, getPtr additionalData], void)

template originalName*(self: GLTFAnimation): untyped = self.getOriginalName()
template `originalName=`*(self: GLTFAnimation; value) = self.setOriginalName(value)

template loop*(self: GLTFAnimation): untyped = self.getLoop()
template `loop=`*(self: GLTFAnimation; value) = self.setLoop(value)
