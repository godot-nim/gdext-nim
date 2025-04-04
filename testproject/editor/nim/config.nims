import gdext/buildconf

--path: "src"
--path: "../../../src"

let setting = BuildSettings(
  name: "EditorTest",
  genEditorHelp: on,
)

configure(setting)