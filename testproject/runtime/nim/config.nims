import gdext/buildconf

--path: "src"
--path: "../../../src"

let setting = BuildSettings(
  name: "RuntimeTest",
  genEditorHelp: off,
  updateMethod: disable,
)

configure(setting)