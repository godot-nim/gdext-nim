{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode; export gdnode

proc queueResourcePreview*(self: EditorResourcePreview; path: String; receiver: Object; receiverFunc: StringName; userdata: Variant): void =
  expandMethodBind(className EditorResourcePreview, "queue_resource_preview", 233177534)
  var `?param` = [getPtr path, getPtr receiver, getPtr receiverFunc, getPtr userdata]
  methodbind.ptrcall(self, addr `?param`[0])

proc queueEditedResourcePreview*(self: EditorResourcePreview; resource: gdref Resource; receiver: Object; receiverFunc: StringName; userdata: Variant): void =
  expandMethodBind(className EditorResourcePreview, "queue_edited_resource_preview", 1608376650)
  var `?param` = [getPtr resource, getPtr receiver, getPtr receiverFunc, getPtr userdata]
  methodbind.ptrcall(self, addr `?param`[0])

proc addPreviewGenerator*(self: EditorResourcePreview; generator: gdref EditorResourcePreviewGenerator): void =
  expandMethodBind(className EditorResourcePreview, "add_preview_generator", 332288124)
  var `?param` = [getPtr generator]
  methodbind.ptrcall(self, addr `?param`[0])

proc removePreviewGenerator*(self: EditorResourcePreview; generator: gdref EditorResourcePreviewGenerator): void =
  expandMethodBind(className EditorResourcePreview, "remove_preview_generator", 332288124)
  var `?param` = [getPtr generator]
  methodbind.ptrcall(self, addr `?param`[0])

proc checkForInvalidation*(self: EditorResourcePreview; path: String): void =
  expandMethodBind(className EditorResourcePreview, "check_for_invalidation", 83702148)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

const EditorResourcePreview_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorResourcePreview]): Table[string, string] = EditorResourcePreview_vmap

proc previewInvalidated*(self: EditorResourcePreview; path: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("preview_invalidated")
  let args = [path]
  self.emitSignal(signalname, args)