{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(EditorResourcePreview, Node)

proc queueResourcePreview*(self: EditorResourcePreview; path: String; receiver: Object; receiverFunc: StringName; userdata: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorResourcePreview, "queue_resource_preview", 233177534)
  methodbind.ptrcall(self, [getPtr path, getPtr receiver, getPtr receiverFunc, getPtr userdata], void)

proc queueEditedResourcePreview*(self: EditorResourcePreview; resource: gdref Resource; receiver: Object; receiverFunc: StringName; userdata: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorResourcePreview, "queue_edited_resource_preview", 1608376650)
  methodbind.ptrcall(self, [getPtr resource, getPtr receiver, getPtr receiverFunc, getPtr userdata], void)

proc addPreviewGenerator*(self: EditorResourcePreview; generator: gdref EditorResourcePreviewGenerator): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorResourcePreview, "add_preview_generator", 332288124)
  methodbind.ptrcall(self, [getPtr generator], void)

proc removePreviewGenerator*(self: EditorResourcePreview; generator: gdref EditorResourcePreviewGenerator): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorResourcePreview, "remove_preview_generator", 332288124)
  methodbind.ptrcall(self, [getPtr generator], void)

proc checkForInvalidation*(self: EditorResourcePreview; path: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorResourcePreview, "check_for_invalidation", 83702148)
  methodbind.ptrcall(self, [getPtr path], void)
