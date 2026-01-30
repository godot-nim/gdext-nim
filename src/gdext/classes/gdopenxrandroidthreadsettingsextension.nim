{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrextensionwrapper; export gdopenxrextensionwrapper

expandOnClassImported(OpenXRAndroidThreadSettingsExtension, OpenXRExtensionWrapper)

proc setApplicationThreadType*(self: OpenXRAndroidThreadSettingsExtension; threadType: OpenXRAndroidThreadSettingsExtension_ThreadType; threadId: uint32 = 0'u32): bool =
  expandMethodBind(className OpenXRAndroidThreadSettingsExtension, "set_application_thread_type", 1558751158)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr threadType, getPtr threadId], addr ret)
  (addr ret).decode_result(bool)
